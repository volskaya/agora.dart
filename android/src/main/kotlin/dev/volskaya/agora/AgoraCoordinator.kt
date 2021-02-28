package dev.volskaya.agora

import android.content.Context
import io.agora.rtc.IRtcEngineEventHandler
import io.agora.rtc.RtcEngine
import io.agora.rtc.Constants
import io.agora.rtc.RtcEngineConfig
import io.agora.rtc.video.VideoEncoderConfiguration

class AgoraCoordinator(context: Context, appId: String, areaCode: Int) : IRtcEngineEventHandler() {
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

    private var channel: String? = null
    private var activeSpeaker: Int? = null
    private var participant: LocalParticipant? = null
    private var participants: MutableMap<Int, Participant> = mutableMapOf()

    init {
        hydrateMethodChannel()
    }

    private fun getStateMap(): Map<*, *> {
        return hashMapOf(
                "connectionState" to engine.connectionState,
                "channel" to channel,
                "participant" to participant?.toFlutterMap(),
                "participants" to participants.mapValues { it.value.toFlutterMap() }
        )
    }

    // Hydrates the method channel with the latest connection state.
    //
    // This is meant to update the app, when it was killed, but the foreground
    // service remained running.
    private fun hydrateMethodChannel() {
        AgoraPlugin.sink?.success(getStateMap())
    }

    /// Resets the state variables to their default values, for example after leaving a channel.
    private fun cleanState() {
        channel = null
        activeSpeaker = null
        participant = null
        participants = mutableMapOf()
    }

    fun joinChannel(token: String, channelName: String, uid: Int, profile: Int?, role: Int?) {
        profile?.let { engine.setChannelProfile(profile) }
        role?.let { engine.setClientRole(role) }
        engine.joinChannel(token, channelName, null, uid)
    }

    override fun onError(err: Int) {
        super.onError(err)
        AgoraPlugin.channel?.invokeMethod("onError", err)
    }

    override fun onRtcStats(stats: RtcStats?) {
        super.onRtcStats(stats)
    }

    override fun onConnectionStateChanged(state: Int, reason: Int) {
        super.onConnectionStateChanged(state, reason)
        AgoraPlugin.channel?.invokeMethod("onConnectionStateChanged", hashMapOf("state" to state, "reason" to reason))
    }

    override fun onJoinChannelSuccess(channel: String?, uid: Int, elapsed: Int) {
        super.onJoinChannelSuccess(channel, uid, elapsed)
        AgoraPlugin.channel?.invokeMethod(
                "onError",
                hashMapOf("channel" to channel, "uid" to uid, "elapsed" to elapsed)
        )
    }

    override fun onLeaveChannel(stats: RtcStats?) {
        super.onLeaveChannel(stats)
        AgoraPlugin.channel?.invokeMethod("onLeaveChannel", stats?.toFlutterMap())
    }

    override fun onUserJoined(uid: Int, elapsed: Int) {
        super.onUserJoined(uid, elapsed)

        participants[uid] = Participant(uid)
        AgoraPlugin.channel?.invokeMethod(
                "onUserJoined",
                hashMapOf("uid" to uid, "elapsed" to elapsed)
        )
    }

    override fun onUserOffline(uid: Int, reason: Int) {
        super.onUserOffline(uid, reason)

        participants.remove(uid)
        AgoraPlugin.channel?.invokeMethod(
                "onUserOffline",
                hashMapOf("uid" to uid, "reason" to reason)
        )
    }

    override fun onActiveSpeaker(uid: Int) {
        super.onActiveSpeaker(uid)
        activeSpeaker = uid
        AgoraPlugin.channel?.invokeMethod("onActiveSpeaker", hashMapOf("uid" to uid))
    }

    override fun onLocalVideoStateChanged(localVideoState: Int, error: Int) {
        super.onLocalVideoStateChanged(localVideoState, error)

        participant = participant?.copy(videoState = localVideoState)
        AgoraPlugin.channel?.invokeMethod(
                "onLocalVideoStateChanged",
                hashMapOf("localVideoState" to localVideoState, "error" to error)
        )
    }

    override fun onLocalAudioStateChanged(state: Int, error: Int) {
        super.onLocalAudioStateChanged(state, error)

        participant = participant?.copy(audioState = state)
        AgoraPlugin.channel?.invokeMethod(
                "onLocalAudioStateChanged",
                hashMapOf("state" to state, "error" to error)
        )
    }

    override fun onRemoteVideoStateChanged(uid: Int, state: Int, reason: Int, elapsed: Int) {
        super.onRemoteVideoStateChanged(uid, state, reason, elapsed)

        participants[uid] = participants[uid]?.copy(videoState = state) ?: Participant(uid, videoState = state)
        AgoraPlugin.channel?.invokeMethod(
                "onRemoteVideoStateChanged",
                hashMapOf("uid" to uid, "state" to state, "reason" to reason, "elapsed" to elapsed)
        )
    }

    override fun onRemoteAudioStateChanged(uid: Int, state: Int, reason: Int, elapsed: Int) {
        super.onRemoteAudioStateChanged(uid, state, reason, elapsed)

        participants[uid] = participants[uid]?.copy(audioState = state) ?: Participant(uid, audioState = state)

        AgoraPlugin.channel?.invokeMethod(
                "onRemoteAudioStateChanged",
                hashMapOf("uid" to uid, "state" to state, "reason" to reason, "elapsed" to elapsed)
        )
    }

    override fun onRemoteAudioStats(stats: RemoteAudioStats?) {
        super.onRemoteAudioStats(stats)

        stats?.let {
            participants[stats.uid] = participants[stats.uid]?.copy(audioStats = stats) ?: Participant(stats.uid, audioStats = stats)
            AgoraPlugin.channel?.invokeMethod("onRemoteAudioStats", stats.toFlutterMap())
        }
    }

    override fun onRemoteVideoStats(stats: RemoteVideoStats?) {
        super.onRemoteVideoStats(stats)

        stats?.let {
            participants[stats.uid] = participants[stats.uid]?.copy(videoStats = stats) ?: Participant(stats.uid, videoStats = stats)
            AgoraPlugin.channel?.invokeMethod("onRemoteVideoStats", stats.toFlutterMap())
        }
    }

    override fun onLocalAudioStats(stats: LocalAudioStats?) {
        super.onLocalAudioStats(stats)

        stats?.let {
            participant = participant?.copy(audioStats = stats) ?: LocalParticipant(audioStats = stats)
            AgoraPlugin.channel?.invokeMethod("onLocalAudioStats", stats.toFlutterMap())
        }
    }

    override fun onLocalVideoStats(stats: LocalVideoStats?) {
        super.onLocalVideoStats(stats)

        stats?.let {
            participant = participant?.copy(videoStats = stats) ?: LocalParticipant(videoStats = stats)
            AgoraPlugin.channel?.invokeMethod("onLocalVideoStats", stats.toFlutterMap())
        }
    }
}
