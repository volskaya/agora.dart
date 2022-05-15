import 'dart:async';

import 'package:agora/agora.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'agora.g.dart';

class Agora extends _Agora with _$Agora {
  static final _instance = Agora();

  static Agora get instance {
    if (disableInstance) throw 'Attempted to read [Agora.instance] while [Agora.disableInstance] is toggled';
    return _instance;
  }

  /// Toggle this off if you intend to compute your own participants and
  /// want to avoid redundant method channel operations.
  static bool computeParticipants = true;

  /// Toggle this on to forbid clients from creating the [Agora.instance] in cases
  /// when you are extending this class and don't want the method channel from being
  /// constructed.
  static bool disableInstance = false;
}

abstract class _Agora with Store {
  _Agora() {
    channel.setMethodCallHandler(_handleMethodCall);
  }

  final channel = const MethodChannel('dev.volskaya.agora');

  @o RtcStats stats = const RtcStats();
  @o EngineState state = const EngineState();
  @c int? get activeSpeaker => state.activeSpeaker;
  @c ConnectionStateType get connectionState => state.connectionState;
  @c LocalParticipant get participant => state.participant ?? const LocalParticipant();
  @c VideoLocalState get videoState => participant.videoState;
  @c AudioLocalState get audioState => participant.audioState;
  @c LocalVideoStats? get videoStats => participant.videoStats;
  @c LocalAudioStats? get audioStats => participant.audioStats;

  /// [AgoraParticipant] has to be rebuilt to avoid its [EventChannel] from reconstructing.
  Map<int, AgoraParticipant> _cachedParticipants = const <int, AgoraParticipant>{};

  @c Map<int, AgoraParticipant> get participants {
    if (!Agora.computeParticipants) {
      throw 'Something accessed [Agora.instance.participants] while [Agora.computeParticipants] was toggled off';
    }

    final oldParticipants = _cachedParticipants;

    try {
      return _cachedParticipants = {
        for (final uid in state.onlineParticipants) uid: _cachedParticipants[uid] ?? AgoraParticipant(uid),
      };
    } finally {
      // Defer the dispose calls after the new cached participants have been returned and the observables updated.
      for (final entry in oldParticipants.entries) {
        if (!_cachedParticipants.containsKey(entry.key)) entry.value.dispose();
      }
    }
  }

  Future leaveChannel() => channel.invokeMethod('leaveChannel');
  Future requestIgnoreBatteryOptimizations() => channel.invokeMethod('requestIgnoreBatteryOptimizations');
  Future<bool> shouldIgnoreBatteryOptimizations() async =>
      await channel.invokeMethod<bool>('shouldIgnoreBatteryOptimizations') ?? false;

  Future enableLocalAudio(bool enabled) => channel.invokeMethod('enableLocalAudio', {'enabled': enabled});
  Future enableLocalVideo(bool enabled) => channel.invokeMethod('enableLocalVideo', {'enabled': enabled});
  Future enableAudio(bool enabled) => channel.invokeMethod('enableAudio', {'enabled': enabled});
  Future enableVideo(bool enabled) => channel.invokeMethod('enableVideo', {'enabled': enabled});

  Future muteRemoteAudioStream(int uid, bool muted) =>
      channel.invokeMethod('muteRemoteAudioStream', {'uid': uid, 'muted': muted});
  Future muteRemoteVideoStream(int uid, bool muted) =>
      channel.invokeMethod('muteRemoteVideoStream', {'uid': uid, 'muted': muted});

  /// Initializes the platform engine. The engine could already be initialized in a foreground service.
  ///
  /// This also triggers the first `state` update to be dispatched.
  Future initialize(
    String appId, {
    AreaCode? areaCode,
    NotificationProps? notificationSettings,
  }) =>
      channel.invokeMethod(
        'initialize',
        InitializeEngineProps(
          appId: appId,
          areaCode: areaCode ?? AreaCode.global,
          notificationSettings: notificationSettings ?? const NotificationProps(),
        ).toJson(),
      );

  Future updateNotificationSettingss(NotificationProps settings) async {
    try {
      await channel.invokeMethod('updateNotificationSettings', settings.toJson());
    } catch(_) {}
  }

  Future joinChannel(String token, String channelName, int uid) =>
      channel.invokeMethod('joinChannel', JoinChannelProps(token: token, channelName: channelName, uid: uid).toJson());

  void dispose() => channel.setMethodCallHandler(null);

  @a Future _handleMethodCall(MethodCall methodCall) {
    switch (methodCall.method) {
      case 'hydrateState':
        state = EngineState.fromJson(Map<String, dynamic>.from(methodCall.arguments as Map));
        // print(state);
        break;
      case 'hydrateStats':
        stats = RtcStats.fromJson(Map<String, dynamic>.from(methodCall.arguments as Map));
        break;
      default:
        throw UnimplementedError();
    }

    return SynchronousFuture(null);
  }
}
