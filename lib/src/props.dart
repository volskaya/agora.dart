import 'package:agora/src/converters.dart';
import 'package:agora/src/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'props.g.dart';
part 'props.freezed.dart';

@freezed
abstract class EngineState with _$EngineState {
  const factory EngineState({
    @Default(ConnectionStateType.disconnected) ConnectionStateType connectionState,
    String channel,
    int activeSpeaker,
    LocalParticipant participant, // Local participant.
    @SetFromListConverter() Set<int> onlineParticipants,
  }) = _EngineState;

  factory EngineState.fromJson(Map<String, dynamic> json) => _$EngineStateFromJson(json);
}

@freezed
abstract class InitializeEngineProps with _$InitializeEngineProps {
  const factory InitializeEngineProps({
    @required String appId,
    @Default(AreaCode.global) AreaCode areaCode,
    NotificationProps notificationSettings,
  }) = _InitializeEngineProps;

  factory InitializeEngineProps.fromJson(Map<String, dynamic> json) => _$InitializeEnginePropsFromJson(json);
}

@freezed
abstract class NotificationProps with _$NotificationProps {
  const factory NotificationProps({
    String title,
    String subtitle,
  }) = _NotificationProps;

  factory NotificationProps.fromJson(Map<String, dynamic> json) => _$NotificationPropsFromJson(json);
}

@freezed
abstract class JoinChannelProps with _$JoinChannelProps {
  const factory JoinChannelProps({
    @required String token,
    @required String channelName,
    @required int uid,
    @Default(ChannelProfile.liveBroadcasting) ChannelProfile profile,
    @Default(ClientRole.broadcaster) ClientRole role,
  }) = _JoinChannelProps;

  factory JoinChannelProps.fromJson(Map<String, dynamic> json) => _$JoinChannelPropsFromJson(json);
}

@freezed
abstract class RtcStats with _$RtcStats {
  const factory RtcStats({
    @Default(0) int totalDuration,
    @Default(0) int txBytes,
    @Default(0) int rxBytes,
    @Default(0) int txAudioBytes,
    @Default(0) int txVideoBytes,
    @Default(0) int rxAudioBytes,
    @Default(0) int rxVideoBytes,
    @Default(0) int txKBitRate,
    @Default(0) int rxKBitRate,
    @Default(0) int txAudioKBitRate,
    @Default(0) int rxAudioKBitRate,
    @Default(0) int txVideoKBitRate,
    @Default(0) int rxVideoKBitRate,
    @Default(0) int users,
    @Default(0) int lastmileDelay,
    @Default(0) int txPacketLossRate,
    @Default(0) int rxPacketLossRate,
    @Default(0.0) double cpuTotalUsage,
    @Default(0.0) double cpuAppUsage,
    @Default(0) int gatewayRtt,
    @Default(0.0) double memoryAppUsageRatio,
    @Default(0.0) double memoryTotalUsageRatio,
    @Default(0) int memoryAppUsageInKbyte,
  }) = _RtcStats;

  factory RtcStats.fromJson(Map<String, dynamic> json) => _$RtcStatsFromJson(json);
}

@freezed
abstract class RemoteAudioStats with _$RemoteAudioStats {
  const factory RemoteAudioStats({
    @required int uid,
    @required int quality,
    @required int networkTransportDelay,
    @required int jitterBufferDelay,
    @required int audioLossRate,
    @required int numChannels,
    @required int receivedSampleRate,
    @required int receivedBitrate,
    @required int totalFrozenTime,
    @required int frozenRate,
    @required int totalActiveTime,
    @required int publishDuration,
    @required int qoeQuality,
    @required int qualityChangedReason,
  }) = _RemoteAudioStats;

  factory RemoteAudioStats.fromJson(Map<String, dynamic> json) => _$RemoteAudioStatsFromJson(json);
}

@freezed
abstract class RemoteVideoStats with _$RemoteVideoStats {
  const factory RemoteVideoStats({
    @required int uid,
    @required int width,
    @required int height,
    @required int receivedBitrate,
    @required int decoderOutputFrameRate,
    @required int rendererOutputFrameRate,
    @required int packetLossRate,
    @required int rxStreamType,
    @required int totalFrozenTime,
    @required int frozenRate,
    @required int totalActiveTime,
    @required int publishDuration,
  }) = _RemoteVideoStats;

  factory RemoteVideoStats.fromJson(Map<String, dynamic> json) => _$RemoteVideoStatsFromJson(json);
}

@freezed
abstract class LocalAudioStats with _$LocalAudioStats {
  const factory LocalAudioStats({
    @required int numChannels,
    @required int sentSampleRate,
    @required int sentBitrate,
    @required int txPacketLossRate,
  }) = _LocalAudioStats;

  factory LocalAudioStats.fromJson(Map<String, dynamic> json) => _$LocalAudioStatsFromJson(json);
}

@freezed
abstract class LocalVideoStats with _$LocalVideoStats {
  const factory LocalVideoStats({
    @required int sentBitrate,
    @required int sentFrameRate,
    @required int encoderOutputFrameRate,
    @required int rendererOutputFrameRate,
    @required int targetBitrate,
    @required int targetFrameRate,
    @required int qualityAdaptIndication,
    @required int encodedBitrate,
    @required int encodedFrameWidth,
    @required int encodedFrameHeight,
    @required int encodedFrameCount,
    @required int codecType,
    @required int txPacketLossRate,
    @required int captureFrameRate,
    @required int captureBrightnessLevel,
  }) = _LocalVideoStats;

  factory LocalVideoStats.fromJson(Map<String, dynamic> json) => _$LocalVideoStatsFromJson(json);
}

@freezed
abstract class AudioVolumeInfo with _$AudioVolumeInfo {
  const factory AudioVolumeInfo({
    @required int uid,
    @required int volume,
    @required int vad,
    @required String channelId,
  }) = _AudioVolumeInfo;

  factory AudioVolumeInfo.fromJson(Map<String, dynamic> json) => _$AudioVolumeInfoFromJson(json);
}

@freezed
abstract class Participant with _$Participant {
  const factory Participant({
    @required int uid,
    @Default(AudioRemoteState.stopped) AudioRemoteState audioState,
    @Default(VideoRemoteState.stopped) VideoRemoteState videoState,
    RemoteAudioStats audioStats,
    RemoteVideoStats videoStats,
    AudioVolumeInfo volumeInfo,
    @Default(false) bool hasFrames,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
}

@freezed
abstract class LocalParticipant with _$LocalParticipant {
  const factory LocalParticipant({
    int uid,
    @Default(AudioLocalState.stopped) AudioLocalState audioState,
    @Default(VideoLocalState.stopped) VideoLocalState videoState,
    LocalAudioStats audioStats,
    LocalVideoStats videoStats,
    AudioVolumeInfo volumeInfo,
    @Default(false) bool hasFrames,
  }) = _LocalParticipant;

  factory LocalParticipant.fromJson(Map<String, dynamic> json) => _$LocalParticipantFromJson(json);
}
