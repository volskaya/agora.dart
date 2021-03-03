import 'package:agora/src/enums.dart';
import 'package:agora/src/props.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'agora_participant.g.dart';

class AgoraParticipant = _AgoraParticipant with _$AgoraParticipant;

abstract class _AgoraParticipant with Store {
  _AgoraParticipant(this.agoraId)
      : state = Participant(uid: agoraId),
        channel = MethodChannel('dev.volskaya.agora.participant.$agoraId') {
    channel.setMethodCallHandler(_handleMethodCall);
  }

  final int agoraId;
  final MethodChannel channel;

  @observable
  Participant state;
  @computed
  RemoteAudioStats get audioStats => state.audioStats;
  @computed
  AudioRemoteState get audioState => state.audioState;
  @computed
  RemoteVideoStats get videoStats => state.videoStats;
  @computed
  VideoRemoteState get videoState => state.videoState;
  @computed
  AudioVolumeInfo get volumeInfo => state.volumeInfo;
  @computed
  bool get hasFrames => state.hasFrames;

  Future _handleMethodCall(MethodCall methodCall) {
    switch (methodCall.method) {
      case 'hydrate':
        state = Participant.fromJson(Map<String, dynamic>.from(methodCall.arguments as Map));
        break;
      default:
        throw UnimplementedError();
    }

    return SynchronousFuture(null);
  }

  /// [AgoraParticipant] is disposed when its no longer in [Agora.instance.participants] map.
  void dispose() {
    channel.setMethodCallHandler(null);
  }
}
