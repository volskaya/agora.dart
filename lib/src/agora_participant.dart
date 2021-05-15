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

  @o Participant? state;
  @c RemoteAudioStats? get audioStats => state?.audioStats;
  @c RemoteVideoStats? get videoStats => state?.videoStats;
  @c AudioVolumeInfo? get volumeInfo => state?.volumeInfo;
  @c AudioRemoteState get audioState => state?.audioState ?? AudioRemoteState.stopped;
  @c VideoRemoteState get videoState => state?.videoState ?? VideoRemoteState.stopped;
  @c bool get hasFrames => state?.hasFrames ?? false;

  /// [AgoraParticipant] is disposed when its no longer in [Agora.instance.participants] map.
  void dispose() {
    channel.setMethodCallHandler(null);
  }

  @a Future _handleMethodCall(MethodCall methodCall) {
    switch (methodCall.method) {
      case 'hydrate':
        state = Participant.fromJson(Map<String, dynamic>.from(methodCall.arguments as Map));
        break;
      default:
        throw UnimplementedError();
    }

    return SynchronousFuture(null);
  }
}
