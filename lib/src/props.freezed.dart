// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EngineState _$EngineStateFromJson(Map<String, dynamic> json) {
  return _EngineState.fromJson(json);
}

/// @nodoc
class _$EngineStateTearOff {
  const _$EngineStateTearOff();

// ignore: unused_element
  _EngineState call(
      {ConnectionStateType connectionState = ConnectionStateType.disconnected,
      String channel,
      int activeSpeaker,
      LocalParticipant participant,
      @SetFromListConverter() Set<int> onlineParticipants}) {
    return _EngineState(
      connectionState: connectionState,
      channel: channel,
      activeSpeaker: activeSpeaker,
      participant: participant,
      onlineParticipants: onlineParticipants,
    );
  }

// ignore: unused_element
  EngineState fromJson(Map<String, Object> json) {
    return EngineState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EngineState = _$EngineStateTearOff();

/// @nodoc
mixin _$EngineState {
  ConnectionStateType get connectionState;
  String get channel;
  int get activeSpeaker;
  LocalParticipant get participant; // Local participant.
  @SetFromListConverter()
  Set<int> get onlineParticipants;

  Map<String, dynamic> toJson();
  $EngineStateCopyWith<EngineState> get copyWith;
}

/// @nodoc
abstract class $EngineStateCopyWith<$Res> {
  factory $EngineStateCopyWith(
          EngineState value, $Res Function(EngineState) then) =
      _$EngineStateCopyWithImpl<$Res>;
  $Res call(
      {ConnectionStateType connectionState,
      String channel,
      int activeSpeaker,
      LocalParticipant participant,
      @SetFromListConverter() Set<int> onlineParticipants});

  $LocalParticipantCopyWith<$Res> get participant;
}

/// @nodoc
class _$EngineStateCopyWithImpl<$Res> implements $EngineStateCopyWith<$Res> {
  _$EngineStateCopyWithImpl(this._value, this._then);

  final EngineState _value;
  // ignore: unused_field
  final $Res Function(EngineState) _then;

  @override
  $Res call({
    Object connectionState = freezed,
    Object channel = freezed,
    Object activeSpeaker = freezed,
    Object participant = freezed,
    Object onlineParticipants = freezed,
  }) {
    return _then(_value.copyWith(
      connectionState: connectionState == freezed
          ? _value.connectionState
          : connectionState as ConnectionStateType,
      channel: channel == freezed ? _value.channel : channel as String,
      activeSpeaker: activeSpeaker == freezed
          ? _value.activeSpeaker
          : activeSpeaker as int,
      participant: participant == freezed
          ? _value.participant
          : participant as LocalParticipant,
      onlineParticipants: onlineParticipants == freezed
          ? _value.onlineParticipants
          : onlineParticipants as Set<int>,
    ));
  }

  @override
  $LocalParticipantCopyWith<$Res> get participant {
    if (_value.participant == null) {
      return null;
    }
    return $LocalParticipantCopyWith<$Res>(_value.participant, (value) {
      return _then(_value.copyWith(participant: value));
    });
  }
}

/// @nodoc
abstract class _$EngineStateCopyWith<$Res>
    implements $EngineStateCopyWith<$Res> {
  factory _$EngineStateCopyWith(
          _EngineState value, $Res Function(_EngineState) then) =
      __$EngineStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ConnectionStateType connectionState,
      String channel,
      int activeSpeaker,
      LocalParticipant participant,
      @SetFromListConverter() Set<int> onlineParticipants});

  @override
  $LocalParticipantCopyWith<$Res> get participant;
}

