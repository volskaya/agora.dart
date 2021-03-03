package dev.volskaya.agora

import android.content.Context
import android.media.session.MediaSession
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import io.agora.rtc.Constants
import io.agora.rtc.IRtcEngineEventHandler
import io.agora.rtc.RtcEngine
import io.agora.rtc.RtcEngineConfig
import io.agora.rtc.video.VideoEncoderConfiguration
import java.lang.ref.WeakReference
import java.util.*

class AgoraCoordinator(context: Context, appId: String, areaCode: Int) : IRtcEngineEventHandler() {
    private val looper: Looper = Looper.getMainLooper()

    var service: WeakReference<ChannelService>? = null // Unreferenced when the [ChannelService] is destroyed.
    var contextRef: WeakReference<Context> = WeakReference(context)
    var mediaSession: MediaSession? = null
    val engine: RtcEngine = RtcEngineConfig().let {
        it.mContext = context
        it.mAppId = appId
        it.mAreaCode = areaCode
        it.mEventHandler = this

        RtcEngine.create(it).also { engine ->
            val videoEncoderConfiguration = VideoEncoderConfiguration(
                    VideoEncoderConfiguration.VD_640x480,
                    VideoEncoderConfiguration.FRAME_RATE.FRAME_RATE_FPS_30,
                    VideoEncoderConfiguration.STANDARD_BITRATE,
                    VideoEncoderConfiguration.ORIENTATION_MODE.ORIENTATION_MODE_FIXED_PORTRAIT
            )

            engine.setVideoEncoderConfiguration(videoEncoderConfiguration)
            engine.setAudioProfile(Constants.AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO, Constants.AUDIO_SCENARIO_GAME_STREAMING)
            engine.enableAudio()
            engine.enableLocalAudio(false)
            engine.enableLocalVideo(false)
            engine.setDefaultMuteAllRemoteAudioStreams(true)
            engine.setDefaultMuteAllRemoteVideoStreams(true)
        }
    }

    private var stats: RtcStats? = null
    private var channel: String? = null
    private var activeSpeaker: Int? = null
    private var participant: LocalParticipant = LocalParticipant()
    private var participants: MutableMap<Int, Participant> = mutableMapOf()
    private var onlineParticipants: MutableSet<Int> = mutableSetOf()

