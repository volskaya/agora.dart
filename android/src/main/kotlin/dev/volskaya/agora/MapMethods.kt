package dev.volskaya.agora

import io.agora.rtc.IRtcEngineEventHandler

fun IRtcEngineEventHandler.RtcStats.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "totalDuration" to totalDuration, // int
            "txBytes" to txBytes, // int
            "rxBytes" to rxBytes, // int
            "txAudioBytes" to txAudioBytes, // int
            "txVideoBytes" to txVideoBytes, // int
            "rxAudioBytes" to rxAudioBytes, // int
            "rxVideoBytes" to rxVideoBytes, // int
            "txKBitRate" to txKBitRate, // int
            "rxKBitRate" to rxKBitRate, // int
            "txAudioKBitRate" to txAudioKBitRate, // int
            "rxAudioKBitRate" to rxAudioKBitRate, // int
            "txVideoKBitRate" to txVideoKBitRate, // int
            "rxVideoKBitRate" to rxVideoKBitRate, // int
            "users" to users, // int
            "lastmileDelay" to lastmileDelay, // int
            "txPacketLossRate" to txPacketLossRate, // int
            "rxPacketLossRate" to rxPacketLossRate, // int
            "cpuTotalUsage" to cpuTotalUsage, // double
            "cpuAppUsage" to cpuAppUsage, // double
            "gatewayRtt" to gatewayRtt, // int
            "memoryAppUsageRatio" to memoryAppUsageRatio, // double
            "memoryTotalUsageRatio" to memoryTotalUsageRatio, // double
            "memoryAppUsageInKbytes" to memoryAppUsageInKbytes // int
    )
}

fun IRtcEngineEventHandler.RemoteAudioStats.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "uid" to uid, // int
            "quality" to quality, // int
            "networkTransportDelay" to networkTransportDelay, // int
            "jitterBufferDelay" to jitterBufferDelay, // int
            "audioLossRate" to audioLossRate, // int
            "numChannels" to numChannels, // int
            "receivedSampleRate" to receivedSampleRate, // int
            "receivedBitrate" to receivedBitrate, // int
            "totalFrozenTime" to totalFrozenTime, // int
            "frozenRate" to frozenRate, // int
            "totalActiveTime" to totalActiveTime, // int
            "publishDuration" to publishDuration, // int
            "qoeQuality" to qoeQuality, // int
            "qualityChangedReason" to qualityChangedReason // int
    )
}

fun IRtcEngineEventHandler.RemoteVideoStats.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "uid" to uid, // int
            "width" to width, // int
            "height" to height, // int
            "receivedBitrate" to receivedBitrate, // int
            "decoderOutputFrameRate" to decoderOutputFrameRate, // int
            "rendererOutputFrameRate" to rendererOutputFrameRate, // int
            "packetLossRate" to packetLossRate, // int
            "rxStreamType" to rxStreamType, // int
            "totalFrozenTime" to totalFrozenTime, // int
            "frozenRate" to frozenRate, // int
            "totalActiveTime" to totalActiveTime, // int
            "publishDuration" to publishDuration // int
    )
}

fun IRtcEngineEventHandler.LocalAudioStats.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "numChannels" to numChannels, // int
            "sentSampleRate" to sentSampleRate, // int
            "sentBitrate" to sentBitrate, // int
            "txPacketLossRate" to txPacketLossRate // int
    )
}

fun IRtcEngineEventHandler.LocalVideoStats.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "sentBitrate" to sentBitrate, // int
            "sentFrameRate" to sentFrameRate, // int
            "encoderOutputFrameRate" to encoderOutputFrameRate, // int
            "rendererOutputFrameRate" to rendererOutputFrameRate, // int
            "targetBitrate" to targetBitrate, // int
            "targetFrameRate" to targetFrameRate, // int
            "qualityAdaptIndication" to qualityAdaptIndication, // int
            "encodedBitrate" to encodedBitrate, // int
            "encodedFrameWidth" to encodedFrameWidth, // int
            "encodedFrameHeight" to encodedFrameHeight, // int
            "encodedFrameCount" to encodedFrameCount, // int
            "codecType" to codecType, // int
            "txPacketLossRate" to txPacketLossRate, // int
            "captureFrameRate" to captureFrameRate, // int
            "captureBrightnessLevel" to captureBrightnessLevel // int
    )
}

fun IRtcEngineEventHandler.AudioVolumeInfo.toFlutterMap(): Map<*, *> {
    return hashMapOf(
            "uid" to uid, // int
            "volume" to volume, // int
            "vad" to vad, // int
            "channelId" to channelId // String
    )
}