/// @nodoc
class __$EngineStateCopyWithImpl<$Res> extends _$EngineStateCopyWithImpl<$Res>
    implements _$EngineStateCopyWith<$Res> {
  __$EngineStateCopyWithImpl(
      _EngineState _value, $Res Function(_EngineState) _then)
      : super(_value, (v) => _then(v as _EngineState));

  @override
  _EngineState get _value => super._value as _EngineState;

  @override
  $Res call({
    Object connectionState = freezed,
    Object channel = freezed,
    Object activeSpeaker = freezed,
    Object participant = freezed,
    Object onlineParticipants = freezed,
  }) {
    return _then(_EngineState(
      connectionState: connectionState == freezed
          ? _value.connectionState
          : connectionState as ConnectionStateType,
      channel: channel == freezed ? _value.channel : channel as String,
      activeSpeaker: activeSpeaker == freezed
          ? _value.activeSpeaker
          : activeSpeaker as int,
      participant: participant == freezed
          ? _value.participant
          : participant as LocalParticipant,
      onlineParticipants: onlineParticipants == freezed
          ? _value.onlineParticipants
          : onlineParticipants as Set<int>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EngineState implements _EngineState {
  const _$_EngineState(
      {this.connectionState = ConnectionStateType.disconnected,
      this.channel,
      this.activeSpeaker,
      this.participant,
      @SetFromListConverter() this.onlineParticipants})
      : assert(connectionState != null);

  factory _$_EngineState.fromJson(Map<String, dynamic> json) =>
      _$_$_EngineStateFromJson(json);

  @JsonKey(defaultValue: ConnectionStateType.disconnected)
  @override
  final ConnectionStateType connectionState;
  @override
  final String channel;
  @override
  final int activeSpeaker;
  @override
  final LocalParticipant participant;
  @override // Local participant.
  @SetFromListConverter()
  final Set<int> onlineParticipants;

  @override
  String toString() {
    return 'EngineState(connectionState: $connectionState, channel: $channel, activeSpeaker: $activeSpeaker, participant: $participant, onlineParticipants: $onlineParticipants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EngineState &&
            (identical(other.connectionState, connectionState) ||
                const DeepCollectionEquality()
                    .equals(other.connectionState, connectionState)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.activeSpeaker, activeSpeaker) ||
                const DeepCollectionEquality()
                    .equals(other.activeSpeaker, activeSpeaker)) &&
            (identical(other.participant, participant) ||
                const DeepCollectionEquality()
                    .equals(other.participant, participant)) &&
            (identical(other.onlineParticipants, onlineParticipants) ||
                const DeepCollectionEquality()
                    .equals(other.onlineParticipants, onlineParticipants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectionState) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(activeSpeaker) ^
      const DeepCollectionEquality().hash(participant) ^
      const DeepCollectionEquality().hash(onlineParticipants);

  @override
  _$EngineStateCopyWith<_EngineState> get copyWith =>
      __$EngineStateCopyWithImpl<_EngineState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EngineStateToJson(this);
  }
}

abstract class _EngineState implements EngineState {
  const factory _EngineState(
      {ConnectionStateType connectionState,
      String channel,
      int activeSpeaker,
      LocalParticipant participant,
      @SetFromListConverter() Set<int> onlineParticipants}) = _$_EngineState;

  factory _EngineState.fromJson(Map<String, dynamic> json) =
      _$_EngineState.fromJson;

  @override
  ConnectionStateType get connectionState;
  @override
  String get channel;
  @override
  int get activeSpeaker;
  @override
  LocalParticipant get participant;
  @override // Local participant.
  @SetFromListConverter()
  Set<int> get onlineParticipants;
  @override
  _$EngineStateCopyWith<_EngineState> get copyWith;
}

InitializeEngineProps _$InitializeEnginePropsFromJson(
    Map<String, dynamic> json) {
  return _InitializeEngineProps.fromJson(json);
}

/// @nodoc
class _$InitializeEnginePropsTearOff {
  const _$InitializeEnginePropsTearOff();

// ignore: unused_element
  _InitializeEngineProps call(
      {@required String appId,
      AreaCode areaCode = AreaCode.global,
      NotificationProps notificationSettings}) {
    return _InitializeEngineProps(
      appId: appId,
      areaCode: areaCode,
      notificationSettings: notificationSettings,
    );
  }

// ignore: unused_element
  InitializeEngineProps fromJson(Map<String, Object> json) {
    return InitializeEngineProps.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeEngineProps = _$InitializeEnginePropsTearOff();

/// @nodoc
mixin _$InitializeEngineProps {
  String get appId;
  AreaCode get areaCode;
  NotificationProps get notificationSettings;

  Map<String, dynamic> toJson();
  $InitializeEnginePropsCopyWith<InitializeEngineProps> get copyWith;
}

/// @nodoc
abstract class $InitializeEnginePropsCopyWith<$Res> {
  factory $InitializeEnginePropsCopyWith(InitializeEngineProps value,
          $Res Function(InitializeEngineProps) then) =
      _$InitializeEnginePropsCopyWithImpl<$Res>;
  $Res call(
      {String appId,
      AreaCode areaCode,
      NotificationProps notificationSettings});

  $NotificationPropsCopyWith<$Res> get notificationSettings;
}

/// @nodoc
class _$InitializeEnginePropsCopyWithImpl<$Res>
    implements $InitializeEnginePropsCopyWith<$Res> {
  _$InitializeEnginePropsCopyWithImpl(this._value, this._then);

  final InitializeEngineProps _value;
  // ignore: unused_field
  final $Res Function(InitializeEngineProps) _then;

  @override
  $Res call({
    Object appId = freezed,
    Object areaCode = freezed,
    Object notificationSettings = freezed,
  }) {
    return _then(_value.copyWith(
      appId: appId == freezed ? _value.appId : appId as String,
      areaCode: areaCode == freezed ? _value.areaCode : areaCode as AreaCode,
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings as NotificationProps,
    ));
  }

  @override
  $NotificationPropsCopyWith<$Res> get notificationSettings {
    if (_value.notificationSettings == null) {
      return null;
    }
    return $NotificationPropsCopyWith<$Res>(_value.notificationSettings,
        (value) {
      return _then(_value.copyWith(notificationSettings: value));
    });
  }
}

/// @nodoc
abstract class _$InitializeEnginePropsCopyWith<$Res>
    implements $InitializeEnginePropsCopyWith<$Res> {
  factory _$InitializeEnginePropsCopyWith(_InitializeEngineProps value,
          $Res Function(_InitializeEngineProps) then) =
      __$InitializeEnginePropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appId,
      AreaCode areaCode,
      NotificationProps notificationSettings});

  @override
  $NotificationPropsCopyWith<$Res> get notificationSettings;
}

/// @nodoc
class __$InitializeEnginePropsCopyWithImpl<$Res>
    extends _$InitializeEnginePropsCopyWithImpl<$Res>
    implements _$InitializeEnginePropsCopyWith<$Res> {
  __$InitializeEnginePropsCopyWithImpl(_InitializeEngineProps _value,
      $Res Function(_InitializeEngineProps) _then)
      : super(_value, (v) => _then(v as _InitializeEngineProps));

  @override
  _InitializeEngineProps get _value => super._value as _InitializeEngineProps;

  @override
  $Res call({
    Object appId = freezed,
    Object areaCode = freezed,
    Object notificationSettings = freezed,
  }) {
    return _then(_InitializeEngineProps(
      appId: appId == freezed ? _value.appId : appId as String,
      areaCode: areaCode == freezed ? _value.areaCode : areaCode as AreaCode,
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings as NotificationProps,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InitializeEngineProps implements _InitializeEngineProps {
  const _$_InitializeEngineProps(
      {@required this.appId,
      this.areaCode = AreaCode.global,
      this.notificationSettings})
      : assert(appId != null),
        assert(areaCode != null);

  factory _$_InitializeEngineProps.fromJson(Map<String, dynamic> json) =>
      _$_$_InitializeEnginePropsFromJson(json);

  @override
  final String appId;
  @JsonKey(defaultValue: AreaCode.global)
  @override
  final AreaCode areaCode;
  @override
  final NotificationProps notificationSettings;

  @override
  String toString() {
    return 'InitializeEngineProps(appId: $appId, areaCode: $areaCode, notificationSettings: $notificationSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitializeEngineProps &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.areaCode, areaCode) ||
                const DeepCollectionEquality()
                    .equals(other.areaCode, areaCode)) &&
            (identical(other.notificationSettings, notificationSettings) ||
                const DeepCollectionEquality()
                    .equals(other.notificationSettings, notificationSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(areaCode) ^
      const DeepCollectionEquality().hash(notificationSettings);

  @override
  _$InitializeEnginePropsCopyWith<_InitializeEngineProps> get copyWith =>
      __$InitializeEnginePropsCopyWithImpl<_InitializeEngineProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitializeEnginePropsToJson(this);
  }
}

abstract class _InitializeEngineProps implements InitializeEngineProps {
  const factory _InitializeEngineProps(
      {@required String appId,
      AreaCode areaCode,
      NotificationProps notificationSettings}) = _$_InitializeEngineProps;

  factory _InitializeEngineProps.fromJson(Map<String, dynamic> json) =
      _$_InitializeEngineProps.fromJson;

  @override
  String get appId;
  @override
  AreaCode get areaCode;
  @override
  NotificationProps get notificationSettings;
  @override
  _$InitializeEnginePropsCopyWith<_InitializeEngineProps> get copyWith;
}

NotificationProps _$NotificationPropsFromJson(Map<String, dynamic> json) {
  return _NotificationProps.fromJson(json);
}

/// @nodoc
class _$NotificationPropsTearOff {
  const _$NotificationPropsTearOff();

// ignore: unused_element
  _NotificationProps call({String title, String subtitle}) {
    return _NotificationProps(
      title: title,
      subtitle: subtitle,
    );
  }

// ignore: unused_element
  NotificationProps fromJson(Map<String, Object> json) {
    return NotificationProps.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationProps = _$NotificationPropsTearOff();

/// @nodoc
mixin _$NotificationProps {
  String get title;
  String get subtitle;

  Map<String, dynamic> toJson();
  $NotificationPropsCopyWith<NotificationProps> get copyWith;
}

/// @nodoc
abstract class $NotificationPropsCopyWith<$Res> {
  factory $NotificationPropsCopyWith(
          NotificationProps value, $Res Function(NotificationProps) then) =
      _$NotificationPropsCopyWithImpl<$Res>;
  $Res call({String title, String subtitle});
}

/// @nodoc
class _$NotificationPropsCopyWithImpl<$Res>
    implements $NotificationPropsCopyWith<$Res> {
  _$NotificationPropsCopyWithImpl(this._value, this._then);

  final NotificationProps _value;
  // ignore: unused_field
  final $Res Function(NotificationProps) _then;

  @override
  $Res call({
    Object title = freezed,
    Object subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
    ));
  }
}

/// @nodoc
abstract class _$NotificationPropsCopyWith<$Res>
    implements $NotificationPropsCopyWith<$Res> {
  factory _$NotificationPropsCopyWith(
          _NotificationProps value, $Res Function(_NotificationProps) then) =
      __$NotificationPropsCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subtitle});
}

/// @nodoc
class __$NotificationPropsCopyWithImpl<$Res>
    extends _$NotificationPropsCopyWithImpl<$Res>
    implements _$NotificationPropsCopyWith<$Res> {
  __$NotificationPropsCopyWithImpl(
      _NotificationProps _value, $Res Function(_NotificationProps) _then)
      : super(_value, (v) => _then(v as _NotificationProps));

  @override
  _NotificationProps get _value => super._value as _NotificationProps;

  @override
  $Res call({
    Object title = freezed,
    Object subtitle = freezed,
  }) {
    return _then(_NotificationProps(
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationProps implements _NotificationProps {
  const _$_NotificationProps({this.title, this.subtitle});

  factory _$_NotificationProps.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationPropsFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'NotificationProps(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationProps &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle);

  @override
  _$NotificationPropsCopyWith<_NotificationProps> get copyWith =>
      __$NotificationPropsCopyWithImpl<_NotificationProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationPropsToJson(this);
  }
}

abstract class _NotificationProps implements NotificationProps {
  const factory _NotificationProps({String title, String subtitle}) =
      _$_NotificationProps;

  factory _NotificationProps.fromJson(Map<String, dynamic> json) =
      _$_NotificationProps.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  _$NotificationPropsCopyWith<_NotificationProps> get copyWith;
}

JoinChannelProps _$JoinChannelPropsFromJson(Map<String, dynamic> json) {
  return _JoinChannelProps.fromJson(json);
}

/// @nodoc
class _$JoinChannelPropsTearOff {
  const _$JoinChannelPropsTearOff();

// ignore: unused_element
  _JoinChannelProps call(
      {@required String token,
      @required String channelName,
      @required int uid,
      ChannelProfile profile = ChannelProfile.liveBroadcasting,
      ClientRole role = ClientRole.broadcaster}) {
    return _JoinChannelProps(
      token: token,
      channelName: channelName,
      uid: uid,
      profile: profile,
      role: role,
    );
  }

// ignore: unused_element
  JoinChannelProps fromJson(Map<String, Object> json) {
    return JoinChannelProps.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $JoinChannelProps = _$JoinChannelPropsTearOff();

/// @nodoc
mixin _$JoinChannelProps {
  String get token;
  String get channelName;
  int get uid;
  ChannelProfile get profile;
  ClientRole get role;

  Map<String, dynamic> toJson();
  $JoinChannelPropsCopyWith<JoinChannelProps> get copyWith;
}

/// @nodoc
abstract class $JoinChannelPropsCopyWith<$Res> {
  factory $JoinChannelPropsCopyWith(
          JoinChannelProps value, $Res Function(JoinChannelProps) then) =
      _$JoinChannelPropsCopyWithImpl<$Res>;
  $Res call(
      {String token,
      String channelName,
      int uid,
      ChannelProfile profile,
      ClientRole role});
}

/// @nodoc
class _$JoinChannelPropsCopyWithImpl<$Res>
    implements $JoinChannelPropsCopyWith<$Res> {
  _$JoinChannelPropsCopyWithImpl(this._value, this._then);

  final JoinChannelProps _value;
  // ignore: unused_field
  final $Res Function(JoinChannelProps) _then;

  @override
  $Res call({
    Object token = freezed,
    Object channelName = freezed,
    Object uid = freezed,
    Object profile = freezed,
    Object role = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      channelName:
          channelName == freezed ? _value.channelName : channelName as String,
      uid: uid == freezed ? _value.uid : uid as int,
      profile: profile == freezed ? _value.profile : profile as ChannelProfile,
      role: role == freezed ? _value.role : role as ClientRole,
    ));
  }
}

/// @nodoc
abstract class _$JoinChannelPropsCopyWith<$Res>
    implements $JoinChannelPropsCopyWith<$Res> {
  factory _$JoinChannelPropsCopyWith(
          _JoinChannelProps value, $Res Function(_JoinChannelProps) then) =
      __$JoinChannelPropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String channelName,
      int uid,
      ChannelProfile profile,
      ClientRole role});
}

/// @nodoc
class __$JoinChannelPropsCopyWithImpl<$Res>
    extends _$JoinChannelPropsCopyWithImpl<$Res>
    implements _$JoinChannelPropsCopyWith<$Res> {
  __$JoinChannelPropsCopyWithImpl(
      _JoinChannelProps _value, $Res Function(_JoinChannelProps) _then)
      : super(_value, (v) => _then(v as _JoinChannelProps));

  @override
  _JoinChannelProps get _value => super._value as _JoinChannelProps;

  @override
  $Res call({
    Object token = freezed,
    Object channelName = freezed,
    Object uid = freezed,
    Object profile = freezed,
    Object role = freezed,
  }) {
    return _then(_JoinChannelProps(
      token: token == freezed ? _value.token : token as String,
      channelName:
          channelName == freezed ? _value.channelName : channelName as String,
      uid: uid == freezed ? _value.uid : uid as int,
      profile: profile == freezed ? _value.profile : profile as ChannelProfile,
      role: role == freezed ? _value.role : role as ClientRole,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_JoinChannelProps implements _JoinChannelProps {
  const _$_JoinChannelProps(
      {@required this.token,
      @required this.channelName,
      @required this.uid,
      this.profile = ChannelProfile.liveBroadcasting,
      this.role = ClientRole.broadcaster})
      : assert(token != null),
        assert(channelName != null),
        assert(uid != null),
        assert(profile != null),
        assert(role != null);

  factory _$_JoinChannelProps.fromJson(Map<String, dynamic> json) =>
      _$_$_JoinChannelPropsFromJson(json);

  @override
  final String token;
  @override
  final String channelName;
  @override
  final int uid;
  @JsonKey(defaultValue: ChannelProfile.liveBroadcasting)
  @override
  final ChannelProfile profile;
  @JsonKey(defaultValue: ClientRole.broadcaster)
  @override
  final ClientRole role;

  @override
  String toString() {
    return 'JoinChannelProps(token: $token, channelName: $channelName, uid: $uid, profile: $profile, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinChannelProps &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(role);

  @override
  _$JoinChannelPropsCopyWith<_JoinChannelProps> get copyWith =>
      __$JoinChannelPropsCopyWithImpl<_JoinChannelProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JoinChannelPropsToJson(this);
  }
}

abstract class _JoinChannelProps implements JoinChannelProps {
  const factory _JoinChannelProps(
      {@required String token,
      @required String channelName,
      @required int uid,
      ChannelProfile profile,
      ClientRole role}) = _$_JoinChannelProps;

  factory _JoinChannelProps.fromJson(Map<String, dynamic> json) =
      _$_JoinChannelProps.fromJson;

  @override
  String get token;
  @override
  String get channelName;
  @override
  int get uid;
  @override
  ChannelProfile get profile;
  @override
  ClientRole get role;
  @override
  _$JoinChannelPropsCopyWith<_JoinChannelProps> get copyWith;
}

RtcStats _$RtcStatsFromJson(Map<String, dynamic> json) {
  return _RtcStats.fromJson(json);
}

/// @nodoc
class _$RtcStatsTearOff {
  const _$RtcStatsTearOff();

// ignore: unused_element
  _RtcStats call(
      {int totalDuration = 0,
      int txBytes = 0,
      int rxBytes = 0,
      int txAudioBytes = 0,
      int txVideoBytes = 0,
      int rxAudioBytes = 0,
      int rxVideoBytes = 0,
      int txKBitRate = 0,
      int rxKBitRate = 0,
      int txAudioKBitRate = 0,
      int rxAudioKBitRate = 0,
      int txVideoKBitRate = 0,
      int rxVideoKBitRate = 0,
      int users = 0,
      int lastmileDelay = 0,
      int txPacketLossRate = 0,
      int rxPacketLossRate = 0,
      double cpuTotalUsage = 0.0,
      double cpuAppUsage = 0.0,
      int gatewayRtt = 0,
      double memoryAppUsageRatio = 0.0,
      double memoryTotalUsageRatio = 0.0,
      int memoryAppUsageInKbyte = 0}) {
    return _RtcStats(
      totalDuration: totalDuration,
      txBytes: txBytes,
      rxBytes: rxBytes,
      txAudioBytes: txAudioBytes,
      txVideoBytes: txVideoBytes,
      rxAudioBytes: rxAudioBytes,
      rxVideoBytes: rxVideoBytes,
      txKBitRate: txKBitRate,
      rxKBitRate: rxKBitRate,
      txAudioKBitRate: txAudioKBitRate,
      rxAudioKBitRate: rxAudioKBitRate,
      txVideoKBitRate: txVideoKBitRate,
      rxVideoKBitRate: rxVideoKBitRate,
      users: users,
      lastmileDelay: lastmileDelay,
      txPacketLossRate: txPacketLossRate,
      rxPacketLossRate: rxPacketLossRate,
      cpuTotalUsage: cpuTotalUsage,
      cpuAppUsage: cpuAppUsage,
      gatewayRtt: gatewayRtt,
      memoryAppUsageRatio: memoryAppUsageRatio,
      memoryTotalUsageRatio: memoryTotalUsageRatio,
      memoryAppUsageInKbyte: memoryAppUsageInKbyte,
    );
  }

// ignore: unused_element
  RtcStats fromJson(Map<String, Object> json) {
    return RtcStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RtcStats = _$RtcStatsTearOff();

/// @nodoc
mixin _$RtcStats {
  int get totalDuration;
  int get txBytes;
  int get rxBytes;
  int get txAudioBytes;
  int get txVideoBytes;
  int get rxAudioBytes;
  int get rxVideoBytes;
  int get txKBitRate;
  int get rxKBitRate;
  int get txAudioKBitRate;
  int get rxAudioKBitRate;
  int get txVideoKBitRate;
  int get rxVideoKBitRate;
  int get users;
  int get lastmileDelay;
  int get txPacketLossRate;
  int get rxPacketLossRate;
  double get cpuTotalUsage;
  double get cpuAppUsage;
  int get gatewayRtt;
  double get memoryAppUsageRatio;
  double get memoryTotalUsageRatio;
  int get memoryAppUsageInKbyte;

  Map<String, dynamic> toJson();
  $RtcStatsCopyWith<RtcStats> get copyWith;
}

/// @nodoc
abstract class $RtcStatsCopyWith<$Res> {
  factory $RtcStatsCopyWith(RtcStats value, $Res Function(RtcStats) then) =
      _$RtcStatsCopyWithImpl<$Res>;
  $Res call(
      {int totalDuration,
      int txBytes,
      int rxBytes,
      int txAudioBytes,
      int txVideoBytes,
      int rxAudioBytes,
      int rxVideoBytes,
      int txKBitRate,
      int rxKBitRate,
      int txAudioKBitRate,
      int rxAudioKBitRate,
      int txVideoKBitRate,
      int rxVideoKBitRate,
      int users,
      int lastmileDelay,
      int txPacketLossRate,
      int rxPacketLossRate,
      double cpuTotalUsage,
      double cpuAppUsage,
      int gatewayRtt,
      double memoryAppUsageRatio,
      double memoryTotalUsageRatio,
      int memoryAppUsageInKbyte});
}

/// @nodoc
class _$RtcStatsCopyWithImpl<$Res> implements $RtcStatsCopyWith<$Res> {
  _$RtcStatsCopyWithImpl(this._value, this._then);

  final RtcStats _value;
  // ignore: unused_field
  final $Res Function(RtcStats) _then;

  @override
  $Res call({
    Object totalDuration = freezed,
    Object txBytes = freezed,
    Object rxBytes = freezed,
    Object txAudioBytes = freezed,
    Object txVideoBytes = freezed,
    Object rxAudioBytes = freezed,
    Object rxVideoBytes = freezed,
    Object txKBitRate = freezed,
    Object rxKBitRate = freezed,
    Object txAudioKBitRate = freezed,
    Object rxAudioKBitRate = freezed,
    Object txVideoKBitRate = freezed,
    Object rxVideoKBitRate = freezed,
    Object users = freezed,
    Object lastmileDelay = freezed,
    Object txPacketLossRate = freezed,
    Object rxPacketLossRate = freezed,
    Object cpuTotalUsage = freezed,
    Object cpuAppUsage = freezed,
    Object gatewayRtt = freezed,
    Object memoryAppUsageRatio = freezed,
    Object memoryTotalUsageRatio = freezed,
    Object memoryAppUsageInKbyte = freezed,
  }) {
    return _then(_value.copyWith(
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as int,
      txBytes: txBytes == freezed ? _value.txBytes : txBytes as int,
      rxBytes: rxBytes == freezed ? _value.rxBytes : rxBytes as int,
      txAudioBytes:
          txAudioBytes == freezed ? _value.txAudioBytes : txAudioBytes as int,
      txVideoBytes:
          txVideoBytes == freezed ? _value.txVideoBytes : txVideoBytes as int,
      rxAudioBytes:
          rxAudioBytes == freezed ? _value.rxAudioBytes : rxAudioBytes as int,
      rxVideoBytes:
          rxVideoBytes == freezed ? _value.rxVideoBytes : rxVideoBytes as int,
      txKBitRate: txKBitRate == freezed ? _value.txKBitRate : txKBitRate as int,
      rxKBitRate: rxKBitRate == freezed ? _value.rxKBitRate : rxKBitRate as int,
      txAudioKBitRate: txAudioKBitRate == freezed
          ? _value.txAudioKBitRate
          : txAudioKBitRate as int,
      rxAudioKBitRate: rxAudioKBitRate == freezed
          ? _value.rxAudioKBitRate
          : rxAudioKBitRate as int,
      txVideoKBitRate: txVideoKBitRate == freezed
          ? _value.txVideoKBitRate
          : txVideoKBitRate as int,
      rxVideoKBitRate: rxVideoKBitRate == freezed
          ? _value.rxVideoKBitRate
          : rxVideoKBitRate as int,
      users: users == freezed ? _value.users : users as int,
      lastmileDelay: lastmileDelay == freezed
          ? _value.lastmileDelay
          : lastmileDelay as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
      rxPacketLossRate: rxPacketLossRate == freezed
          ? _value.rxPacketLossRate
          : rxPacketLossRate as int,
      cpuTotalUsage: cpuTotalUsage == freezed
          ? _value.cpuTotalUsage
          : cpuTotalUsage as double,
      cpuAppUsage:
          cpuAppUsage == freezed ? _value.cpuAppUsage : cpuAppUsage as double,
      gatewayRtt: gatewayRtt == freezed ? _value.gatewayRtt : gatewayRtt as int,
      memoryAppUsageRatio: memoryAppUsageRatio == freezed
          ? _value.memoryAppUsageRatio
          : memoryAppUsageRatio as double,
      memoryTotalUsageRatio: memoryTotalUsageRatio == freezed
          ? _value.memoryTotalUsageRatio
          : memoryTotalUsageRatio as double,
      memoryAppUsageInKbyte: memoryAppUsageInKbyte == freezed
          ? _value.memoryAppUsageInKbyte
          : memoryAppUsageInKbyte as int,
    ));
  }
}

/// @nodoc
abstract class _$RtcStatsCopyWith<$Res> implements $RtcStatsCopyWith<$Res> {
  factory _$RtcStatsCopyWith(_RtcStats value, $Res Function(_RtcStats) then) =
      __$RtcStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalDuration,
      int txBytes,
      int rxBytes,
      int txAudioBytes,
      int txVideoBytes,
      int rxAudioBytes,
      int rxVideoBytes,
      int txKBitRate,
      int rxKBitRate,
      int txAudioKBitRate,
      int rxAudioKBitRate,
      int txVideoKBitRate,
      int rxVideoKBitRate,
      int users,
      int lastmileDelay,
      int txPacketLossRate,
      int rxPacketLossRate,
      double cpuTotalUsage,
      double cpuAppUsage,
      int gatewayRtt,
      double memoryAppUsageRatio,
      double memoryTotalUsageRatio,
      int memoryAppUsageInKbyte});
}

/// @nodoc
class __$RtcStatsCopyWithImpl<$Res> extends _$RtcStatsCopyWithImpl<$Res>
    implements _$RtcStatsCopyWith<$Res> {
  __$RtcStatsCopyWithImpl(_RtcStats _value, $Res Function(_RtcStats) _then)
      : super(_value, (v) => _then(v as _RtcStats));

  @override
  _RtcStats get _value => super._value as _RtcStats;

  @override
  $Res call({
    Object totalDuration = freezed,
    Object txBytes = freezed,
    Object rxBytes = freezed,
    Object txAudioBytes = freezed,
    Object txVideoBytes = freezed,
    Object rxAudioBytes = freezed,
    Object rxVideoBytes = freezed,
    Object txKBitRate = freezed,
    Object rxKBitRate = freezed,
    Object txAudioKBitRate = freezed,
    Object rxAudioKBitRate = freezed,
    Object txVideoKBitRate = freezed,
    Object rxVideoKBitRate = freezed,
    Object users = freezed,
    Object lastmileDelay = freezed,
    Object txPacketLossRate = freezed,
    Object rxPacketLossRate = freezed,
    Object cpuTotalUsage = freezed,
    Object cpuAppUsage = freezed,
    Object gatewayRtt = freezed,
    Object memoryAppUsageRatio = freezed,
    Object memoryTotalUsageRatio = freezed,
    Object memoryAppUsageInKbyte = freezed,
  }) {
    return _then(_RtcStats(
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as int,
      txBytes: txBytes == freezed ? _value.txBytes : txBytes as int,
      rxBytes: rxBytes == freezed ? _value.rxBytes : rxBytes as int,
      txAudioBytes:
          txAudioBytes == freezed ? _value.txAudioBytes : txAudioBytes as int,
      txVideoBytes:
          txVideoBytes == freezed ? _value.txVideoBytes : txVideoBytes as int,
      rxAudioBytes:
          rxAudioBytes == freezed ? _value.rxAudioBytes : rxAudioBytes as int,
      rxVideoBytes:
          rxVideoBytes == freezed ? _value.rxVideoBytes : rxVideoBytes as int,
      txKBitRate: txKBitRate == freezed ? _value.txKBitRate : txKBitRate as int,
      rxKBitRate: rxKBitRate == freezed ? _value.rxKBitRate : rxKBitRate as int,
      txAudioKBitRate: txAudioKBitRate == freezed
          ? _value.txAudioKBitRate
          : txAudioKBitRate as int,
      rxAudioKBitRate: rxAudioKBitRate == freezed
          ? _value.rxAudioKBitRate
          : rxAudioKBitRate as int,
      txVideoKBitRate: txVideoKBitRate == freezed
          ? _value.txVideoKBitRate
          : txVideoKBitRate as int,
      rxVideoKBitRate: rxVideoKBitRate == freezed
          ? _value.rxVideoKBitRate
          : rxVideoKBitRate as int,
      users: users == freezed ? _value.users : users as int,
      lastmileDelay: lastmileDelay == freezed
          ? _value.lastmileDelay
          : lastmileDelay as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
      rxPacketLossRate: rxPacketLossRate == freezed
          ? _value.rxPacketLossRate
          : rxPacketLossRate as int,
      cpuTotalUsage: cpuTotalUsage == freezed
          ? _value.cpuTotalUsage
          : cpuTotalUsage as double,
      cpuAppUsage:
          cpuAppUsage == freezed ? _value.cpuAppUsage : cpuAppUsage as double,
      gatewayRtt: gatewayRtt == freezed ? _value.gatewayRtt : gatewayRtt as int,
      memoryAppUsageRatio: memoryAppUsageRatio == freezed
          ? _value.memoryAppUsageRatio
          : memoryAppUsageRatio as double,
      memoryTotalUsageRatio: memoryTotalUsageRatio == freezed
          ? _value.memoryTotalUsageRatio
          : memoryTotalUsageRatio as double,
      memoryAppUsageInKbyte: memoryAppUsageInKbyte == freezed
          ? _value.memoryAppUsageInKbyte
          : memoryAppUsageInKbyte as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RtcStats implements _RtcStats {
  const _$_RtcStats(
      {this.totalDuration = 0,
      this.txBytes = 0,
      this.rxBytes = 0,
      this.txAudioBytes = 0,
      this.txVideoBytes = 0,
      this.rxAudioBytes = 0,
      this.rxVideoBytes = 0,
      this.txKBitRate = 0,
      this.rxKBitRate = 0,
      this.txAudioKBitRate = 0,
      this.rxAudioKBitRate = 0,
      this.txVideoKBitRate = 0,
      this.rxVideoKBitRate = 0,
      this.users = 0,
      this.lastmileDelay = 0,
      this.txPacketLossRate = 0,
      this.rxPacketLossRate = 0,
      this.cpuTotalUsage = 0.0,
      this.cpuAppUsage = 0.0,
      this.gatewayRtt = 0,
      this.memoryAppUsageRatio = 0.0,
      this.memoryTotalUsageRatio = 0.0,
      this.memoryAppUsageInKbyte = 0})
      : assert(totalDuration != null),
        assert(txBytes != null),
        assert(rxBytes != null),
        assert(txAudioBytes != null),
        assert(txVideoBytes != null),
        assert(rxAudioBytes != null),
        assert(rxVideoBytes != null),
        assert(txKBitRate != null),
        assert(rxKBitRate != null),
        assert(txAudioKBitRate != null),
        assert(rxAudioKBitRate != null),
        assert(txVideoKBitRate != null),
        assert(rxVideoKBitRate != null),
        assert(users != null),
        assert(lastmileDelay != null),
        assert(txPacketLossRate != null),
        assert(rxPacketLossRate != null),
        assert(cpuTotalUsage != null),
        assert(cpuAppUsage != null),
        assert(gatewayRtt != null),
        assert(memoryAppUsageRatio != null),
        assert(memoryTotalUsageRatio != null),
        assert(memoryAppUsageInKbyte != null);

  factory _$_RtcStats.fromJson(Map<String, dynamic> json) =>
      _$_$_RtcStatsFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int totalDuration;
  @JsonKey(defaultValue: 0)
  @override
  final int txBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int rxBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int txAudioBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int txVideoBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int rxAudioBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int rxVideoBytes;
  @JsonKey(defaultValue: 0)
  @override
  final int txKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int rxKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int txAudioKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int rxAudioKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int txVideoKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int rxVideoKBitRate;
  @JsonKey(defaultValue: 0)
  @override
  final int users;
  @JsonKey(defaultValue: 0)
  @override
  final int lastmileDelay;
  @JsonKey(defaultValue: 0)
  @override
  final int txPacketLossRate;
  @JsonKey(defaultValue: 0)
  @override
  final int rxPacketLossRate;
  @JsonKey(defaultValue: 0.0)
  @override
  final double cpuTotalUsage;
  @JsonKey(defaultValue: 0.0)
  @override
  final double cpuAppUsage;
  @JsonKey(defaultValue: 0)
  @override
  final int gatewayRtt;
  @JsonKey(defaultValue: 0.0)
  @override
  final double memoryAppUsageRatio;
  @JsonKey(defaultValue: 0.0)
  @override
  final double memoryTotalUsageRatio;
  @JsonKey(defaultValue: 0)
  @override
  final int memoryAppUsageInKbyte;

  @override
  String toString() {
    return 'RtcStats(totalDuration: $totalDuration, txBytes: $txBytes, rxBytes: $rxBytes, txAudioBytes: $txAudioBytes, txVideoBytes: $txVideoBytes, rxAudioBytes: $rxAudioBytes, rxVideoBytes: $rxVideoBytes, txKBitRate: $txKBitRate, rxKBitRate: $rxKBitRate, txAudioKBitRate: $txAudioKBitRate, rxAudioKBitRate: $rxAudioKBitRate, txVideoKBitRate: $txVideoKBitRate, rxVideoKBitRate: $rxVideoKBitRate, users: $users, lastmileDelay: $lastmileDelay, txPacketLossRate: $txPacketLossRate, rxPacketLossRate: $rxPacketLossRate, cpuTotalUsage: $cpuTotalUsage, cpuAppUsage: $cpuAppUsage, gatewayRtt: $gatewayRtt, memoryAppUsageRatio: $memoryAppUsageRatio, memoryTotalUsageRatio: $memoryTotalUsageRatio, memoryAppUsageInKbyte: $memoryAppUsageInKbyte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RtcStats &&
            (identical(other.totalDuration, totalDuration) ||
                const DeepCollectionEquality()
                    .equals(other.totalDuration, totalDuration)) &&
            (identical(other.txBytes, txBytes) ||
                const DeepCollectionEquality()
                    .equals(other.txBytes, txBytes)) &&
            (identical(other.rxBytes, rxBytes) ||
                const DeepCollectionEquality()
                    .equals(other.rxBytes, rxBytes)) &&
            (identical(other.txAudioBytes, txAudioBytes) ||
                const DeepCollectionEquality()
                    .equals(other.txAudioBytes, txAudioBytes)) &&
            (identical(other.txVideoBytes, txVideoBytes) ||
                const DeepCollectionEquality()
                    .equals(other.txVideoBytes, txVideoBytes)) &&
            (identical(other.rxAudioBytes, rxAudioBytes) ||
                const DeepCollectionEquality()
                    .equals(other.rxAudioBytes, rxAudioBytes)) &&
            (identical(other.rxVideoBytes, rxVideoBytes) ||
                const DeepCollectionEquality()
                    .equals(other.rxVideoBytes, rxVideoBytes)) &&
            (identical(other.txKBitRate, txKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.txKBitRate, txKBitRate)) &&
            (identical(other.rxKBitRate, rxKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.rxKBitRate, rxKBitRate)) &&
            (identical(other.txAudioKBitRate, txAudioKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.txAudioKBitRate, txAudioKBitRate)) &&
            (identical(other.rxAudioKBitRate, rxAudioKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.rxAudioKBitRate, rxAudioKBitRate)) &&
            (identical(other.txVideoKBitRate, txVideoKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.txVideoKBitRate, txVideoKBitRate)) &&
            (identical(other.rxVideoKBitRate, rxVideoKBitRate) ||
                const DeepCollectionEquality()
                    .equals(other.rxVideoKBitRate, rxVideoKBitRate)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.lastmileDelay, lastmileDelay) ||
                const DeepCollectionEquality()
                    .equals(other.lastmileDelay, lastmileDelay)) &&
            (identical(other.txPacketLossRate, txPacketLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.txPacketLossRate, txPacketLossRate)) &&
            (identical(other.rxPacketLossRate, rxPacketLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.rxPacketLossRate, rxPacketLossRate)) &&
            (identical(other.cpuTotalUsage, cpuTotalUsage) ||
                const DeepCollectionEquality()
                    .equals(other.cpuTotalUsage, cpuTotalUsage)) &&
            (identical(other.cpuAppUsage, cpuAppUsage) ||
                const DeepCollectionEquality()
                    .equals(other.cpuAppUsage, cpuAppUsage)) &&
            (identical(other.gatewayRtt, gatewayRtt) ||
                const DeepCollectionEquality()
                    .equals(other.gatewayRtt, gatewayRtt)) &&
            (identical(other.memoryAppUsageRatio, memoryAppUsageRatio) ||
                const DeepCollectionEquality()
                    .equals(other.memoryAppUsageRatio, memoryAppUsageRatio)) &&
            (identical(other.memoryTotalUsageRatio, memoryTotalUsageRatio) ||
                const DeepCollectionEquality().equals(
                    other.memoryTotalUsageRatio, memoryTotalUsageRatio)) &&
            (identical(other.memoryAppUsageInKbyte, memoryAppUsageInKbyte) || const DeepCollectionEquality().equals(other.memoryAppUsageInKbyte, memoryAppUsageInKbyte)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalDuration) ^
      const DeepCollectionEquality().hash(txBytes) ^
      const DeepCollectionEquality().hash(rxBytes) ^
      const DeepCollectionEquality().hash(txAudioBytes) ^
      const DeepCollectionEquality().hash(txVideoBytes) ^
      const DeepCollectionEquality().hash(rxAudioBytes) ^
      const DeepCollectionEquality().hash(rxVideoBytes) ^
      const DeepCollectionEquality().hash(txKBitRate) ^
      const DeepCollectionEquality().hash(rxKBitRate) ^
      const DeepCollectionEquality().hash(txAudioKBitRate) ^
      const DeepCollectionEquality().hash(rxAudioKBitRate) ^
      const DeepCollectionEquality().hash(txVideoKBitRate) ^
      const DeepCollectionEquality().hash(rxVideoKBitRate) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(lastmileDelay) ^
      const DeepCollectionEquality().hash(txPacketLossRate) ^
      const DeepCollectionEquality().hash(rxPacketLossRate) ^
      const DeepCollectionEquality().hash(cpuTotalUsage) ^
      const DeepCollectionEquality().hash(cpuAppUsage) ^
      const DeepCollectionEquality().hash(gatewayRtt) ^
      const DeepCollectionEquality().hash(memoryAppUsageRatio) ^
      const DeepCollectionEquality().hash(memoryTotalUsageRatio) ^
      const DeepCollectionEquality().hash(memoryAppUsageInKbyte);

  @override
  _$RtcStatsCopyWith<_RtcStats> get copyWith =>
      __$RtcStatsCopyWithImpl<_RtcStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RtcStatsToJson(this);
  }
}

abstract class _RtcStats implements RtcStats {
  const factory _RtcStats(
      {int totalDuration,
      int txBytes,
      int rxBytes,
      int txAudioBytes,
      int txVideoBytes,
      int rxAudioBytes,
      int rxVideoBytes,
      int txKBitRate,
      int rxKBitRate,
      int txAudioKBitRate,
      int rxAudioKBitRate,
      int txVideoKBitRate,
      int rxVideoKBitRate,
      int users,
      int lastmileDelay,
      int txPacketLossRate,
      int rxPacketLossRate,
      double cpuTotalUsage,
      double cpuAppUsage,
      int gatewayRtt,
      double memoryAppUsageRatio,
      double memoryTotalUsageRatio,
      int memoryAppUsageInKbyte}) = _$_RtcStats;

  factory _RtcStats.fromJson(Map<String, dynamic> json) = _$_RtcStats.fromJson;

  @override
  int get totalDuration;
  @override
  int get txBytes;
  @override
  int get rxBytes;
  @override
  int get txAudioBytes;
  @override
  int get txVideoBytes;
  @override
  int get rxAudioBytes;
  @override
  int get rxVideoBytes;
  @override
  int get txKBitRate;
  @override
  int get rxKBitRate;
  @override
  int get txAudioKBitRate;
  @override
  int get rxAudioKBitRate;
  @override
  int get txVideoKBitRate;
  @override
  int get rxVideoKBitRate;
  @override
  int get users;
  @override
  int get lastmileDelay;
  @override
  int get txPacketLossRate;
  @override
  int get rxPacketLossRate;
  @override
  double get cpuTotalUsage;
  @override
  double get cpuAppUsage;
  @override
  int get gatewayRtt;
  @override
  double get memoryAppUsageRatio;
  @override
  double get memoryTotalUsageRatio;
  @override
  int get memoryAppUsageInKbyte;
  @override
  _$RtcStatsCopyWith<_RtcStats> get copyWith;
}

RemoteAudioStats _$RemoteAudioStatsFromJson(Map<String, dynamic> json) {
  return _RemoteAudioStats.fromJson(json);
}

/// @nodoc
class _$RemoteAudioStatsTearOff {
  const _$RemoteAudioStatsTearOff();

// ignore: unused_element
  _RemoteAudioStats call(
      {@required int uid,
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
      @required int qualityChangedReason}) {
    return _RemoteAudioStats(
      uid: uid,
      quality: quality,
      networkTransportDelay: networkTransportDelay,
      jitterBufferDelay: jitterBufferDelay,
      audioLossRate: audioLossRate,
      numChannels: numChannels,
      receivedSampleRate: receivedSampleRate,
      receivedBitrate: receivedBitrate,
      totalFrozenTime: totalFrozenTime,
      frozenRate: frozenRate,
      totalActiveTime: totalActiveTime,
      publishDuration: publishDuration,
      qoeQuality: qoeQuality,
      qualityChangedReason: qualityChangedReason,
    );
  }

// ignore: unused_element
  RemoteAudioStats fromJson(Map<String, Object> json) {
    return RemoteAudioStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoteAudioStats = _$RemoteAudioStatsTearOff();

/// @nodoc
mixin _$RemoteAudioStats {
  int get uid;
  int get quality;
  int get networkTransportDelay;
  int get jitterBufferDelay;
  int get audioLossRate;
  int get numChannels;
  int get receivedSampleRate;
  int get receivedBitrate;
  int get totalFrozenTime;
  int get frozenRate;
  int get totalActiveTime;
  int get publishDuration;
  int get qoeQuality;
  int get qualityChangedReason;

  Map<String, dynamic> toJson();
  $RemoteAudioStatsCopyWith<RemoteAudioStats> get copyWith;
}

/// @nodoc
abstract class $RemoteAudioStatsCopyWith<$Res> {
  factory $RemoteAudioStatsCopyWith(
          RemoteAudioStats value, $Res Function(RemoteAudioStats) then) =
      _$RemoteAudioStatsCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      int quality,
      int networkTransportDelay,
      int jitterBufferDelay,
      int audioLossRate,
      int numChannels,
      int receivedSampleRate,
      int receivedBitrate,
      int totalFrozenTime,
      int frozenRate,
      int totalActiveTime,
      int publishDuration,
      int qoeQuality,
      int qualityChangedReason});
}

/// @nodoc
class _$RemoteAudioStatsCopyWithImpl<$Res>
    implements $RemoteAudioStatsCopyWith<$Res> {
  _$RemoteAudioStatsCopyWithImpl(this._value, this._then);

  final RemoteAudioStats _value;
  // ignore: unused_field
  final $Res Function(RemoteAudioStats) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object quality = freezed,
    Object networkTransportDelay = freezed,
    Object jitterBufferDelay = freezed,
    Object audioLossRate = freezed,
    Object numChannels = freezed,
    Object receivedSampleRate = freezed,
    Object receivedBitrate = freezed,
    Object totalFrozenTime = freezed,
    Object frozenRate = freezed,
    Object totalActiveTime = freezed,
    Object publishDuration = freezed,
    Object qoeQuality = freezed,
    Object qualityChangedReason = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as int,
      quality: quality == freezed ? _value.quality : quality as int,
      networkTransportDelay: networkTransportDelay == freezed
          ? _value.networkTransportDelay
          : networkTransportDelay as int,
      jitterBufferDelay: jitterBufferDelay == freezed
          ? _value.jitterBufferDelay
          : jitterBufferDelay as int,
      audioLossRate: audioLossRate == freezed
          ? _value.audioLossRate
          : audioLossRate as int,
      numChannels:
          numChannels == freezed ? _value.numChannels : numChannels as int,
      receivedSampleRate: receivedSampleRate == freezed
          ? _value.receivedSampleRate
          : receivedSampleRate as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime as int,
      frozenRate: frozenRate == freezed ? _value.frozenRate : frozenRate as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration as int,
      qoeQuality: qoeQuality == freezed ? _value.qoeQuality : qoeQuality as int,
      qualityChangedReason: qualityChangedReason == freezed
          ? _value.qualityChangedReason
          : qualityChangedReason as int,
    ));
  }
}

/// @nodoc
abstract class _$RemoteAudioStatsCopyWith<$Res>
    implements $RemoteAudioStatsCopyWith<$Res> {
  factory _$RemoteAudioStatsCopyWith(
          _RemoteAudioStats value, $Res Function(_RemoteAudioStats) then) =
      __$RemoteAudioStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      int quality,
      int networkTransportDelay,
      int jitterBufferDelay,
      int audioLossRate,
      int numChannels,
      int receivedSampleRate,
      int receivedBitrate,
      int totalFrozenTime,
      int frozenRate,
      int totalActiveTime,
      int publishDuration,
      int qoeQuality,
      int qualityChangedReason});
}

/// @nodoc
class __$RemoteAudioStatsCopyWithImpl<$Res>
    extends _$RemoteAudioStatsCopyWithImpl<$Res>
    implements _$RemoteAudioStatsCopyWith<$Res> {
  __$RemoteAudioStatsCopyWithImpl(
      _RemoteAudioStats _value, $Res Function(_RemoteAudioStats) _then)
      : super(_value, (v) => _then(v as _RemoteAudioStats));

  @override
  _RemoteAudioStats get _value => super._value as _RemoteAudioStats;

  @override
  $Res call({
    Object uid = freezed,
    Object quality = freezed,
    Object networkTransportDelay = freezed,
    Object jitterBufferDelay = freezed,
    Object audioLossRate = freezed,
    Object numChannels = freezed,
    Object receivedSampleRate = freezed,
    Object receivedBitrate = freezed,
    Object totalFrozenTime = freezed,
    Object frozenRate = freezed,
    Object totalActiveTime = freezed,
    Object publishDuration = freezed,
    Object qoeQuality = freezed,
    Object qualityChangedReason = freezed,
  }) {
    return _then(_RemoteAudioStats(
      uid: uid == freezed ? _value.uid : uid as int,
      quality: quality == freezed ? _value.quality : quality as int,
      networkTransportDelay: networkTransportDelay == freezed
          ? _value.networkTransportDelay
          : networkTransportDelay as int,
      jitterBufferDelay: jitterBufferDelay == freezed
          ? _value.jitterBufferDelay
          : jitterBufferDelay as int,
      audioLossRate: audioLossRate == freezed
          ? _value.audioLossRate
          : audioLossRate as int,
      numChannels:
          numChannels == freezed ? _value.numChannels : numChannels as int,
      receivedSampleRate: receivedSampleRate == freezed
          ? _value.receivedSampleRate
          : receivedSampleRate as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime as int,
      frozenRate: frozenRate == freezed ? _value.frozenRate : frozenRate as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration as int,
      qoeQuality: qoeQuality == freezed ? _value.qoeQuality : qoeQuality as int,
      qualityChangedReason: qualityChangedReason == freezed
          ? _value.qualityChangedReason
          : qualityChangedReason as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoteAudioStats implements _RemoteAudioStats {
  const _$_RemoteAudioStats(
      {@required this.uid,
      @required this.quality,
      @required this.networkTransportDelay,
      @required this.jitterBufferDelay,
      @required this.audioLossRate,
      @required this.numChannels,
      @required this.receivedSampleRate,
      @required this.receivedBitrate,
      @required this.totalFrozenTime,
      @required this.frozenRate,
      @required this.totalActiveTime,
      @required this.publishDuration,
      @required this.qoeQuality,
      @required this.qualityChangedReason})
      : assert(uid != null),
        assert(quality != null),
        assert(networkTransportDelay != null),
        assert(jitterBufferDelay != null),
        assert(audioLossRate != null),
        assert(numChannels != null),
        assert(receivedSampleRate != null),
        assert(receivedBitrate != null),
        assert(totalFrozenTime != null),
        assert(frozenRate != null),
        assert(totalActiveTime != null),
        assert(publishDuration != null),
        assert(qoeQuality != null),
        assert(qualityChangedReason != null);

  factory _$_RemoteAudioStats.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoteAudioStatsFromJson(json);

  @override
  final int uid;
  @override
  final int quality;
  @override
  final int networkTransportDelay;
  @override
  final int jitterBufferDelay;
  @override
  final int audioLossRate;
  @override
  final int numChannels;
  @override
  final int receivedSampleRate;
  @override
  final int receivedBitrate;
  @override
  final int totalFrozenTime;
  @override
  final int frozenRate;
  @override
  final int totalActiveTime;
  @override
  final int publishDuration;
  @override
  final int qoeQuality;
  @override
  final int qualityChangedReason;

  @override
  String toString() {
    return 'RemoteAudioStats(uid: $uid, quality: $quality, networkTransportDelay: $networkTransportDelay, jitterBufferDelay: $jitterBufferDelay, audioLossRate: $audioLossRate, numChannels: $numChannels, receivedSampleRate: $receivedSampleRate, receivedBitrate: $receivedBitrate, totalFrozenTime: $totalFrozenTime, frozenRate: $frozenRate, totalActiveTime: $totalActiveTime, publishDuration: $publishDuration, qoeQuality: $qoeQuality, qualityChangedReason: $qualityChangedReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteAudioStats &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality()
                    .equals(other.quality, quality)) &&
            (identical(other.networkTransportDelay, networkTransportDelay) ||
                const DeepCollectionEquality().equals(
                    other.networkTransportDelay, networkTransportDelay)) &&
            (identical(other.jitterBufferDelay, jitterBufferDelay) ||
                const DeepCollectionEquality()
                    .equals(other.jitterBufferDelay, jitterBufferDelay)) &&
            (identical(other.audioLossRate, audioLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.audioLossRate, audioLossRate)) &&
            (identical(other.numChannels, numChannels) ||
                const DeepCollectionEquality()
                    .equals(other.numChannels, numChannels)) &&
            (identical(other.receivedSampleRate, receivedSampleRate) ||
                const DeepCollectionEquality()
                    .equals(other.receivedSampleRate, receivedSampleRate)) &&
            (identical(other.receivedBitrate, receivedBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.receivedBitrate, receivedBitrate)) &&
            (identical(other.totalFrozenTime, totalFrozenTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalFrozenTime, totalFrozenTime)) &&
            (identical(other.frozenRate, frozenRate) ||
                const DeepCollectionEquality()
                    .equals(other.frozenRate, frozenRate)) &&
            (identical(other.totalActiveTime, totalActiveTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalActiveTime, totalActiveTime)) &&
            (identical(other.publishDuration, publishDuration) ||
                const DeepCollectionEquality()
                    .equals(other.publishDuration, publishDuration)) &&
            (identical(other.qoeQuality, qoeQuality) ||
                const DeepCollectionEquality()
                    .equals(other.qoeQuality, qoeQuality)) &&
            (identical(other.qualityChangedReason, qualityChangedReason) ||
                const DeepCollectionEquality()
                    .equals(other.qualityChangedReason, qualityChangedReason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(quality) ^
      const DeepCollectionEquality().hash(networkTransportDelay) ^
      const DeepCollectionEquality().hash(jitterBufferDelay) ^
      const DeepCollectionEquality().hash(audioLossRate) ^
      const DeepCollectionEquality().hash(numChannels) ^
      const DeepCollectionEquality().hash(receivedSampleRate) ^
      const DeepCollectionEquality().hash(receivedBitrate) ^
      const DeepCollectionEquality().hash(totalFrozenTime) ^
      const DeepCollectionEquality().hash(frozenRate) ^
      const DeepCollectionEquality().hash(totalActiveTime) ^
      const DeepCollectionEquality().hash(publishDuration) ^
      const DeepCollectionEquality().hash(qoeQuality) ^
      const DeepCollectionEquality().hash(qualityChangedReason);

  @override
  _$RemoteAudioStatsCopyWith<_RemoteAudioStats> get copyWith =>
      __$RemoteAudioStatsCopyWithImpl<_RemoteAudioStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoteAudioStatsToJson(this);
  }
}

abstract class _RemoteAudioStats implements RemoteAudioStats {
  const factory _RemoteAudioStats(
      {@required int uid,
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
      @required int qualityChangedReason}) = _$_RemoteAudioStats;

  factory _RemoteAudioStats.fromJson(Map<String, dynamic> json) =
      _$_RemoteAudioStats.fromJson;

  @override
  int get uid;
  @override
  int get quality;
  @override
  int get networkTransportDelay;
  @override
  int get jitterBufferDelay;
  @override
  int get audioLossRate;
  @override
  int get numChannels;
  @override
  int get receivedSampleRate;
  @override
  int get receivedBitrate;
  @override
  int get totalFrozenTime;
  @override
  int get frozenRate;
  @override
  int get totalActiveTime;
  @override
  int get publishDuration;
  @override
  int get qoeQuality;
  @override
  int get qualityChangedReason;
  @override
  _$RemoteAudioStatsCopyWith<_RemoteAudioStats> get copyWith;
}

RemoteVideoStats _$RemoteVideoStatsFromJson(Map<String, dynamic> json) {
  return _RemoteVideoStats.fromJson(json);
}

/// @nodoc
class _$RemoteVideoStatsTearOff {
  const _$RemoteVideoStatsTearOff();

// ignore: unused_element
  _RemoteVideoStats call(
      {@required int uid,
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
      @required int publishDuration}) {
    return _RemoteVideoStats(
      uid: uid,
      width: width,
      height: height,
      receivedBitrate: receivedBitrate,
      decoderOutputFrameRate: decoderOutputFrameRate,
      rendererOutputFrameRate: rendererOutputFrameRate,
      packetLossRate: packetLossRate,
      rxStreamType: rxStreamType,
      totalFrozenTime: totalFrozenTime,
      frozenRate: frozenRate,
      totalActiveTime: totalActiveTime,
      publishDuration: publishDuration,
    );
  }

// ignore: unused_element
  RemoteVideoStats fromJson(Map<String, Object> json) {
    return RemoteVideoStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoteVideoStats = _$RemoteVideoStatsTearOff();

/// @nodoc
mixin _$RemoteVideoStats {
  int get uid;
  int get width;
  int get height;
  int get receivedBitrate;
  int get decoderOutputFrameRate;
  int get rendererOutputFrameRate;
  int get packetLossRate;
  int get rxStreamType;
  int get totalFrozenTime;
  int get frozenRate;
  int get totalActiveTime;
  int get publishDuration;

  Map<String, dynamic> toJson();
  $RemoteVideoStatsCopyWith<RemoteVideoStats> get copyWith;
}

/// @nodoc
abstract class $RemoteVideoStatsCopyWith<$Res> {
  factory $RemoteVideoStatsCopyWith(
          RemoteVideoStats value, $Res Function(RemoteVideoStats) then) =
      _$RemoteVideoStatsCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      int width,
      int height,
      int receivedBitrate,
      int decoderOutputFrameRate,
      int rendererOutputFrameRate,
      int packetLossRate,
      int rxStreamType,
      int totalFrozenTime,
      int frozenRate,
      int totalActiveTime,
      int publishDuration});
}

/// @nodoc
class _$RemoteVideoStatsCopyWithImpl<$Res>
    implements $RemoteVideoStatsCopyWith<$Res> {
  _$RemoteVideoStatsCopyWithImpl(this._value, this._then);

  final RemoteVideoStats _value;
  // ignore: unused_field
  final $Res Function(RemoteVideoStats) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object width = freezed,
    Object height = freezed,
    Object receivedBitrate = freezed,
    Object decoderOutputFrameRate = freezed,
    Object rendererOutputFrameRate = freezed,
    Object packetLossRate = freezed,
    Object rxStreamType = freezed,
    Object totalFrozenTime = freezed,
    Object frozenRate = freezed,
    Object totalActiveTime = freezed,
    Object publishDuration = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as int,
      width: width == freezed ? _value.width : width as int,
      height: height == freezed ? _value.height : height as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate as int,
      decoderOutputFrameRate: decoderOutputFrameRate == freezed
          ? _value.decoderOutputFrameRate
          : decoderOutputFrameRate as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate as int,
      packetLossRate: packetLossRate == freezed
          ? _value.packetLossRate
          : packetLossRate as int,
      rxStreamType:
          rxStreamType == freezed ? _value.rxStreamType : rxStreamType as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime as int,
      frozenRate: frozenRate == freezed ? _value.frozenRate : frozenRate as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration as int,
    ));
  }
}

/// @nodoc
abstract class _$RemoteVideoStatsCopyWith<$Res>
    implements $RemoteVideoStatsCopyWith<$Res> {
  factory _$RemoteVideoStatsCopyWith(
          _RemoteVideoStats value, $Res Function(_RemoteVideoStats) then) =
      __$RemoteVideoStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      int width,
      int height,
      int receivedBitrate,
      int decoderOutputFrameRate,
      int rendererOutputFrameRate,
      int packetLossRate,
      int rxStreamType,
      int totalFrozenTime,
      int frozenRate,
      int totalActiveTime,
      int publishDuration});
}

/// @nodoc
class __$RemoteVideoStatsCopyWithImpl<$Res>
    extends _$RemoteVideoStatsCopyWithImpl<$Res>
    implements _$RemoteVideoStatsCopyWith<$Res> {
  __$RemoteVideoStatsCopyWithImpl(
      _RemoteVideoStats _value, $Res Function(_RemoteVideoStats) _then)
      : super(_value, (v) => _then(v as _RemoteVideoStats));

  @override
  _RemoteVideoStats get _value => super._value as _RemoteVideoStats;

  @override
  $Res call({
    Object uid = freezed,
    Object width = freezed,
    Object height = freezed,
    Object receivedBitrate = freezed,
    Object decoderOutputFrameRate = freezed,
    Object rendererOutputFrameRate = freezed,
    Object packetLossRate = freezed,
    Object rxStreamType = freezed,
    Object totalFrozenTime = freezed,
    Object frozenRate = freezed,
    Object totalActiveTime = freezed,
    Object publishDuration = freezed,
  }) {
    return _then(_RemoteVideoStats(
      uid: uid == freezed ? _value.uid : uid as int,
      width: width == freezed ? _value.width : width as int,
      height: height == freezed ? _value.height : height as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate as int,
      decoderOutputFrameRate: decoderOutputFrameRate == freezed
          ? _value.decoderOutputFrameRate
          : decoderOutputFrameRate as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate as int,
      packetLossRate: packetLossRate == freezed
          ? _value.packetLossRate
          : packetLossRate as int,
      rxStreamType:
          rxStreamType == freezed ? _value.rxStreamType : rxStreamType as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime as int,
      frozenRate: frozenRate == freezed ? _value.frozenRate : frozenRate as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoteVideoStats implements _RemoteVideoStats {
  const _$_RemoteVideoStats(
      {@required this.uid,
      @required this.width,
      @required this.height,
      @required this.receivedBitrate,
      @required this.decoderOutputFrameRate,
      @required this.rendererOutputFrameRate,
      @required this.packetLossRate,
      @required this.rxStreamType,
      @required this.totalFrozenTime,
      @required this.frozenRate,
      @required this.totalActiveTime,
      @required this.publishDuration})
      : assert(uid != null),
        assert(width != null),
        assert(height != null),
        assert(receivedBitrate != null),
        assert(decoderOutputFrameRate != null),
        assert(rendererOutputFrameRate != null),
        assert(packetLossRate != null),
        assert(rxStreamType != null),
        assert(totalFrozenTime != null),
        assert(frozenRate != null),
        assert(totalActiveTime != null),
        assert(publishDuration != null);

  factory _$_RemoteVideoStats.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoteVideoStatsFromJson(json);

  @override
  final int uid;
  @override
  final int width;
  @override
  final int height;
  @override
  final int receivedBitrate;
  @override
  final int decoderOutputFrameRate;
  @override
  final int rendererOutputFrameRate;
  @override
  final int packetLossRate;
  @override
  final int rxStreamType;
  @override
  final int totalFrozenTime;
  @override
  final int frozenRate;
  @override
  final int totalActiveTime;
  @override
  final int publishDuration;

  @override
  String toString() {
    return 'RemoteVideoStats(uid: $uid, width: $width, height: $height, receivedBitrate: $receivedBitrate, decoderOutputFrameRate: $decoderOutputFrameRate, rendererOutputFrameRate: $rendererOutputFrameRate, packetLossRate: $packetLossRate, rxStreamType: $rxStreamType, totalFrozenTime: $totalFrozenTime, frozenRate: $frozenRate, totalActiveTime: $totalActiveTime, publishDuration: $publishDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteVideoStats &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.receivedBitrate, receivedBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.receivedBitrate, receivedBitrate)) &&
            (identical(other.decoderOutputFrameRate, decoderOutputFrameRate) ||
                const DeepCollectionEquality().equals(
                    other.decoderOutputFrameRate, decoderOutputFrameRate)) &&
            (identical(
                    other.rendererOutputFrameRate, rendererOutputFrameRate) ||
                const DeepCollectionEquality().equals(
                    other.rendererOutputFrameRate, rendererOutputFrameRate)) &&
            (identical(other.packetLossRate, packetLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.packetLossRate, packetLossRate)) &&
            (identical(other.rxStreamType, rxStreamType) ||
                const DeepCollectionEquality()
                    .equals(other.rxStreamType, rxStreamType)) &&
            (identical(other.totalFrozenTime, totalFrozenTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalFrozenTime, totalFrozenTime)) &&
            (identical(other.frozenRate, frozenRate) ||
                const DeepCollectionEquality()
                    .equals(other.frozenRate, frozenRate)) &&
            (identical(other.totalActiveTime, totalActiveTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalActiveTime, totalActiveTime)) &&
            (identical(other.publishDuration, publishDuration) ||
                const DeepCollectionEquality()
                    .equals(other.publishDuration, publishDuration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(receivedBitrate) ^
      const DeepCollectionEquality().hash(decoderOutputFrameRate) ^
      const DeepCollectionEquality().hash(rendererOutputFrameRate) ^
      const DeepCollectionEquality().hash(packetLossRate) ^
      const DeepCollectionEquality().hash(rxStreamType) ^
      const DeepCollectionEquality().hash(totalFrozenTime) ^
      const DeepCollectionEquality().hash(frozenRate) ^
      const DeepCollectionEquality().hash(totalActiveTime) ^
      const DeepCollectionEquality().hash(publishDuration);

  @override
  _$RemoteVideoStatsCopyWith<_RemoteVideoStats> get copyWith =>
      __$RemoteVideoStatsCopyWithImpl<_RemoteVideoStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoteVideoStatsToJson(this);
  }
}

abstract class _RemoteVideoStats implements RemoteVideoStats {
  const factory _RemoteVideoStats(
      {@required int uid,
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
      @required int publishDuration}) = _$_RemoteVideoStats;

  factory _RemoteVideoStats.fromJson(Map<String, dynamic> json) =
      _$_RemoteVideoStats.fromJson;

  @override
  int get uid;
  @override
  int get width;
  @override
  int get height;
  @override
  int get receivedBitrate;
  @override
  int get decoderOutputFrameRate;
  @override
  int get rendererOutputFrameRate;
  @override
  int get packetLossRate;
  @override
  int get rxStreamType;
  @override
  int get totalFrozenTime;
  @override
  int get frozenRate;
  @override
  int get totalActiveTime;
  @override
  int get publishDuration;
  @override
  _$RemoteVideoStatsCopyWith<_RemoteVideoStats> get copyWith;
}

LocalAudioStats _$LocalAudioStatsFromJson(Map<String, dynamic> json) {
  return _LocalAudioStats.fromJson(json);
}

/// @nodoc
class _$LocalAudioStatsTearOff {
  const _$LocalAudioStatsTearOff();

// ignore: unused_element
  _LocalAudioStats call(
      {@required int numChannels,
      @required int sentSampleRate,
      @required int sentBitrate,
      @required int txPacketLossRate}) {
    return _LocalAudioStats(
      numChannels: numChannels,
      sentSampleRate: sentSampleRate,
      sentBitrate: sentBitrate,
      txPacketLossRate: txPacketLossRate,
    );
  }

// ignore: unused_element
  LocalAudioStats fromJson(Map<String, Object> json) {
    return LocalAudioStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalAudioStats = _$LocalAudioStatsTearOff();

/// @nodoc
mixin _$LocalAudioStats {
  int get numChannels;
  int get sentSampleRate;
  int get sentBitrate;
  int get txPacketLossRate;

  Map<String, dynamic> toJson();
  $LocalAudioStatsCopyWith<LocalAudioStats> get copyWith;
}

/// @nodoc
abstract class $LocalAudioStatsCopyWith<$Res> {
  factory $LocalAudioStatsCopyWith(
          LocalAudioStats value, $Res Function(LocalAudioStats) then) =
      _$LocalAudioStatsCopyWithImpl<$Res>;
  $Res call(
      {int numChannels,
      int sentSampleRate,
      int sentBitrate,
      int txPacketLossRate});
}

/// @nodoc
class _$LocalAudioStatsCopyWithImpl<$Res>
    implements $LocalAudioStatsCopyWith<$Res> {
  _$LocalAudioStatsCopyWithImpl(this._value, this._then);

  final LocalAudioStats _value;
  // ignore: unused_field
  final $Res Function(LocalAudioStats) _then;

  @override
  $Res call({
    Object numChannels = freezed,
    Object sentSampleRate = freezed,
    Object sentBitrate = freezed,
    Object txPacketLossRate = freezed,
  }) {
    return _then(_value.copyWith(
      numChannels:
          numChannels == freezed ? _value.numChannels : numChannels as int,
      sentSampleRate: sentSampleRate == freezed
          ? _value.sentSampleRate
          : sentSampleRate as int,
      sentBitrate:
          sentBitrate == freezed ? _value.sentBitrate : sentBitrate as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
    ));
  }
}

/// @nodoc
abstract class _$LocalAudioStatsCopyWith<$Res>
    implements $LocalAudioStatsCopyWith<$Res> {
  factory _$LocalAudioStatsCopyWith(
          _LocalAudioStats value, $Res Function(_LocalAudioStats) then) =
      __$LocalAudioStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numChannels,
      int sentSampleRate,
      int sentBitrate,
      int txPacketLossRate});
}

/// @nodoc
class __$LocalAudioStatsCopyWithImpl<$Res>
    extends _$LocalAudioStatsCopyWithImpl<$Res>
    implements _$LocalAudioStatsCopyWith<$Res> {
  __$LocalAudioStatsCopyWithImpl(
      _LocalAudioStats _value, $Res Function(_LocalAudioStats) _then)
      : super(_value, (v) => _then(v as _LocalAudioStats));

  @override
  _LocalAudioStats get _value => super._value as _LocalAudioStats;

  @override
  $Res call({
    Object numChannels = freezed,
    Object sentSampleRate = freezed,
    Object sentBitrate = freezed,
    Object txPacketLossRate = freezed,
  }) {
    return _then(_LocalAudioStats(
      numChannels:
          numChannels == freezed ? _value.numChannels : numChannels as int,
      sentSampleRate: sentSampleRate == freezed
          ? _value.sentSampleRate
          : sentSampleRate as int,
      sentBitrate:
          sentBitrate == freezed ? _value.sentBitrate : sentBitrate as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalAudioStats implements _LocalAudioStats {
  const _$_LocalAudioStats(
      {@required this.numChannels,
      @required this.sentSampleRate,
      @required this.sentBitrate,
      @required this.txPacketLossRate})
      : assert(numChannels != null),
        assert(sentSampleRate != null),
        assert(sentBitrate != null),
        assert(txPacketLossRate != null);

  factory _$_LocalAudioStats.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalAudioStatsFromJson(json);

  @override
  final int numChannels;
  @override
  final int sentSampleRate;
  @override
  final int sentBitrate;
  @override
  final int txPacketLossRate;

  @override
  String toString() {
    return 'LocalAudioStats(numChannels: $numChannels, sentSampleRate: $sentSampleRate, sentBitrate: $sentBitrate, txPacketLossRate: $txPacketLossRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalAudioStats &&
            (identical(other.numChannels, numChannels) ||
                const DeepCollectionEquality()
                    .equals(other.numChannels, numChannels)) &&
            (identical(other.sentSampleRate, sentSampleRate) ||
                const DeepCollectionEquality()
                    .equals(other.sentSampleRate, sentSampleRate)) &&
            (identical(other.sentBitrate, sentBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.sentBitrate, sentBitrate)) &&
            (identical(other.txPacketLossRate, txPacketLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.txPacketLossRate, txPacketLossRate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numChannels) ^
      const DeepCollectionEquality().hash(sentSampleRate) ^
      const DeepCollectionEquality().hash(sentBitrate) ^
      const DeepCollectionEquality().hash(txPacketLossRate);

  @override
  _$LocalAudioStatsCopyWith<_LocalAudioStats> get copyWith =>
      __$LocalAudioStatsCopyWithImpl<_LocalAudioStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalAudioStatsToJson(this);
  }
}

abstract class _LocalAudioStats implements LocalAudioStats {
  const factory _LocalAudioStats(
      {@required int numChannels,
      @required int sentSampleRate,
      @required int sentBitrate,
      @required int txPacketLossRate}) = _$_LocalAudioStats;

  factory _LocalAudioStats.fromJson(Map<String, dynamic> json) =
      _$_LocalAudioStats.fromJson;

  @override
  int get numChannels;
  @override
  int get sentSampleRate;
  @override
  int get sentBitrate;
  @override
  int get txPacketLossRate;
  @override
  _$LocalAudioStatsCopyWith<_LocalAudioStats> get copyWith;
}

LocalVideoStats _$LocalVideoStatsFromJson(Map<String, dynamic> json) {
  return _LocalVideoStats.fromJson(json);
}

/// @nodoc
class _$LocalVideoStatsTearOff {
  const _$LocalVideoStatsTearOff();

// ignore: unused_element
  _LocalVideoStats call(
      {@required int sentBitrate,
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
      @required int captureBrightnessLevel}) {
    return _LocalVideoStats(
      sentBitrate: sentBitrate,
      sentFrameRate: sentFrameRate,
      encoderOutputFrameRate: encoderOutputFrameRate,
      rendererOutputFrameRate: rendererOutputFrameRate,
      targetBitrate: targetBitrate,
      targetFrameRate: targetFrameRate,
      qualityAdaptIndication: qualityAdaptIndication,
      encodedBitrate: encodedBitrate,
      encodedFrameWidth: encodedFrameWidth,
      encodedFrameHeight: encodedFrameHeight,
      encodedFrameCount: encodedFrameCount,
      codecType: codecType,
      txPacketLossRate: txPacketLossRate,
      captureFrameRate: captureFrameRate,
      captureBrightnessLevel: captureBrightnessLevel,
    );
  }

// ignore: unused_element
  LocalVideoStats fromJson(Map<String, Object> json) {
    return LocalVideoStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalVideoStats = _$LocalVideoStatsTearOff();

/// @nodoc
mixin _$LocalVideoStats {
  int get sentBitrate;
  int get sentFrameRate;
  int get encoderOutputFrameRate;
  int get rendererOutputFrameRate;
  int get targetBitrate;
  int get targetFrameRate;
  int get qualityAdaptIndication;
  int get encodedBitrate;
  int get encodedFrameWidth;
  int get encodedFrameHeight;
  int get encodedFrameCount;
  int get codecType;
  int get txPacketLossRate;
  int get captureFrameRate;
  int get captureBrightnessLevel;

  Map<String, dynamic> toJson();
  $LocalVideoStatsCopyWith<LocalVideoStats> get copyWith;
}

/// @nodoc
abstract class $LocalVideoStatsCopyWith<$Res> {
  factory $LocalVideoStatsCopyWith(
          LocalVideoStats value, $Res Function(LocalVideoStats) then) =
      _$LocalVideoStatsCopyWithImpl<$Res>;
  $Res call(
      {int sentBitrate,
      int sentFrameRate,
      int encoderOutputFrameRate,
      int rendererOutputFrameRate,
      int targetBitrate,
      int targetFrameRate,
      int qualityAdaptIndication,
      int encodedBitrate,
      int encodedFrameWidth,
      int encodedFrameHeight,
      int encodedFrameCount,
      int codecType,
      int txPacketLossRate,
      int captureFrameRate,
      int captureBrightnessLevel});
}

/// @nodoc
class _$LocalVideoStatsCopyWithImpl<$Res>
    implements $LocalVideoStatsCopyWith<$Res> {
  _$LocalVideoStatsCopyWithImpl(this._value, this._then);

  final LocalVideoStats _value;
  // ignore: unused_field
  final $Res Function(LocalVideoStats) _then;

  @override
  $Res call({
    Object sentBitrate = freezed,
    Object sentFrameRate = freezed,
    Object encoderOutputFrameRate = freezed,
    Object rendererOutputFrameRate = freezed,
    Object targetBitrate = freezed,
    Object targetFrameRate = freezed,
    Object qualityAdaptIndication = freezed,
    Object encodedBitrate = freezed,
    Object encodedFrameWidth = freezed,
    Object encodedFrameHeight = freezed,
    Object encodedFrameCount = freezed,
    Object codecType = freezed,
    Object txPacketLossRate = freezed,
    Object captureFrameRate = freezed,
    Object captureBrightnessLevel = freezed,
  }) {
    return _then(_value.copyWith(
      sentBitrate:
          sentBitrate == freezed ? _value.sentBitrate : sentBitrate as int,
      sentFrameRate: sentFrameRate == freezed
          ? _value.sentFrameRate
          : sentFrameRate as int,
      encoderOutputFrameRate: encoderOutputFrameRate == freezed
          ? _value.encoderOutputFrameRate
          : encoderOutputFrameRate as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate as int,
      targetBitrate: targetBitrate == freezed
          ? _value.targetBitrate
          : targetBitrate as int,
      targetFrameRate: targetFrameRate == freezed
          ? _value.targetFrameRate
          : targetFrameRate as int,
      qualityAdaptIndication: qualityAdaptIndication == freezed
          ? _value.qualityAdaptIndication
          : qualityAdaptIndication as int,
      encodedBitrate: encodedBitrate == freezed
          ? _value.encodedBitrate
          : encodedBitrate as int,
      encodedFrameWidth: encodedFrameWidth == freezed
          ? _value.encodedFrameWidth
          : encodedFrameWidth as int,
      encodedFrameHeight: encodedFrameHeight == freezed
          ? _value.encodedFrameHeight
          : encodedFrameHeight as int,
      encodedFrameCount: encodedFrameCount == freezed
          ? _value.encodedFrameCount
          : encodedFrameCount as int,
      codecType: codecType == freezed ? _value.codecType : codecType as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
      captureFrameRate: captureFrameRate == freezed
          ? _value.captureFrameRate
          : captureFrameRate as int,
      captureBrightnessLevel: captureBrightnessLevel == freezed
          ? _value.captureBrightnessLevel
          : captureBrightnessLevel as int,
    ));
  }
}

/// @nodoc
abstract class _$LocalVideoStatsCopyWith<$Res>
    implements $LocalVideoStatsCopyWith<$Res> {
  factory _$LocalVideoStatsCopyWith(
          _LocalVideoStats value, $Res Function(_LocalVideoStats) then) =
      __$LocalVideoStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int sentBitrate,
      int sentFrameRate,
      int encoderOutputFrameRate,
      int rendererOutputFrameRate,
      int targetBitrate,
      int targetFrameRate,
      int qualityAdaptIndication,
      int encodedBitrate,
      int encodedFrameWidth,
      int encodedFrameHeight,
      int encodedFrameCount,
      int codecType,
      int txPacketLossRate,
      int captureFrameRate,
      int captureBrightnessLevel});
}

/// @nodoc
class __$LocalVideoStatsCopyWithImpl<$Res>
    extends _$LocalVideoStatsCopyWithImpl<$Res>
    implements _$LocalVideoStatsCopyWith<$Res> {
  __$LocalVideoStatsCopyWithImpl(
      _LocalVideoStats _value, $Res Function(_LocalVideoStats) _then)
      : super(_value, (v) => _then(v as _LocalVideoStats));

  @override
  _LocalVideoStats get _value => super._value as _LocalVideoStats;

  @override
  $Res call({
    Object sentBitrate = freezed,
    Object sentFrameRate = freezed,
    Object encoderOutputFrameRate = freezed,
    Object rendererOutputFrameRate = freezed,
    Object targetBitrate = freezed,
    Object targetFrameRate = freezed,
    Object qualityAdaptIndication = freezed,
    Object encodedBitrate = freezed,
    Object encodedFrameWidth = freezed,
    Object encodedFrameHeight = freezed,
    Object encodedFrameCount = freezed,
    Object codecType = freezed,
    Object txPacketLossRate = freezed,
    Object captureFrameRate = freezed,
    Object captureBrightnessLevel = freezed,
  }) {
    return _then(_LocalVideoStats(
      sentBitrate:
          sentBitrate == freezed ? _value.sentBitrate : sentBitrate as int,
      sentFrameRate: sentFrameRate == freezed
          ? _value.sentFrameRate
          : sentFrameRate as int,
      encoderOutputFrameRate: encoderOutputFrameRate == freezed
          ? _value.encoderOutputFrameRate
          : encoderOutputFrameRate as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate as int,
      targetBitrate: targetBitrate == freezed
          ? _value.targetBitrate
          : targetBitrate as int,
      targetFrameRate: targetFrameRate == freezed
          ? _value.targetFrameRate
          : targetFrameRate as int,
      qualityAdaptIndication: qualityAdaptIndication == freezed
          ? _value.qualityAdaptIndication
          : qualityAdaptIndication as int,
      encodedBitrate: encodedBitrate == freezed
          ? _value.encodedBitrate
          : encodedBitrate as int,
      encodedFrameWidth: encodedFrameWidth == freezed
          ? _value.encodedFrameWidth
          : encodedFrameWidth as int,
      encodedFrameHeight: encodedFrameHeight == freezed
          ? _value.encodedFrameHeight
          : encodedFrameHeight as int,
      encodedFrameCount: encodedFrameCount == freezed
          ? _value.encodedFrameCount
          : encodedFrameCount as int,
      codecType: codecType == freezed ? _value.codecType : codecType as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate as int,
      captureFrameRate: captureFrameRate == freezed
          ? _value.captureFrameRate
          : captureFrameRate as int,
      captureBrightnessLevel: captureBrightnessLevel == freezed
          ? _value.captureBrightnessLevel
          : captureBrightnessLevel as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalVideoStats implements _LocalVideoStats {
  const _$_LocalVideoStats(
      {@required this.sentBitrate,
      @required this.sentFrameRate,
      @required this.encoderOutputFrameRate,
      @required this.rendererOutputFrameRate,
      @required this.targetBitrate,
      @required this.targetFrameRate,
      @required this.qualityAdaptIndication,
      @required this.encodedBitrate,
      @required this.encodedFrameWidth,
      @required this.encodedFrameHeight,
      @required this.encodedFrameCount,
      @required this.codecType,
      @required this.txPacketLossRate,
      @required this.captureFrameRate,
      @required this.captureBrightnessLevel})
      : assert(sentBitrate != null),
        assert(sentFrameRate != null),
        assert(encoderOutputFrameRate != null),
        assert(rendererOutputFrameRate != null),
        assert(targetBitrate != null),
        assert(targetFrameRate != null),
        assert(qualityAdaptIndication != null),
        assert(encodedBitrate != null),
        assert(encodedFrameWidth != null),
        assert(encodedFrameHeight != null),
        assert(encodedFrameCount != null),
        assert(codecType != null),
        assert(txPacketLossRate != null),
        assert(captureFrameRate != null),
        assert(captureBrightnessLevel != null);

  factory _$_LocalVideoStats.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalVideoStatsFromJson(json);

  @override
  final int sentBitrate;
  @override
  final int sentFrameRate;
  @override
  final int encoderOutputFrameRate;
  @override
  final int rendererOutputFrameRate;
  @override
  final int targetBitrate;
  @override
  final int targetFrameRate;
  @override
  final int qualityAdaptIndication;
  @override
  final int encodedBitrate;
  @override
  final int encodedFrameWidth;
  @override
  final int encodedFrameHeight;
  @override
  final int encodedFrameCount;
  @override
  final int codecType;
  @override
  final int txPacketLossRate;
  @override
  final int captureFrameRate;
  @override
  final int captureBrightnessLevel;

  @override
  String toString() {
    return 'LocalVideoStats(sentBitrate: $sentBitrate, sentFrameRate: $sentFrameRate, encoderOutputFrameRate: $encoderOutputFrameRate, rendererOutputFrameRate: $rendererOutputFrameRate, targetBitrate: $targetBitrate, targetFrameRate: $targetFrameRate, qualityAdaptIndication: $qualityAdaptIndication, encodedBitrate: $encodedBitrate, encodedFrameWidth: $encodedFrameWidth, encodedFrameHeight: $encodedFrameHeight, encodedFrameCount: $encodedFrameCount, codecType: $codecType, txPacketLossRate: $txPacketLossRate, captureFrameRate: $captureFrameRate, captureBrightnessLevel: $captureBrightnessLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalVideoStats &&
            (identical(other.sentBitrate, sentBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.sentBitrate, sentBitrate)) &&
            (identical(other.sentFrameRate, sentFrameRate) ||
                const DeepCollectionEquality()
                    .equals(other.sentFrameRate, sentFrameRate)) &&
            (identical(other.encoderOutputFrameRate, encoderOutputFrameRate) ||
                const DeepCollectionEquality().equals(
                    other.encoderOutputFrameRate, encoderOutputFrameRate)) &&
            (identical(
                    other.rendererOutputFrameRate, rendererOutputFrameRate) ||
                const DeepCollectionEquality().equals(
                    other.rendererOutputFrameRate, rendererOutputFrameRate)) &&
            (identical(other.targetBitrate, targetBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.targetBitrate, targetBitrate)) &&
            (identical(other.targetFrameRate, targetFrameRate) ||
                const DeepCollectionEquality()
                    .equals(other.targetFrameRate, targetFrameRate)) &&
            (identical(other.qualityAdaptIndication, qualityAdaptIndication) ||
                const DeepCollectionEquality().equals(
                    other.qualityAdaptIndication, qualityAdaptIndication)) &&
            (identical(other.encodedBitrate, encodedBitrate) ||
                const DeepCollectionEquality()
                    .equals(other.encodedBitrate, encodedBitrate)) &&
            (identical(other.encodedFrameWidth, encodedFrameWidth) ||
                const DeepCollectionEquality()
                    .equals(other.encodedFrameWidth, encodedFrameWidth)) &&
            (identical(other.encodedFrameHeight, encodedFrameHeight) ||
                const DeepCollectionEquality()
                    .equals(other.encodedFrameHeight, encodedFrameHeight)) &&
            (identical(other.encodedFrameCount, encodedFrameCount) ||
                const DeepCollectionEquality()
                    .equals(other.encodedFrameCount, encodedFrameCount)) &&
            (identical(other.codecType, codecType) ||
                const DeepCollectionEquality()
                    .equals(other.codecType, codecType)) &&
            (identical(other.txPacketLossRate, txPacketLossRate) ||
                const DeepCollectionEquality()
                    .equals(other.txPacketLossRate, txPacketLossRate)) &&
            (identical(other.captureFrameRate, captureFrameRate) ||
                const DeepCollectionEquality()
                    .equals(other.captureFrameRate, captureFrameRate)) &&
            (identical(other.captureBrightnessLevel, captureBrightnessLevel) ||
                const DeepCollectionEquality().equals(
                    other.captureBrightnessLevel, captureBrightnessLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentBitrate) ^
      const DeepCollectionEquality().hash(sentFrameRate) ^
      const DeepCollectionEquality().hash(encoderOutputFrameRate) ^
      const DeepCollectionEquality().hash(rendererOutputFrameRate) ^
      const DeepCollectionEquality().hash(targetBitrate) ^
      const DeepCollectionEquality().hash(targetFrameRate) ^
      const DeepCollectionEquality().hash(qualityAdaptIndication) ^
      const DeepCollectionEquality().hash(encodedBitrate) ^
      const DeepCollectionEquality().hash(encodedFrameWidth) ^
      const DeepCollectionEquality().hash(encodedFrameHeight) ^
      const DeepCollectionEquality().hash(encodedFrameCount) ^
      const DeepCollectionEquality().hash(codecType) ^
      const DeepCollectionEquality().hash(txPacketLossRate) ^
      const DeepCollectionEquality().hash(captureFrameRate) ^
      const DeepCollectionEquality().hash(captureBrightnessLevel);

  @override
  _$LocalVideoStatsCopyWith<_LocalVideoStats> get copyWith =>
      __$LocalVideoStatsCopyWithImpl<_LocalVideoStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalVideoStatsToJson(this);
  }
}

abstract class _LocalVideoStats implements LocalVideoStats {
  const factory _LocalVideoStats(
      {@required int sentBitrate,
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
      @required int captureBrightnessLevel}) = _$_LocalVideoStats;

  factory _LocalVideoStats.fromJson(Map<String, dynamic> json) =
      _$_LocalVideoStats.fromJson;

  @override
  int get sentBitrate;
  @override
  int get sentFrameRate;
  @override
  int get encoderOutputFrameRate;
  @override
  int get rendererOutputFrameRate;
  @override
  int get targetBitrate;
  @override
  int get targetFrameRate;
  @override
  int get qualityAdaptIndication;
  @override
  int get encodedBitrate;
  @override
  int get encodedFrameWidth;
  @override
  int get encodedFrameHeight;
  @override
  int get encodedFrameCount;
  @override
  int get codecType;
  @override
  int get txPacketLossRate;
  @override
  int get captureFrameRate;
  @override
  int get captureBrightnessLevel;
  @override
  _$LocalVideoStatsCopyWith<_LocalVideoStats> get copyWith;
}

AudioVolumeInfo _$AudioVolumeInfoFromJson(Map<String, dynamic> json) {
  return _AudioVolumeInfo.fromJson(json);
}

/// @nodoc
class _$AudioVolumeInfoTearOff {
  const _$AudioVolumeInfoTearOff();

// ignore: unused_element
  _AudioVolumeInfo call(
      {@required int uid,
      @required int volume,
      @required int vad,
      @required String channelId}) {
    return _AudioVolumeInfo(
      uid: uid,
      volume: volume,
      vad: vad,
      channelId: channelId,
    );
  }

// ignore: unused_element
  AudioVolumeInfo fromJson(Map<String, Object> json) {
    return AudioVolumeInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AudioVolumeInfo = _$AudioVolumeInfoTearOff();

/// @nodoc
mixin _$AudioVolumeInfo {
  int get uid;
  int get volume;
  int get vad;
  String get channelId;

  Map<String, dynamic> toJson();
  $AudioVolumeInfoCopyWith<AudioVolumeInfo> get copyWith;
}

/// @nodoc
abstract class $AudioVolumeInfoCopyWith<$Res> {
  factory $AudioVolumeInfoCopyWith(
          AudioVolumeInfo value, $Res Function(AudioVolumeInfo) then) =
      _$AudioVolumeInfoCopyWithImpl<$Res>;
  $Res call({int uid, int volume, int vad, String channelId});
}

/// @nodoc
class _$AudioVolumeInfoCopyWithImpl<$Res>
    implements $AudioVolumeInfoCopyWith<$Res> {
  _$AudioVolumeInfoCopyWithImpl(this._value, this._then);

  final AudioVolumeInfo _value;
  // ignore: unused_field
  final $Res Function(AudioVolumeInfo) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object volume = freezed,
    Object vad = freezed,
    Object channelId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as int,
      volume: volume == freezed ? _value.volume : volume as int,
      vad: vad == freezed ? _value.vad : vad as int,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
    ));
  }
}

/// @nodoc
abstract class _$AudioVolumeInfoCopyWith<$Res>
    implements $AudioVolumeInfoCopyWith<$Res> {
  factory _$AudioVolumeInfoCopyWith(
          _AudioVolumeInfo value, $Res Function(_AudioVolumeInfo) then) =
      __$AudioVolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call({int uid, int volume, int vad, String channelId});
}

/// @nodoc
class __$AudioVolumeInfoCopyWithImpl<$Res>
    extends _$AudioVolumeInfoCopyWithImpl<$Res>
    implements _$AudioVolumeInfoCopyWith<$Res> {
  __$AudioVolumeInfoCopyWithImpl(
      _AudioVolumeInfo _value, $Res Function(_AudioVolumeInfo) _then)
      : super(_value, (v) => _then(v as _AudioVolumeInfo));

  @override
  _AudioVolumeInfo get _value => super._value as _AudioVolumeInfo;

  @override
  $Res call({
    Object uid = freezed,
    Object volume = freezed,
    Object vad = freezed,
    Object channelId = freezed,
  }) {
    return _then(_AudioVolumeInfo(
      uid: uid == freezed ? _value.uid : uid as int,
      volume: volume == freezed ? _value.volume : volume as int,
      vad: vad == freezed ? _value.vad : vad as int,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioVolumeInfo implements _AudioVolumeInfo {
  const _$_AudioVolumeInfo(
      {@required this.uid,
      @required this.volume,
      @required this.vad,
      @required this.channelId})
      : assert(uid != null),
        assert(volume != null),
        assert(vad != null),
        assert(channelId != null);

  factory _$_AudioVolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioVolumeInfoFromJson(json);

  @override
  final int uid;
  @override
  final int volume;
  @override
  final int vad;
  @override
  final String channelId;

  @override
  String toString() {
    return 'AudioVolumeInfo(uid: $uid, volume: $volume, vad: $vad, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioVolumeInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.vad, vad) ||
                const DeepCollectionEquality().equals(other.vad, vad)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(vad) ^
      const DeepCollectionEquality().hash(channelId);

  @override
  _$AudioVolumeInfoCopyWith<_AudioVolumeInfo> get copyWith =>
      __$AudioVolumeInfoCopyWithImpl<_AudioVolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioVolumeInfoToJson(this);
  }
}

abstract class _AudioVolumeInfo implements AudioVolumeInfo {
  const factory _AudioVolumeInfo(
      {@required int uid,
      @required int volume,
      @required int vad,
      @required String channelId}) = _$_AudioVolumeInfo;

  factory _AudioVolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_AudioVolumeInfo.fromJson;

  @override
  int get uid;
  @override
  int get volume;
  @override
  int get vad;
  @override
  String get channelId;
  @override
  _$AudioVolumeInfoCopyWith<_AudioVolumeInfo> get copyWith;
}

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
class _$ParticipantTearOff {
  const _$ParticipantTearOff();

// ignore: unused_element
  _Participant call(
      {@required int uid,
      AudioRemoteState audioState = AudioRemoteState.stopped,
      VideoRemoteState videoState = VideoRemoteState.stopped,
      RemoteAudioStats audioStats,
      RemoteVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames = false}) {
    return _Participant(
      uid: uid,
      audioState: audioState,
      videoState: videoState,
      audioStats: audioStats,
      videoStats: videoStats,
      volumeInfo: volumeInfo,
      hasFrames: hasFrames,
    );
  }

// ignore: unused_element
  Participant fromJson(Map<String, Object> json) {
    return Participant.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Participant = _$ParticipantTearOff();

/// @nodoc
mixin _$Participant {
  int get uid;
  AudioRemoteState get audioState;
  VideoRemoteState get videoState;
  RemoteAudioStats get audioStats;
  RemoteVideoStats get videoStats;
  AudioVolumeInfo get volumeInfo;
  bool get hasFrames;

  Map<String, dynamic> toJson();
  $ParticipantCopyWith<Participant> get copyWith;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      AudioRemoteState audioState,
      VideoRemoteState videoState,
      RemoteAudioStats audioStats,
      RemoteVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames});

  $RemoteAudioStatsCopyWith<$Res> get audioStats;
  $RemoteVideoStatsCopyWith<$Res> get videoStats;
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  final Participant _value;
  // ignore: unused_field
  final $Res Function(Participant) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object audioState = freezed,
    Object videoState = freezed,
    Object audioStats = freezed,
    Object videoStats = freezed,
    Object volumeInfo = freezed,
    Object hasFrames = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState as AudioRemoteState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState as VideoRemoteState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats as RemoteAudioStats,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats as RemoteVideoStats,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo as AudioVolumeInfo,
      hasFrames: hasFrames == freezed ? _value.hasFrames : hasFrames as bool,
    ));
  }

  @override
  $RemoteAudioStatsCopyWith<$Res> get audioStats {
    if (_value.audioStats == null) {
      return null;
    }
    return $RemoteAudioStatsCopyWith<$Res>(_value.audioStats, (value) {
      return _then(_value.copyWith(audioStats: value));
    });
  }

  @override
  $RemoteVideoStatsCopyWith<$Res> get videoStats {
    if (_value.videoStats == null) {
      return null;
    }
    return $RemoteVideoStatsCopyWith<$Res>(_value.videoStats, (value) {
      return _then(_value.copyWith(videoStats: value));
    });
  }

  @override
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }
    return $AudioVolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$ParticipantCopyWith(
          _Participant value, $Res Function(_Participant) then) =
      __$ParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      AudioRemoteState audioState,
      VideoRemoteState videoState,
      RemoteAudioStats audioStats,
      RemoteVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames});

  @override
  $RemoteAudioStatsCopyWith<$Res> get audioStats;
  @override
  $RemoteVideoStatsCopyWith<$Res> get videoStats;
  @override
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class __$ParticipantCopyWithImpl<$Res> extends _$ParticipantCopyWithImpl<$Res>
    implements _$ParticipantCopyWith<$Res> {
  __$ParticipantCopyWithImpl(
      _Participant _value, $Res Function(_Participant) _then)
      : super(_value, (v) => _then(v as _Participant));

  @override
  _Participant get _value => super._value as _Participant;

  @override
  $Res call({
    Object uid = freezed,
    Object audioState = freezed,
    Object videoState = freezed,
    Object audioStats = freezed,
    Object videoStats = freezed,
    Object volumeInfo = freezed,
    Object hasFrames = freezed,
  }) {
    return _then(_Participant(
      uid: uid == freezed ? _value.uid : uid as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState as AudioRemoteState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState as VideoRemoteState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats as RemoteAudioStats,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats as RemoteVideoStats,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo as AudioVolumeInfo,
      hasFrames: hasFrames == freezed ? _value.hasFrames : hasFrames as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Participant implements _Participant {
  const _$_Participant(
      {@required this.uid,
      this.audioState = AudioRemoteState.stopped,
      this.videoState = VideoRemoteState.stopped,
      this.audioStats,
      this.videoStats,
      this.volumeInfo,
      this.hasFrames = false})
      : assert(uid != null),
        assert(audioState != null),
        assert(videoState != null),
        assert(hasFrames != null);

  factory _$_Participant.fromJson(Map<String, dynamic> json) =>
      _$_$_ParticipantFromJson(json);

  @override
  final int uid;
  @JsonKey(defaultValue: AudioRemoteState.stopped)
  @override
  final AudioRemoteState audioState;
  @JsonKey(defaultValue: VideoRemoteState.stopped)
  @override
  final VideoRemoteState videoState;
  @override
  final RemoteAudioStats audioStats;
  @override
  final RemoteVideoStats videoStats;
  @override
  final AudioVolumeInfo volumeInfo;
  @JsonKey(defaultValue: false)
  @override
  final bool hasFrames;

  @override
  String toString() {
    return 'Participant(uid: $uid, audioState: $audioState, videoState: $videoState, audioStats: $audioStats, videoStats: $videoStats, volumeInfo: $volumeInfo, hasFrames: $hasFrames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Participant &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.audioState, audioState) ||
                const DeepCollectionEquality()
                    .equals(other.audioState, audioState)) &&
            (identical(other.videoState, videoState) ||
                const DeepCollectionEquality()
                    .equals(other.videoState, videoState)) &&
            (identical(other.audioStats, audioStats) ||
                const DeepCollectionEquality()
                    .equals(other.audioStats, audioStats)) &&
            (identical(other.videoStats, videoStats) ||
                const DeepCollectionEquality()
                    .equals(other.videoStats, videoStats)) &&
            (identical(other.volumeInfo, volumeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.volumeInfo, volumeInfo)) &&
            (identical(other.hasFrames, hasFrames) ||
                const DeepCollectionEquality()
                    .equals(other.hasFrames, hasFrames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(audioState) ^
      const DeepCollectionEquality().hash(videoState) ^
      const DeepCollectionEquality().hash(audioStats) ^
      const DeepCollectionEquality().hash(videoStats) ^
      const DeepCollectionEquality().hash(volumeInfo) ^
      const DeepCollectionEquality().hash(hasFrames);

  @override
  _$ParticipantCopyWith<_Participant> get copyWith =>
      __$ParticipantCopyWithImpl<_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParticipantToJson(this);
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {@required int uid,
      AudioRemoteState audioState,
      VideoRemoteState videoState,
      RemoteAudioStats audioStats,
      RemoteVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames}) = _$_Participant;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$_Participant.fromJson;

  @override
  int get uid;
  @override
  AudioRemoteState get audioState;
  @override
  VideoRemoteState get videoState;
  @override
  RemoteAudioStats get audioStats;
  @override
  RemoteVideoStats get videoStats;
  @override
  AudioVolumeInfo get volumeInfo;
  @override
  bool get hasFrames;
  @override
  _$ParticipantCopyWith<_Participant> get copyWith;
}

LocalParticipant _$LocalParticipantFromJson(Map<String, dynamic> json) {
  return _LocalParticipant.fromJson(json);
}

/// @nodoc
class _$LocalParticipantTearOff {
  const _$LocalParticipantTearOff();

// ignore: unused_element
  _LocalParticipant call(
      {int uid,
      AudioLocalState audioState = AudioLocalState.stopped,
      VideoLocalState videoState = VideoLocalState.stopped,
      LocalAudioStats audioStats,
      LocalVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames = false}) {
    return _LocalParticipant(
      uid: uid,
      audioState: audioState,
      videoState: videoState,
      audioStats: audioStats,
      videoStats: videoStats,
      volumeInfo: volumeInfo,
      hasFrames: hasFrames,
    );
  }

// ignore: unused_element
  LocalParticipant fromJson(Map<String, Object> json) {
    return LocalParticipant.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalParticipant = _$LocalParticipantTearOff();

/// @nodoc
mixin _$LocalParticipant {
  int get uid;
  AudioLocalState get audioState;
  VideoLocalState get videoState;
  LocalAudioStats get audioStats;
  LocalVideoStats get videoStats;
  AudioVolumeInfo get volumeInfo;
  bool get hasFrames;

  Map<String, dynamic> toJson();
  $LocalParticipantCopyWith<LocalParticipant> get copyWith;
}

/// @nodoc
abstract class $LocalParticipantCopyWith<$Res> {
  factory $LocalParticipantCopyWith(
          LocalParticipant value, $Res Function(LocalParticipant) then) =
      _$LocalParticipantCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      AudioLocalState audioState,
      VideoLocalState videoState,
      LocalAudioStats audioStats,
      LocalVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames});

  $LocalAudioStatsCopyWith<$Res> get audioStats;
  $LocalVideoStatsCopyWith<$Res> get videoStats;
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class _$LocalParticipantCopyWithImpl<$Res>
    implements $LocalParticipantCopyWith<$Res> {
  _$LocalParticipantCopyWithImpl(this._value, this._then);

  final LocalParticipant _value;
  // ignore: unused_field
  final $Res Function(LocalParticipant) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object audioState = freezed,
    Object videoState = freezed,
    Object audioStats = freezed,
    Object videoStats = freezed,
    Object volumeInfo = freezed,
    Object hasFrames = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState as AudioLocalState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState as VideoLocalState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats as LocalAudioStats,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats as LocalVideoStats,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo as AudioVolumeInfo,
      hasFrames: hasFrames == freezed ? _value.hasFrames : hasFrames as bool,
    ));
  }

  @override
  $LocalAudioStatsCopyWith<$Res> get audioStats {
    if (_value.audioStats == null) {
      return null;
    }
    return $LocalAudioStatsCopyWith<$Res>(_value.audioStats, (value) {
      return _then(_value.copyWith(audioStats: value));
    });
  }

  @override
  $LocalVideoStatsCopyWith<$Res> get videoStats {
    if (_value.videoStats == null) {
      return null;
    }
    return $LocalVideoStatsCopyWith<$Res>(_value.videoStats, (value) {
      return _then(_value.copyWith(videoStats: value));
    });
  }

  @override
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }
    return $AudioVolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$LocalParticipantCopyWith<$Res>
    implements $LocalParticipantCopyWith<$Res> {
  factory _$LocalParticipantCopyWith(
          _LocalParticipant value, $Res Function(_LocalParticipant) then) =
      __$LocalParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      AudioLocalState audioState,
      VideoLocalState videoState,
      LocalAudioStats audioStats,
      LocalVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames});

  @override
  $LocalAudioStatsCopyWith<$Res> get audioStats;
  @override
  $LocalVideoStatsCopyWith<$Res> get videoStats;
  @override
  $AudioVolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class __$LocalParticipantCopyWithImpl<$Res>
    extends _$LocalParticipantCopyWithImpl<$Res>
    implements _$LocalParticipantCopyWith<$Res> {
  __$LocalParticipantCopyWithImpl(
      _LocalParticipant _value, $Res Function(_LocalParticipant) _then)
      : super(_value, (v) => _then(v as _LocalParticipant));

  @override
  _LocalParticipant get _value => super._value as _LocalParticipant;

  @override
  $Res call({
    Object uid = freezed,
    Object audioState = freezed,
    Object videoState = freezed,
    Object audioStats = freezed,
    Object videoStats = freezed,
    Object volumeInfo = freezed,
    Object hasFrames = freezed,
  }) {
    return _then(_LocalParticipant(
      uid: uid == freezed ? _value.uid : uid as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState as AudioLocalState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState as VideoLocalState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats as LocalAudioStats,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats as LocalVideoStats,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo as AudioVolumeInfo,
      hasFrames: hasFrames == freezed ? _value.hasFrames : hasFrames as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalParticipant implements _LocalParticipant {
  const _$_LocalParticipant(
      {this.uid,
      this.audioState = AudioLocalState.stopped,
      this.videoState = VideoLocalState.stopped,
      this.audioStats,
      this.videoStats,
      this.volumeInfo,
      this.hasFrames = false})
      : assert(audioState != null),
        assert(videoState != null),
        assert(hasFrames != null);

  factory _$_LocalParticipant.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalParticipantFromJson(json);

  @override
  final int uid;
  @JsonKey(defaultValue: AudioLocalState.stopped)
  @override
  final AudioLocalState audioState;
  @JsonKey(defaultValue: VideoLocalState.stopped)
  @override
  final VideoLocalState videoState;
  @override
  final LocalAudioStats audioStats;
  @override
  final LocalVideoStats videoStats;
  @override
  final AudioVolumeInfo volumeInfo;
  @JsonKey(defaultValue: false)
  @override
  final bool hasFrames;

  @override
  String toString() {
    return 'LocalParticipant(uid: $uid, audioState: $audioState, videoState: $videoState, audioStats: $audioStats, videoStats: $videoStats, volumeInfo: $volumeInfo, hasFrames: $hasFrames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalParticipant &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.audioState, audioState) ||
                const DeepCollectionEquality()
                    .equals(other.audioState, audioState)) &&
            (identical(other.videoState, videoState) ||
                const DeepCollectionEquality()
                    .equals(other.videoState, videoState)) &&
            (identical(other.audioStats, audioStats) ||
                const DeepCollectionEquality()
                    .equals(other.audioStats, audioStats)) &&
            (identical(other.videoStats, videoStats) ||
                const DeepCollectionEquality()
                    .equals(other.videoStats, videoStats)) &&
            (identical(other.volumeInfo, volumeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.volumeInfo, volumeInfo)) &&
            (identical(other.hasFrames, hasFrames) ||
                const DeepCollectionEquality()
                    .equals(other.hasFrames, hasFrames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(audioState) ^
      const DeepCollectionEquality().hash(videoState) ^
      const DeepCollectionEquality().hash(audioStats) ^
      const DeepCollectionEquality().hash(videoStats) ^
      const DeepCollectionEquality().hash(volumeInfo) ^
      const DeepCollectionEquality().hash(hasFrames);

  @override
  _$LocalParticipantCopyWith<_LocalParticipant> get copyWith =>
      __$LocalParticipantCopyWithImpl<_LocalParticipant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalParticipantToJson(this);
  }
}

abstract class _LocalParticipant implements LocalParticipant {
  const factory _LocalParticipant(
      {int uid,
      AudioLocalState audioState,
      VideoLocalState videoState,
      LocalAudioStats audioStats,
      LocalVideoStats videoStats,
      AudioVolumeInfo volumeInfo,
      bool hasFrames}) = _$_LocalParticipant;

  factory _LocalParticipant.fromJson(Map<String, dynamic> json) =
      _$_LocalParticipant.fromJson;

  @override
  int get uid;
  @override
  AudioLocalState get audioState;
  @override
  VideoLocalState get videoState;
  @override
  LocalAudioStats get audioStats;
  @override
  LocalVideoStats get videoStats;
  @override
  AudioVolumeInfo get volumeInfo;
  @override
  bool get hasFrames;
  @override
  _$LocalParticipantCopyWith<_LocalParticipant> get copyWith;
}
