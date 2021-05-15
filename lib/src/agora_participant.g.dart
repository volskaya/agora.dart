// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agora_participant.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AgoraParticipant on _AgoraParticipant, Store {
  Computed<RemoteAudioStats?>? _$audioStatsComputed;

  @override
  RemoteAudioStats? get audioStats => (_$audioStatsComputed ??=
          Computed<RemoteAudioStats?>(() => super.audioStats,
              name: '_AgoraParticipant.audioStats'))
      .value;
  Computed<RemoteVideoStats?>? _$videoStatsComputed;

  @override
  RemoteVideoStats? get videoStats => (_$videoStatsComputed ??=
          Computed<RemoteVideoStats?>(() => super.videoStats,
              name: '_AgoraParticipant.videoStats'))
      .value;
  Computed<AudioVolumeInfo?>? _$volumeInfoComputed;

  @override
  AudioVolumeInfo? get volumeInfo => (_$volumeInfoComputed ??=
          Computed<AudioVolumeInfo?>(() => super.volumeInfo,
              name: '_AgoraParticipant.volumeInfo'))
      .value;
  Computed<AudioRemoteState>? _$audioStateComputed;

  @override
  AudioRemoteState get audioState => (_$audioStateComputed ??=
          Computed<AudioRemoteState>(() => super.audioState,
              name: '_AgoraParticipant.audioState'))
      .value;
  Computed<VideoRemoteState>? _$videoStateComputed;

  @override
  VideoRemoteState get videoState => (_$videoStateComputed ??=
          Computed<VideoRemoteState>(() => super.videoState,
              name: '_AgoraParticipant.videoState'))
      .value;
  Computed<bool>? _$hasFramesComputed;

  @override
  bool get hasFrames =>
      (_$hasFramesComputed ??= Computed<bool>(() => super.hasFrames,
              name: '_AgoraParticipant.hasFrames'))
          .value;

  final _$stateAtom = Atom(name: '_AgoraParticipant.state');

  @override
  Participant? get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(Participant? value) {
    if (super.state != value) {
      _$stateAtom.reportWrite(value, super.state, () {
        super.state = value;
      });
    }
  }

  final _$_AgoraParticipantActionController =
      ActionController(name: '_AgoraParticipant');

  @override
  Future<dynamic> _handleMethodCall(MethodCall methodCall) {
    final _$actionInfo = _$_AgoraParticipantActionController.startAction(
        name: '_AgoraParticipant._handleMethodCall');
    try {
      return super._handleMethodCall(methodCall);
    } finally {
      _$_AgoraParticipantActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
audioStats: ${audioStats},
videoStats: ${videoStats},
volumeInfo: ${volumeInfo},
audioState: ${audioState},
videoState: ${videoState},
hasFrames: ${hasFrames}
    ''';
  }
}