    init {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            mediaSession = MediaSession(context, "agora_media_session")
        }
    }

    private fun post(callback: () -> Unit) { Handler(looper).post(callback) }

    private fun invokeMethod(method: String, data: Any?) {
        post { AgoraPlugin.channel?.invokeMethod(method, data) }
    }

    private fun getStateMap(): Map<*, *> {
        return hashMapOf(
                "connectionState" to engine.connectionState,
                "channel" to channel,
                "participant" to participant.toFlutterMap(),
                "onlineParticipants" to onlineParticipants.toList()
        )
    }

    // Hydrates the method channel with the latest connection state.
    //
    // This is meant to update the app, when it was killed, but the foreground
    // service remained running.
    private fun hydrateState() { invokeMethod("hydrateState", getStateMap()) }

    private fun hydrateStats() {
        stats?.let { invokeMethod("hydrateStats", it.toFlutterMap()) }
    }

    private fun hydrateParticipant(uid: Int) {
        post {
            participants[uid]?.let { AgoraPlugin.getParticipantStream(uid)?.invokeMethod("hydrate", it.toFlutterMap()) }
        }
    }

    // Does a full hydrate of state, stats and participants.
    fun hydrate() {
        hydrateState()
        hydrateStats()
        onlineParticipants.forEach { hydrateParticipant(it) }
    }

    // / Resets the state variables to their default values, for example after leaving a channel.
    private fun cleanState() {
        channel = null
        activeSpeaker = null
        participant = LocalParticipant()
        participants = mutableMapOf()
    }

    fun joinChannel(
            token: String,
            channelName: String,
            uid: Int,
            profile: Int?,
            role: Int?,
            deadline: Long?
    ) {
        if (this.channel == channelName) return // Redundant join operation.

        profile?.let { engine.setChannelProfile(profile) }
        role?.let { engine.setClientRole(role) }

        engine.joinChannel(token, channelName, null, uid)

        deadline?.let {
            Timer().schedule(object : TimerTask() {
                override fun run() { if (channel == channelName) engine.leaveChannel() }
            }, deadline)
        }
    }

    override fun onError(err: Int) {
        super.onError(err)
        invokeMethod("onError", err)
    }

    override fun onRtcStats(stats: RtcStats?) {
        super.onRtcStats(stats)
        this.stats = stats
        hydrateStats()
    }

    override fun onConnectionStateChanged(state: Int, reason: Int) {
        super.onConnectionStateChanged(state, reason)
        invokeMethod("onConnectionStateChanged", hashMapOf("state" to state, "reason" to reason))
        hydrateState()

        when (state) {
            Constants.CONNECTION_STATE_CONNECTED,
            Constants.CONNECTION_STATE_CONNECTING,
            Constants.CONNECTION_STATE_RECONNECTING -> { }
            Constants.CONNECTION_STATE_FAILED -> engine.leaveChannel()
            Constants.CONNECTION_STATE_DISCONNECTED -> { }
        }
    }

    override fun onJoinChannelSuccess(channel: String?, uid: Int, elapsed: Int) {
        super.onJoinChannelSuccess(channel, uid, elapsed)
        this.channel = channel
        participant = LocalParticipant(uid)
        hydrateState()
        invokeMethod("onJoinChannelSuccess", hashMapOf("channel" to channel, "uid" to uid, "elapsed" to elapsed))

        // Launches a foreground service.
        contextRef.get()?.let { AgoraPlugin.executeActionIntent(it, "start") }
    }

    override fun onLeaveChannel(stats: RtcStats?) {
        super.onLeaveChannel(stats)
        cleanState()
        hydrateState()
        invokeMethod("onLeaveChannel", stats?.toFlutterMap())

        service?.get()?.stop()
    }

    override fun onUserJoined(uid: Int, elapsed: Int) {
        super.onUserJoined(uid, elapsed)

        onlineParticipants.add(uid)
        participants[uid] = Participant(uid)
        hydrateState()
        invokeMethod("onUserJoined", hashMapOf("uid" to uid, "elapsed" to elapsed))
    }

    override fun onUserOffline(uid: Int, reason: Int) {
        super.onUserOffline(uid, reason)

        onlineParticipants.remove(uid)
        participants.remove(uid)
        hydrateState()
        invokeMethod("onUserOffline", hashMapOf("uid" to uid, "reason" to reason))
    }

    override fun onActiveSpeaker(uid: Int) {
        super.onActiveSpeaker(uid)
        activeSpeaker = uid
        hydrateState()
        invokeMethod("onActiveSpeaker", hashMapOf("uid" to uid))
    }

    override fun onLocalVideoStateChanged(localVideoState: Int, error: Int) {
        super.onLocalVideoStateChanged(localVideoState, error)

        participant = participant.copy(videoState = localVideoState)
        hydrateState()
        invokeMethod("onLocalVideoStateChanged", hashMapOf("localVideoState" to localVideoState, "error" to error))
    }

    override fun onLocalAudioStateChanged(state: Int, error: Int) {
        super.onLocalAudioStateChanged(state, error)

        participant = participant.copy(audioState = state)
        hydrateState()
        invokeMethod("onLocalAudioStateChanged", hashMapOf("state" to state, "error" to error))
    }

    override fun onLocalAudioStats(stats: LocalAudioStats?) {
        super.onLocalAudioStats(stats)

        stats?.let {
            participant = participant.copy(audioStats = stats)
            hydrateState()
            invokeMethod("onLocalAudioStats", stats.toFlutterMap())
        }
    }

    override fun onLocalVideoStats(stats: LocalVideoStats?) {
        super.onLocalVideoStats(stats)

        stats?.let {
            participant = participant.copy(videoStats = stats)
            hydrateState()
            invokeMethod("onLocalVideoStats", stats.toFlutterMap())
        }
    }


    var lastRemoteVideoStateChange: Int = -1
    var lastRemoteAudioStateChange: Int = -1


    override fun onRemoteVideoStateChanged(uid: Int, state: Int, reason: Int, elapsed: Int) {
        super.onRemoteVideoStateChanged(uid, state, reason, elapsed)

        if (elapsed > lastRemoteVideoStateChange) {
            lastRemoteVideoStateChange = elapsed
            participants[uid] = participants[uid]?.copy(videoState = state) ?: Participant(uid, videoState = state)
            hydrateParticipant(uid)
            invokeMethod("onRemoteVideoStateChanged", hashMapOf("uid" to uid, "state" to state, "reason" to reason, "elapsed" to elapsed))
        }
    }

    override fun onRemoteAudioStateChanged(uid: Int, state: Int, reason: Int, elapsed: Int) {
        super.onRemoteAudioStateChanged(uid, state, reason, elapsed)

        if (elapsed > lastRemoteAudioStateChange) {
            lastRemoteAudioStateChange = elapsed
            participants[uid] = participants[uid]?.copy(audioState = state) ?: Participant(uid, audioState = state)
            hydrateParticipant(uid)
            invokeMethod("onRemoteAudioStateChanged", hashMapOf("uid" to uid, "state" to state, "reason" to reason, "elapsed" to elapsed))
        }
    }

    override fun onRemoteAudioStats(stats: RemoteAudioStats?) {
        super.onRemoteAudioStats(stats)

        stats?.let {
            participants[stats.uid] = participants[stats.uid]?.copy(audioStats = stats) ?: Participant(stats.uid, audioStats = stats)
            hydrateParticipant(stats.uid)
            invokeMethod("onRemoteAudioStats", stats.toFlutterMap())
        }
    }

    override fun onRemoteVideoStats(stats: RemoteVideoStats?) {
        super.onRemoteVideoStats(stats)

        stats?.let {
            participants[stats.uid] = participants[stats.uid]?.copy(videoStats = stats) ?: Participant(stats.uid, videoStats = stats)
            hydrateParticipant(stats.uid)
            invokeMethod("onRemoteVideoStats", stats.toFlutterMap())
        }
    }
}
