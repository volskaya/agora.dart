package dev.volskaya.agora

import io.agora.rtc.Constants
import io.agora.rtc.IRtcEngineEventHandler

data class Participant (
        val uid: Int,
        val audioState: Int = Constants.REMOTE_AUDIO_STATE_STOPPED,
        val videoState: Int = Constants.REMOTE_VIDEO_STATE_STOPPED,
        val audioStats: IRtcEngineEventHandler.RemoteAudioStats? = null,
        val videoStats: IRtcEngineEventHandler.RemoteVideoStats? = null,
        val volumeInfo: IRtcEngineEventHandler.AudioVolumeInfo? = null,
        val hasFrames: Boolean = false
) {
    fun toFlutterMap(): Map<*, *> {
        return hashMapOf(
                "uid" to uid,
                "audioState" to audioState,
                "videoState" to videoState,
                "audioStats" to audioStats?.toFlutterMap(),
                "videoStats" to videoStats?.toFlutterMap(),
                "volumeInfo" to volumeInfo?.toFlutterMap(),
                "hasFrames" to hasFrames
        )
    }
}

data class LocalParticipant (
        val uid: Int? = null,
        val audioState: Int = Constants.LOCAL_AUDIO_STREAM_STATE_STOPPED,
        val videoState: Int = Constants.LOCAL_VIDEO_STREAM_STATE_STOPPED,
        val audioStats: IRtcEngineEventHandler.LocalAudioStats? = null,
        val videoStats: IRtcEngineEventHandler.LocalVideoStats? = null,
        val volumeInfo: IRtcEngineEventHandler.AudioVolumeInfo? = null,
        val hasFrames: Boolean = false
) {
    fun toFlutterMap(): Map<*, *> {
        return hashMapOf(
                "uid" to uid,
                "audioState" to audioState,
                "videoState" to videoState,
                "audioStats" to audioStats?.toFlutterMap(),
                "videoStats" to videoStats?.toFlutterMap(),
                "volumeInfo" to volumeInfo?.toFlutterMap(),
                "hasFrames" to hasFrames
        )
    }
}