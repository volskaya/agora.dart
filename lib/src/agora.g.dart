// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agora.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Agora on _Agora, Store {
  Computed<int?>? _$activeSpeakerComputed;

  @override
  int? get activeSpeaker =>
      (_$activeSpeakerComputed ??= Computed<int?>(() => super.activeSpeaker,
              name: '_Agora.activeSpeaker'))
          .value;
  Computed<ConnectionStateType>? _$connectionStateComputed;

  @override
  ConnectionStateType get connectionState => (_$connectionStateComputed ??=
          Computed<ConnectionStateType>(() => super.connectionState,
              name: '_Agora.connectionState'))
      .value;
  Computed<LocalParticipant>? _$participantComputed;

  @override
  LocalParticipant get participant => (_$participantComputed ??=
          Computed<LocalParticipant>(() => super.participant,
              name: '_Agora.participant'))
      .value;
  Computed<VideoLocalState>? _$videoStateComputed;

  @override
  VideoLocalState get videoState => (_$videoStateComputed ??=
          Computed<VideoLocalState>(() => super.videoState,
              name: '_Agora.videoState'))
      .value;
  Computed<AudioLocalState>? _$audioStateComputed;

  @override
  AudioLocalState get audioState => (_$audioStateComputed ??=
          Computed<AudioLocalState>(() => super.audioState,
              name: '_Agora.audioState'))
      .value;
  Computed<LocalVideoStats?>? _$videoStatsComputed;

  @override
  LocalVideoStats? get videoStats => (_$videoStatsComputed ??=
          Computed<LocalVideoStats?>(() => super.videoStats,
              name: '_Agora.videoStats'))
      .value;
  Computed<LocalAudioStats?>? _$audioStatsComputed;

  @override
  LocalAudioStats? get audioStats => (_$audioStatsComputed ??=
          Computed<LocalAudioStats?>(() => super.audioStats,
              name: '_Agora.audioStats'))
      .value;
  Computed<Map<int, AgoraParticipant>>? _$participantsComputed;

  @override
  Map<int, AgoraParticipant> get participants => (_$participantsComputed ??=
          Computed<Map<int, AgoraParticipant>>(() => super.participants,
              name: '_Agora.participants'))
      .value;

  final _$statsAtom = Atom(name: '_Agora.stats');

  @override
  RtcStats get stats {
    _$statsAtom.reportRead();
    return super.stats;
  }

  @override
  set stats(RtcStats value) {
    if (super.stats != value) {
      _$statsAtom.reportWrite(value, super.stats, () {
        super.stats = value;
      });
    }
  }

  final _$stateAtom = Atom(name: '_Agora.state');

  @override
  EngineState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(EngineState value) {
    if (super.state != value) {
      _$stateAtom.reportWrite(value, super.state, () {
        super.state = value;
      });
    }
  }

  final _$_AgoraActionController = ActionController(name: '_Agora');

  @override
  Future<dynamic> _handleMethodCall(MethodCall methodCall) {
    final _$actionInfo =
        _$_AgoraActionController.startAction(name: '_Agora._handleMethodCall');
    try {
      return super._handleMethodCall(methodCall);
    } finally {
      _$_AgoraActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
stats: ${stats},
state: ${state},
activeSpeaker: ${activeSpeaker},
connectionState: ${connectionState},
participant: ${participant},
videoState: ${videoState},
audioState: ${audioState},
videoStats: ${videoStats},
audioStats: ${audioStats},
participants: ${participants}
    ''';
  }
}
