// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EngineState _$_$_EngineStateFromJson(Map json) {
  return _$_EngineState(
    connectionState: _$enumDecodeNullable(
            _$ConnectionStateTypeEnumMap, json['connectionState']) ??
        ConnectionStateType.disconnected,
    channel: json['channel'] as String,
    activeSpeaker: json['activeSpeaker'] as int,
    participant: json['participant'] == null
        ? null
        : LocalParticipant.fromJson((json['participant'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    onlineParticipants:
        (json['onlineParticipants'] as List)?.map((e) => e as int)?.toSet(),
  );
}

Map<String, dynamic> _$_$_EngineStateToJson(_$_EngineState instance) =>
    <String, dynamic>{
      'connectionState': _$ConnectionStateTypeEnumMap[instance.connectionState],
      'channel': instance.channel,
      'activeSpeaker': instance.activeSpeaker,
      'participant': instance.participant?.toJson(),
      'onlineParticipants': instance.onlineParticipants?.toList(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ConnectionStateTypeEnumMap = {
  ConnectionStateType.disconnected: 1,
  ConnectionStateType.connecting: 2,
  ConnectionStateType.connected: 3,
  ConnectionStateType.reconnecting: 4,
  ConnectionStateType.failed: 5,
};

_$_InitializeEngineProps _$_$_InitializeEnginePropsFromJson(Map json) {
  return _$_InitializeEngineProps(
    appId: json['appId'] as String,
    areaCode: _$enumDecodeNullable(_$AreaCodeEnumMap, json['areaCode']) ??
        AreaCode.global,
    notificationSettings: json['notificationSettings'] == null
        ? null
        : NotificationProps.fromJson((json['notificationSettings'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_InitializeEnginePropsToJson(
        _$_InitializeEngineProps instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'areaCode': _$AreaCodeEnumMap[instance.areaCode],
      'notificationSettings': instance.notificationSettings?.toJson(),
    };

const _$AreaCodeEnumMap = {
  AreaCode.china: 1,
  AreaCode.northAmerica: 2,
  AreaCode.europe: 4,
  AreaCode.asia: 8,
  AreaCode.japan: 16,
  AreaCode.india: 32,
  AreaCode.global: -1,
};

_$_NotificationProps _$_$_NotificationPropsFromJson(Map json) {
  return _$_NotificationProps(
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
  );
}

Map<String, dynamic> _$_$_NotificationPropsToJson(
        _$_NotificationProps instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
    };

_$_JoinChannelProps _$_$_JoinChannelPropsFromJson(Map json) {
  return _$_JoinChannelProps(
    token: json['token'] as String,
    channelName: json['channelName'] as String,
    uid: json['uid'] as int,
    profile: _$enumDecodeNullable(_$ChannelProfileEnumMap, json['profile']) ??
        ChannelProfile.liveBroadcasting,
    role: _$enumDecodeNullable(_$ClientRoleEnumMap, json['role']) ??
        ClientRole.broadcaster,
  );
}

Map<String, dynamic> _$_$_JoinChannelPropsToJson(
        _$_JoinChannelProps instance) =>
    <String, dynamic>{
      'token': instance.token,
      'channelName': instance.channelName,
      'uid': instance.uid,
      'profile': _$ChannelProfileEnumMap[instance.profile],
      'role': _$ClientRoleEnumMap[instance.role],
    };

const _$ChannelProfileEnumMap = {
  ChannelProfile.communication: 0,
  ChannelProfile.liveBroadcasting: 1,
  ChannelProfile.game: 2,
};

const _$ClientRoleEnumMap = {
  ClientRole.broadcaster: 1,
  ClientRole.audience: 2,
};

_$_RtcStats _$_$_RtcStatsFromJson(Map json) {
  return _$_RtcStats(
    totalDuration: json['totalDuration'] as int ?? 0,
    txBytes: json['txBytes'] as int ?? 0,
    rxBytes: json['rxBytes'] as int ?? 0,
    txAudioBytes: json['txAudioBytes'] as int ?? 0,
    txVideoBytes: json['txVideoBytes'] as int ?? 0,
    rxAudioBytes: json['rxAudioBytes'] as int ?? 0,
    rxVideoBytes: json['rxVideoBytes'] as int ?? 0,
    txKBitRate: json['txKBitRate'] as int ?? 0,
    rxKBitRate: json['rxKBitRate'] as int ?? 0,
    txAudioKBitRate: json['txAudioKBitRate'] as int ?? 0,
    rxAudioKBitRate: json['rxAudioKBitRate'] as int ?? 0,
    txVideoKBitRate: json['txVideoKBitRate'] as int ?? 0,
    rxVideoKBitRate: json['rxVideoKBitRate'] as int ?? 0,
    users: json['users'] as int ?? 0,
    lastmileDelay: json['lastmileDelay'] as int ?? 0,
    txPacketLossRate: json['txPacketLossRate'] as int ?? 0,
    rxPacketLossRate: json['rxPacketLossRate'] as int ?? 0,
    cpuTotalUsage: (json['cpuTotalUsage'] as num)?.toDouble() ?? 0.0,
    cpuAppUsage: (json['cpuAppUsage'] as num)?.toDouble() ?? 0.0,
    gatewayRtt: json['gatewayRtt'] as int ?? 0,
    memoryAppUsageRatio:
        (json['memoryAppUsageRatio'] as num)?.toDouble() ?? 0.0,
    memoryTotalUsageRatio:
        (json['memoryTotalUsageRatio'] as num)?.toDouble() ?? 0.0,
    memoryAppUsageInKbyte: json['memoryAppUsageInKbyte'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_RtcStatsToJson(_$_RtcStats instance) =>
    <String, dynamic>{
      'totalDuration': instance.totalDuration,
      'txBytes': instance.txBytes,
      'rxBytes': instance.rxBytes,
      'txAudioBytes': instance.txAudioBytes,
      'txVideoBytes': instance.txVideoBytes,
      'rxAudioBytes': instance.rxAudioBytes,
      'rxVideoBytes': instance.rxVideoBytes,
      'txKBitRate': instance.txKBitRate,
      'rxKBitRate': instance.rxKBitRate,
      'txAudioKBitRate': instance.txAudioKBitRate,
      'rxAudioKBitRate': instance.rxAudioKBitRate,
      'txVideoKBitRate': instance.txVideoKBitRate,
      'rxVideoKBitRate': instance.rxVideoKBitRate,
      'users': instance.users,
      'lastmileDelay': instance.lastmileDelay,
      'txPacketLossRate': instance.txPacketLossRate,
      'rxPacketLossRate': instance.rxPacketLossRate,
      'cpuTotalUsage': instance.cpuTotalUsage,
      'cpuAppUsage': instance.cpuAppUsage,
      'gatewayRtt': instance.gatewayRtt,
      'memoryAppUsageRatio': instance.memoryAppUsageRatio,
      'memoryTotalUsageRatio': instance.memoryTotalUsageRatio,
      'memoryAppUsageInKbyte': instance.memoryAppUsageInKbyte,
    };

_$_RemoteAudioStats _$_$_RemoteAudioStatsFromJson(Map json) {
  return _$_RemoteAudioStats(
    uid: json['uid'] as int,
    quality: json['quality'] as int,
    networkTransportDelay: json['networkTransportDelay'] as int,
    jitterBufferDelay: json['jitterBufferDelay'] as int,
    audioLossRate: json['audioLossRate'] as int,
    numChannels: json['numChannels'] as int,
    receivedSampleRate: json['receivedSampleRate'] as int,
    receivedBitrate: json['receivedBitrate'] as int,
    totalFrozenTime: json['totalFrozenTime'] as int,
    frozenRate: json['frozenRate'] as int,
    totalActiveTime: json['totalActiveTime'] as int,
    publishDuration: json['publishDuration'] as int,
    qoeQuality: json['qoeQuality'] as int,
    qualityChangedReason: json['qualityChangedReason'] as int,
  );
}

Map<String, dynamic> _$_$_RemoteAudioStatsToJson(
        _$_RemoteAudioStats instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'quality': instance.quality,
      'networkTransportDelay': instance.networkTransportDelay,
      'jitterBufferDelay': instance.jitterBufferDelay,
      'audioLossRate': instance.audioLossRate,
      'numChannels': instance.numChannels,
      'receivedSampleRate': instance.receivedSampleRate,
      'receivedBitrate': instance.receivedBitrate,
      'totalFrozenTime': instance.totalFrozenTime,
      'frozenRate': instance.frozenRate,
      'totalActiveTime': instance.totalActiveTime,
      'publishDuration': instance.publishDuration,
      'qoeQuality': instance.qoeQuality,
      'qualityChangedReason': instance.qualityChangedReason,
    };

_$_RemoteVideoStats _$_$_RemoteVideoStatsFromJson(Map json) {
  return _$_RemoteVideoStats(
    uid: json['uid'] as int,
    width: json['width'] as int,
    height: json['height'] as int,
    receivedBitrate: json['receivedBitrate'] as int,
    decoderOutputFrameRate: json['decoderOutputFrameRate'] as int,
    rendererOutputFrameRate: json['rendererOutputFrameRate'] as int,
    packetLossRate: json['packetLossRate'] as int,
    rxStreamType: json['rxStreamType'] as int,
    totalFrozenTime: json['totalFrozenTime'] as int,
    frozenRate: json['frozenRate'] as int,
    totalActiveTime: json['totalActiveTime'] as int,
    publishDuration: json['publishDuration'] as int,
  );
}

Map<String, dynamic> _$_$_RemoteVideoStatsToJson(
        _$_RemoteVideoStats instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'width': instance.width,
      'height': instance.height,
      'receivedBitrate': instance.receivedBitrate,
      'decoderOutputFrameRate': instance.decoderOutputFrameRate,
      'rendererOutputFrameRate': instance.rendererOutputFrameRate,
      'packetLossRate': instance.packetLossRate,
      'rxStreamType': instance.rxStreamType,
      'totalFrozenTime': instance.totalFrozenTime,
      'frozenRate': instance.frozenRate,
      'totalActiveTime': instance.totalActiveTime,
      'publishDuration': instance.publishDuration,
    };

_$_LocalAudioStats _$_$_LocalAudioStatsFromJson(Map json) {
  return _$_LocalAudioStats(
    numChannels: json['numChannels'] as int,
    sentSampleRate: json['sentSampleRate'] as int,
    sentBitrate: json['sentBitrate'] as int,
    txPacketLossRate: json['txPacketLossRate'] as int,
  );
}

Map<String, dynamic> _$_$_LocalAudioStatsToJson(_$_LocalAudioStats instance) =>
    <String, dynamic>{
      'numChannels': instance.numChannels,
      'sentSampleRate': instance.sentSampleRate,
      'sentBitrate': instance.sentBitrate,
      'txPacketLossRate': instance.txPacketLossRate,
    };

_$_LocalVideoStats _$_$_LocalVideoStatsFromJson(Map json) {
  return _$_LocalVideoStats(
    sentBitrate: json['sentBitrate'] as int,
    sentFrameRate: json['sentFrameRate'] as int,
    encoderOutputFrameRate: json['encoderOutputFrameRate'] as int,
    rendererOutputFrameRate: json['rendererOutputFrameRate'] as int,
    targetBitrate: json['targetBitrate'] as int,
    targetFrameRate: json['targetFrameRate'] as int,
    qualityAdaptIndication: json['qualityAdaptIndication'] as int,
    encodedBitrate: json['encodedBitrate'] as int,
    encodedFrameWidth: json['encodedFrameWidth'] as int,
    encodedFrameHeight: json['encodedFrameHeight'] as int,
    encodedFrameCount: json['encodedFrameCount'] as int,
    codecType: json['codecType'] as int,
    txPacketLossRate: json['txPacketLossRate'] as int,
    captureFrameRate: json['captureFrameRate'] as int,
    captureBrightnessLevel: json['captureBrightnessLevel'] as int,
  );
}

Map<String, dynamic> _$_$_LocalVideoStatsToJson(_$_LocalVideoStats instance) =>
    <String, dynamic>{
      'sentBitrate': instance.sentBitrate,
      'sentFrameRate': instance.sentFrameRate,
      'encoderOutputFrameRate': instance.encoderOutputFrameRate,
      'rendererOutputFrameRate': instance.rendererOutputFrameRate,
      'targetBitrate': instance.targetBitrate,
      'targetFrameRate': instance.targetFrameRate,
      'qualityAdaptIndication': instance.qualityAdaptIndication,
      'encodedBitrate': instance.encodedBitrate,
      'encodedFrameWidth': instance.encodedFrameWidth,
      'encodedFrameHeight': instance.encodedFrameHeight,
      'encodedFrameCount': instance.encodedFrameCount,
      'codecType': instance.codecType,
      'txPacketLossRate': instance.txPacketLossRate,
      'captureFrameRate': instance.captureFrameRate,
      'captureBrightnessLevel': instance.captureBrightnessLevel,
    };

_$_AudioVolumeInfo _$_$_AudioVolumeInfoFromJson(Map json) {
  return _$_AudioVolumeInfo(
    uid: json['uid'] as int,
    volume: json['volume'] as int,
    vad: json['vad'] as int,
    channelId: json['channelId'] as String,
  );
}

Map<String, dynamic> _$_$_AudioVolumeInfoToJson(_$_AudioVolumeInfo instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'volume': instance.volume,
      'vad': instance.vad,
      'channelId': instance.channelId,
    };

_$_Participant _$_$_ParticipantFromJson(Map json) {
  return _$_Participant(
    uid: json['uid'] as int,
    audioState:
        _$enumDecodeNullable(_$AudioRemoteStateEnumMap, json['audioState']) ??
            AudioRemoteState.stopped,
    videoState:
        _$enumDecodeNullable(_$VideoRemoteStateEnumMap, json['videoState']) ??
            VideoRemoteState.stopped,
    audioStats: json['audioStats'] == null
        ? null
        : RemoteAudioStats.fromJson((json['audioStats'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    videoStats: json['videoStats'] == null
        ? null
        : RemoteVideoStats.fromJson((json['videoStats'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    volumeInfo: json['volumeInfo'] == null
        ? null
        : AudioVolumeInfo.fromJson((json['volumeInfo'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    hasFrames: json['hasFrames'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_ParticipantToJson(_$_Participant instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'audioState': _$AudioRemoteStateEnumMap[instance.audioState],
      'videoState': _$VideoRemoteStateEnumMap[instance.videoState],
      'audioStats': instance.audioStats?.toJson(),
      'videoStats': instance.videoStats?.toJson(),
      'volumeInfo': instance.volumeInfo?.toJson(),
      'hasFrames': instance.hasFrames,
    };

const _$AudioRemoteStateEnumMap = {
  AudioRemoteState.stopped: 0,
  AudioRemoteState.starting: 1,
  AudioRemoteState.decoding: 2,
  AudioRemoteState.frozen: 3,
  AudioRemoteState.failed: 4,
};

const _$VideoRemoteStateEnumMap = {
  VideoRemoteState.stopped: 0,
  VideoRemoteState.starting: 1,
  VideoRemoteState.decoding: 2,
  VideoRemoteState.frozen: 3,
  VideoRemoteState.failed: 4,
};

_$_LocalParticipant _$_$_LocalParticipantFromJson(Map json) {
  return _$_LocalParticipant(
    uid: json['uid'] as int,
    audioState:
        _$enumDecodeNullable(_$AudioLocalStateEnumMap, json['audioState']) ??
            AudioLocalState.stopped,
    videoState:
        _$enumDecodeNullable(_$VideoLocalStateEnumMap, json['videoState']) ??
            VideoLocalState.stopped,
    audioStats: json['audioStats'] == null
        ? null
        : LocalAudioStats.fromJson((json['audioStats'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    videoStats: json['videoStats'] == null
        ? null
        : LocalVideoStats.fromJson((json['videoStats'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    volumeInfo: json['volumeInfo'] == null
        ? null
        : AudioVolumeInfo.fromJson((json['volumeInfo'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    hasFrames: json['hasFrames'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_LocalParticipantToJson(
        _$_LocalParticipant instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'audioState': _$AudioLocalStateEnumMap[instance.audioState],
      'videoState': _$VideoLocalStateEnumMap[instance.videoState],
      'audioStats': instance.audioStats?.toJson(),
      'videoStats': instance.videoStats?.toJson(),
      'volumeInfo': instance.volumeInfo?.toJson(),
      'hasFrames': instance.hasFrames,
    };

const _$AudioLocalStateEnumMap = {
  AudioLocalState.stopped: 0,
  AudioLocalState.recording: 1,
  AudioLocalState.encoding: 2,
  AudioLocalState.failed: 3,
};

const _$VideoLocalStateEnumMap = {
  VideoLocalState.stopped: 0,
  VideoLocalState.capturing: 1,
  VideoLocalState.encoding: 2,
  VideoLocalState.failed: 3,
};
