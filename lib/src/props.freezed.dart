// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EngineState _$EngineStateFromJson(Map<String, dynamic> json) {
  return _EngineState.fromJson(json);
}

/// @nodoc
mixin _$EngineState {
  ConnectionStateType get connectionState => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;
  int? get activeSpeaker => throw _privateConstructorUsedError;
  LocalParticipant? get participant =>
      throw _privateConstructorUsedError; // Local participant.
  @SetFromListConverter()
  Set<int> get onlineParticipants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineStateCopyWith<EngineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineStateCopyWith<$Res> {
  factory $EngineStateCopyWith(
          EngineState value, $Res Function(EngineState) then) =
      _$EngineStateCopyWithImpl<$Res>;
  $Res call(
      {ConnectionStateType connectionState,
      String? channel,
      int? activeSpeaker,
      LocalParticipant? participant,
      @SetFromListConverter() Set<int> onlineParticipants});

  $LocalParticipantCopyWith<$Res>? get participant;
}

/// @nodoc
class _$EngineStateCopyWithImpl<$Res> implements $EngineStateCopyWith<$Res> {
  _$EngineStateCopyWithImpl(this._value, this._then);

  final EngineState _value;
  // ignore: unused_field
  final $Res Function(EngineState) _then;

  @override
  $Res call({
    Object? connectionState = freezed,
    Object? channel = freezed,
    Object? activeSpeaker = freezed,
    Object? participant = freezed,
    Object? onlineParticipants = freezed,
  }) {
    return _then(_value.copyWith(
      connectionState: connectionState == freezed
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as ConnectionStateType,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSpeaker: activeSpeaker == freezed
          ? _value.activeSpeaker
          : activeSpeaker // ignore: cast_nullable_to_non_nullable
              as int?,
      participant: participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as LocalParticipant?,
      onlineParticipants: onlineParticipants == freezed
          ? _value.onlineParticipants
          : onlineParticipants // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }

  @override
  $LocalParticipantCopyWith<$Res>? get participant {
    if (_value.participant == null) {
      return null;
    }

    return $LocalParticipantCopyWith<$Res>(_value.participant!, (value) {
      return _then(_value.copyWith(participant: value));
    });
  }
}

/// @nodoc
abstract class _$$_EngineStateCopyWith<$Res>
    implements $EngineStateCopyWith<$Res> {
  factory _$$_EngineStateCopyWith(
          _$_EngineState value, $Res Function(_$_EngineState) then) =
      __$$_EngineStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ConnectionStateType connectionState,
      String? channel,
      int? activeSpeaker,
      LocalParticipant? participant,
      @SetFromListConverter() Set<int> onlineParticipants});

  @override
  $LocalParticipantCopyWith<$Res>? get participant;
}

/// @nodoc
class __$$_EngineStateCopyWithImpl<$Res> extends _$EngineStateCopyWithImpl<$Res>
    implements _$$_EngineStateCopyWith<$Res> {
  __$$_EngineStateCopyWithImpl(
      _$_EngineState _value, $Res Function(_$_EngineState) _then)
      : super(_value, (v) => _then(v as _$_EngineState));

  @override
  _$_EngineState get _value => super._value as _$_EngineState;

  @override
  $Res call({
    Object? connectionState = freezed,
    Object? channel = freezed,
    Object? activeSpeaker = freezed,
    Object? participant = freezed,
    Object? onlineParticipants = freezed,
  }) {
    return _then(_$_EngineState(
      connectionState: connectionState == freezed
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as ConnectionStateType,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSpeaker: activeSpeaker == freezed
          ? _value.activeSpeaker
          : activeSpeaker // ignore: cast_nullable_to_non_nullable
              as int?,
      participant: participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as LocalParticipant?,
      onlineParticipants: onlineParticipants == freezed
          ? _value._onlineParticipants
          : onlineParticipants // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EngineState implements _EngineState {
  const _$_EngineState(
      {this.connectionState = ConnectionStateType.disconnected,
      this.channel,
      this.activeSpeaker,
      this.participant,
      @SetFromListConverter()
          final Set<int> onlineParticipants = const <int>{}})
      : _onlineParticipants = onlineParticipants;

  factory _$_EngineState.fromJson(Map<String, dynamic> json) =>
      _$$_EngineStateFromJson(json);

  @override
  @JsonKey()
  final ConnectionStateType connectionState;
  @override
  final String? channel;
  @override
  final int? activeSpeaker;
  @override
  final LocalParticipant? participant;
// Local participant.
  final Set<int> _onlineParticipants;
// Local participant.
  @override
  @JsonKey()
  @SetFromListConverter()
  Set<int> get onlineParticipants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_onlineParticipants);
  }

  @override
  String toString() {
    return 'EngineState(connectionState: $connectionState, channel: $channel, activeSpeaker: $activeSpeaker, participant: $participant, onlineParticipants: $onlineParticipants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EngineState &&
            const DeepCollectionEquality()
                .equals(other.connectionState, connectionState) &&
            const DeepCollectionEquality().equals(other.channel, channel) &&
            const DeepCollectionEquality()
                .equals(other.activeSpeaker, activeSpeaker) &&
            const DeepCollectionEquality()
                .equals(other.participant, participant) &&
            const DeepCollectionEquality()
                .equals(other._onlineParticipants, _onlineParticipants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(connectionState),
      const DeepCollectionEquality().hash(channel),
      const DeepCollectionEquality().hash(activeSpeaker),
      const DeepCollectionEquality().hash(participant),
      const DeepCollectionEquality().hash(_onlineParticipants));

  @JsonKey(ignore: true)
  @override
  _$$_EngineStateCopyWith<_$_EngineState> get copyWith =>
      __$$_EngineStateCopyWithImpl<_$_EngineState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngineStateToJson(this);
  }
}

abstract class _EngineState implements EngineState {
  const factory _EngineState(
          {final ConnectionStateType connectionState,
          final String? channel,
          final int? activeSpeaker,
          final LocalParticipant? participant,
          @SetFromListConverter() final Set<int> onlineParticipants}) =
      _$_EngineState;

  factory _EngineState.fromJson(Map<String, dynamic> json) =
      _$_EngineState.fromJson;

  @override
  ConnectionStateType get connectionState => throw _privateConstructorUsedError;
  @override
  String? get channel => throw _privateConstructorUsedError;
  @override
  int? get activeSpeaker => throw _privateConstructorUsedError;
  @override
  LocalParticipant? get participant => throw _privateConstructorUsedError;
  @override // Local participant.
  @SetFromListConverter()
  Set<int> get onlineParticipants => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EngineStateCopyWith<_$_EngineState> get copyWith =>
      throw _privateConstructorUsedError;
}

InitializeEngineProps _$InitializeEnginePropsFromJson(
    Map<String, dynamic> json) {
  return _InitializeEngineProps.fromJson(json);
}

/// @nodoc
mixin _$InitializeEngineProps {
  String get appId => throw _privateConstructorUsedError;
  AreaCode get areaCode => throw _privateConstructorUsedError;
  NotificationProps? get notificationSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeEnginePropsCopyWith<InitializeEngineProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeEnginePropsCopyWith<$Res> {
  factory $InitializeEnginePropsCopyWith(InitializeEngineProps value,
          $Res Function(InitializeEngineProps) then) =
      _$InitializeEnginePropsCopyWithImpl<$Res>;
  $Res call(
      {String appId,
      AreaCode areaCode,
      NotificationProps? notificationSettings});

  $NotificationPropsCopyWith<$Res>? get notificationSettings;
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
    Object? appId = freezed,
    Object? areaCode = freezed,
    Object? notificationSettings = freezed,
  }) {
    return _then(_value.copyWith(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      areaCode: areaCode == freezed
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as AreaCode,
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationProps?,
    ));
  }

  @override
  $NotificationPropsCopyWith<$Res>? get notificationSettings {
    if (_value.notificationSettings == null) {
      return null;
    }

    return $NotificationPropsCopyWith<$Res>(_value.notificationSettings!,
        (value) {
      return _then(_value.copyWith(notificationSettings: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitializeEnginePropsCopyWith<$Res>
    implements $InitializeEnginePropsCopyWith<$Res> {
  factory _$$_InitializeEnginePropsCopyWith(_$_InitializeEngineProps value,
          $Res Function(_$_InitializeEngineProps) then) =
      __$$_InitializeEnginePropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appId,
      AreaCode areaCode,
      NotificationProps? notificationSettings});

  @override
  $NotificationPropsCopyWith<$Res>? get notificationSettings;
}

/// @nodoc
class __$$_InitializeEnginePropsCopyWithImpl<$Res>
    extends _$InitializeEnginePropsCopyWithImpl<$Res>
    implements _$$_InitializeEnginePropsCopyWith<$Res> {
  __$$_InitializeEnginePropsCopyWithImpl(_$_InitializeEngineProps _value,
      $Res Function(_$_InitializeEngineProps) _then)
      : super(_value, (v) => _then(v as _$_InitializeEngineProps));

  @override
  _$_InitializeEngineProps get _value =>
      super._value as _$_InitializeEngineProps;

  @override
  $Res call({
    Object? appId = freezed,
    Object? areaCode = freezed,
    Object? notificationSettings = freezed,
  }) {
    return _then(_$_InitializeEngineProps(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      areaCode: areaCode == freezed
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as AreaCode,
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationProps?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitializeEngineProps implements _InitializeEngineProps {
  const _$_InitializeEngineProps(
      {required this.appId,
      this.areaCode = AreaCode.global,
      this.notificationSettings});

  factory _$_InitializeEngineProps.fromJson(Map<String, dynamic> json) =>
      _$$_InitializeEnginePropsFromJson(json);

  @override
  final String appId;
  @override
  @JsonKey()
  final AreaCode areaCode;
  @override
  final NotificationProps? notificationSettings;

  @override
  String toString() {
    return 'InitializeEngineProps(appId: $appId, areaCode: $areaCode, notificationSettings: $notificationSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeEngineProps &&
            const DeepCollectionEquality().equals(other.appId, appId) &&
            const DeepCollectionEquality().equals(other.areaCode, areaCode) &&
            const DeepCollectionEquality()
                .equals(other.notificationSettings, notificationSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appId),
      const DeepCollectionEquality().hash(areaCode),
      const DeepCollectionEquality().hash(notificationSettings));

  @JsonKey(ignore: true)
  @override
  _$$_InitializeEnginePropsCopyWith<_$_InitializeEngineProps> get copyWith =>
      __$$_InitializeEnginePropsCopyWithImpl<_$_InitializeEngineProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitializeEnginePropsToJson(this);
  }
}

abstract class _InitializeEngineProps implements InitializeEngineProps {
  const factory _InitializeEngineProps(
          {required final String appId,
          final AreaCode areaCode,
          final NotificationProps? notificationSettings}) =
      _$_InitializeEngineProps;

  factory _InitializeEngineProps.fromJson(Map<String, dynamic> json) =
      _$_InitializeEngineProps.fromJson;

  @override
  String get appId => throw _privateConstructorUsedError;
  @override
  AreaCode get areaCode => throw _privateConstructorUsedError;
  @override
  NotificationProps? get notificationSettings =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitializeEnginePropsCopyWith<_$_InitializeEngineProps> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationProps _$NotificationPropsFromJson(Map<String, dynamic> json) {
  return _NotificationProps.fromJson(json);
}

/// @nodoc
mixin _$NotificationProps {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationPropsCopyWith<NotificationProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPropsCopyWith<$Res> {
  factory $NotificationPropsCopyWith(
          NotificationProps value, $Res Function(NotificationProps) then) =
      _$NotificationPropsCopyWithImpl<$Res>;
  $Res call({String? title, String? subtitle});
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
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationPropsCopyWith<$Res>
    implements $NotificationPropsCopyWith<$Res> {
  factory _$$_NotificationPropsCopyWith(_$_NotificationProps value,
          $Res Function(_$_NotificationProps) then) =
      __$$_NotificationPropsCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? subtitle});
}

/// @nodoc
class __$$_NotificationPropsCopyWithImpl<$Res>
    extends _$NotificationPropsCopyWithImpl<$Res>
    implements _$$_NotificationPropsCopyWith<$Res> {
  __$$_NotificationPropsCopyWithImpl(
      _$_NotificationProps _value, $Res Function(_$_NotificationProps) _then)
      : super(_value, (v) => _then(v as _$_NotificationProps));

  @override
  _$_NotificationProps get _value => super._value as _$_NotificationProps;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_$_NotificationProps(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationProps implements _NotificationProps {
  const _$_NotificationProps({this.title, this.subtitle});

  factory _$_NotificationProps.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationPropsFromJson(json);

  @override
  final String? title;
  @override
  final String? subtitle;

  @override
  String toString() {
    return 'NotificationProps(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationProps &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationPropsCopyWith<_$_NotificationProps> get copyWith =>
      __$$_NotificationPropsCopyWithImpl<_$_NotificationProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationPropsToJson(this);
  }
}

abstract class _NotificationProps implements NotificationProps {
  const factory _NotificationProps(
      {final String? title, final String? subtitle}) = _$_NotificationProps;

  factory _NotificationProps.fromJson(Map<String, dynamic> json) =
      _$_NotificationProps.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationPropsCopyWith<_$_NotificationProps> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinChannelProps _$JoinChannelPropsFromJson(Map<String, dynamic> json) {
  return _JoinChannelProps.fromJson(json);
}

/// @nodoc
mixin _$JoinChannelProps {
  String get token => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  int get uid => throw _privateConstructorUsedError;
  ChannelProfile get profile => throw _privateConstructorUsedError;
  ClientRole get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinChannelPropsCopyWith<JoinChannelProps> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? token = freezed,
    Object? channelName = freezed,
    Object? uid = freezed,
    Object? profile = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ChannelProfile,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClientRole,
    ));
  }
}

/// @nodoc
abstract class _$$_JoinChannelPropsCopyWith<$Res>
    implements $JoinChannelPropsCopyWith<$Res> {
  factory _$$_JoinChannelPropsCopyWith(
          _$_JoinChannelProps value, $Res Function(_$_JoinChannelProps) then) =
      __$$_JoinChannelPropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String channelName,
      int uid,
      ChannelProfile profile,
      ClientRole role});
}

/// @nodoc
class __$$_JoinChannelPropsCopyWithImpl<$Res>
    extends _$JoinChannelPropsCopyWithImpl<$Res>
    implements _$$_JoinChannelPropsCopyWith<$Res> {
  __$$_JoinChannelPropsCopyWithImpl(
      _$_JoinChannelProps _value, $Res Function(_$_JoinChannelProps) _then)
      : super(_value, (v) => _then(v as _$_JoinChannelProps));

  @override
  _$_JoinChannelProps get _value => super._value as _$_JoinChannelProps;

  @override
  $Res call({
    Object? token = freezed,
    Object? channelName = freezed,
    Object? uid = freezed,
    Object? profile = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_JoinChannelProps(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ChannelProfile,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ClientRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinChannelProps implements _JoinChannelProps {
  const _$_JoinChannelProps(
      {required this.token,
      required this.channelName,
      required this.uid,
      this.profile = ChannelProfile.liveBroadcasting,
      this.role = ClientRole.broadcaster});

  factory _$_JoinChannelProps.fromJson(Map<String, dynamic> json) =>
      _$$_JoinChannelPropsFromJson(json);

  @override
  final String token;
  @override
  final String channelName;
  @override
  final int uid;
  @override
  @JsonKey()
  final ChannelProfile profile;
  @override
  @JsonKey()
  final ClientRole role;

  @override
  String toString() {
    return 'JoinChannelProps(token: $token, channelName: $channelName, uid: $uid, profile: $profile, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinChannelProps &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.channelName, channelName) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(channelName),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$$_JoinChannelPropsCopyWith<_$_JoinChannelProps> get copyWith =>
      __$$_JoinChannelPropsCopyWithImpl<_$_JoinChannelProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinChannelPropsToJson(this);
  }
}

abstract class _JoinChannelProps implements JoinChannelProps {
  const factory _JoinChannelProps(
      {required final String token,
      required final String channelName,
      required final int uid,
      final ChannelProfile profile,
      final ClientRole role}) = _$_JoinChannelProps;

  factory _JoinChannelProps.fromJson(Map<String, dynamic> json) =
      _$_JoinChannelProps.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get channelName => throw _privateConstructorUsedError;
  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  ChannelProfile get profile => throw _privateConstructorUsedError;
  @override
  ClientRole get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JoinChannelPropsCopyWith<_$_JoinChannelProps> get copyWith =>
      throw _privateConstructorUsedError;
}

RtcStats _$RtcStatsFromJson(Map<String, dynamic> json) {
  return _RtcStats.fromJson(json);
}

/// @nodoc
mixin _$RtcStats {
  int get totalDuration => throw _privateConstructorUsedError;
  int get txBytes => throw _privateConstructorUsedError;
  int get rxBytes => throw _privateConstructorUsedError;
  int get txAudioBytes => throw _privateConstructorUsedError;
  int get txVideoBytes => throw _privateConstructorUsedError;
  int get rxAudioBytes => throw _privateConstructorUsedError;
  int get rxVideoBytes => throw _privateConstructorUsedError;
  int get txKBitRate => throw _privateConstructorUsedError;
  int get rxKBitRate => throw _privateConstructorUsedError;
  int get txAudioKBitRate => throw _privateConstructorUsedError;
  int get rxAudioKBitRate => throw _privateConstructorUsedError;
  int get txVideoKBitRate => throw _privateConstructorUsedError;
  int get rxVideoKBitRate => throw _privateConstructorUsedError;
  int get users => throw _privateConstructorUsedError;
  int get lastmileDelay => throw _privateConstructorUsedError;
  int get txPacketLossRate => throw _privateConstructorUsedError;
  int get rxPacketLossRate => throw _privateConstructorUsedError;
  double get cpuTotalUsage => throw _privateConstructorUsedError;
  double get cpuAppUsage => throw _privateConstructorUsedError;
  int get gatewayRtt => throw _privateConstructorUsedError;
  double get memoryAppUsageRatio => throw _privateConstructorUsedError;
  double get memoryTotalUsageRatio => throw _privateConstructorUsedError;
  int get memoryAppUsageInKbyte => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RtcStatsCopyWith<RtcStats> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? totalDuration = freezed,
    Object? txBytes = freezed,
    Object? rxBytes = freezed,
    Object? txAudioBytes = freezed,
    Object? txVideoBytes = freezed,
    Object? rxAudioBytes = freezed,
    Object? rxVideoBytes = freezed,
    Object? txKBitRate = freezed,
    Object? rxKBitRate = freezed,
    Object? txAudioKBitRate = freezed,
    Object? rxAudioKBitRate = freezed,
    Object? txVideoKBitRate = freezed,
    Object? rxVideoKBitRate = freezed,
    Object? users = freezed,
    Object? lastmileDelay = freezed,
    Object? txPacketLossRate = freezed,
    Object? rxPacketLossRate = freezed,
    Object? cpuTotalUsage = freezed,
    Object? cpuAppUsage = freezed,
    Object? gatewayRtt = freezed,
    Object? memoryAppUsageRatio = freezed,
    Object? memoryTotalUsageRatio = freezed,
    Object? memoryAppUsageInKbyte = freezed,
  }) {
    return _then(_value.copyWith(
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
      txBytes: txBytes == freezed
          ? _value.txBytes
          : txBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxBytes: rxBytes == freezed
          ? _value.rxBytes
          : rxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txAudioBytes: txAudioBytes == freezed
          ? _value.txAudioBytes
          : txAudioBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txVideoBytes: txVideoBytes == freezed
          ? _value.txVideoBytes
          : txVideoBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxAudioBytes: rxAudioBytes == freezed
          ? _value.rxAudioBytes
          : rxAudioBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxVideoBytes: rxVideoBytes == freezed
          ? _value.rxVideoBytes
          : rxVideoBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txKBitRate: txKBitRate == freezed
          ? _value.txKBitRate
          : txKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxKBitRate: rxKBitRate == freezed
          ? _value.rxKBitRate
          : rxKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      txAudioKBitRate: txAudioKBitRate == freezed
          ? _value.txAudioKBitRate
          : txAudioKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxAudioKBitRate: rxAudioKBitRate == freezed
          ? _value.rxAudioKBitRate
          : rxAudioKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      txVideoKBitRate: txVideoKBitRate == freezed
          ? _value.txVideoKBitRate
          : txVideoKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxVideoKBitRate: rxVideoKBitRate == freezed
          ? _value.rxVideoKBitRate
          : rxVideoKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int,
      lastmileDelay: lastmileDelay == freezed
          ? _value.lastmileDelay
          : lastmileDelay // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxPacketLossRate: rxPacketLossRate == freezed
          ? _value.rxPacketLossRate
          : rxPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      cpuTotalUsage: cpuTotalUsage == freezed
          ? _value.cpuTotalUsage
          : cpuTotalUsage // ignore: cast_nullable_to_non_nullable
              as double,
      cpuAppUsage: cpuAppUsage == freezed
          ? _value.cpuAppUsage
          : cpuAppUsage // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayRtt: gatewayRtt == freezed
          ? _value.gatewayRtt
          : gatewayRtt // ignore: cast_nullable_to_non_nullable
              as int,
      memoryAppUsageRatio: memoryAppUsageRatio == freezed
          ? _value.memoryAppUsageRatio
          : memoryAppUsageRatio // ignore: cast_nullable_to_non_nullable
              as double,
      memoryTotalUsageRatio: memoryTotalUsageRatio == freezed
          ? _value.memoryTotalUsageRatio
          : memoryTotalUsageRatio // ignore: cast_nullable_to_non_nullable
              as double,
      memoryAppUsageInKbyte: memoryAppUsageInKbyte == freezed
          ? _value.memoryAppUsageInKbyte
          : memoryAppUsageInKbyte // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RtcStatsCopyWith<$Res> implements $RtcStatsCopyWith<$Res> {
  factory _$$_RtcStatsCopyWith(
          _$_RtcStats value, $Res Function(_$_RtcStats) then) =
      __$$_RtcStatsCopyWithImpl<$Res>;
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
class __$$_RtcStatsCopyWithImpl<$Res> extends _$RtcStatsCopyWithImpl<$Res>
    implements _$$_RtcStatsCopyWith<$Res> {
  __$$_RtcStatsCopyWithImpl(
      _$_RtcStats _value, $Res Function(_$_RtcStats) _then)
      : super(_value, (v) => _then(v as _$_RtcStats));

  @override
  _$_RtcStats get _value => super._value as _$_RtcStats;

  @override
  $Res call({
    Object? totalDuration = freezed,
    Object? txBytes = freezed,
    Object? rxBytes = freezed,
    Object? txAudioBytes = freezed,
    Object? txVideoBytes = freezed,
    Object? rxAudioBytes = freezed,
    Object? rxVideoBytes = freezed,
    Object? txKBitRate = freezed,
    Object? rxKBitRate = freezed,
    Object? txAudioKBitRate = freezed,
    Object? rxAudioKBitRate = freezed,
    Object? txVideoKBitRate = freezed,
    Object? rxVideoKBitRate = freezed,
    Object? users = freezed,
    Object? lastmileDelay = freezed,
    Object? txPacketLossRate = freezed,
    Object? rxPacketLossRate = freezed,
    Object? cpuTotalUsage = freezed,
    Object? cpuAppUsage = freezed,
    Object? gatewayRtt = freezed,
    Object? memoryAppUsageRatio = freezed,
    Object? memoryTotalUsageRatio = freezed,
    Object? memoryAppUsageInKbyte = freezed,
  }) {
    return _then(_$_RtcStats(
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
      txBytes: txBytes == freezed
          ? _value.txBytes
          : txBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxBytes: rxBytes == freezed
          ? _value.rxBytes
          : rxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txAudioBytes: txAudioBytes == freezed
          ? _value.txAudioBytes
          : txAudioBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txVideoBytes: txVideoBytes == freezed
          ? _value.txVideoBytes
          : txVideoBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxAudioBytes: rxAudioBytes == freezed
          ? _value.rxAudioBytes
          : rxAudioBytes // ignore: cast_nullable_to_non_nullable
              as int,
      rxVideoBytes: rxVideoBytes == freezed
          ? _value.rxVideoBytes
          : rxVideoBytes // ignore: cast_nullable_to_non_nullable
              as int,
      txKBitRate: txKBitRate == freezed
          ? _value.txKBitRate
          : txKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxKBitRate: rxKBitRate == freezed
          ? _value.rxKBitRate
          : rxKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      txAudioKBitRate: txAudioKBitRate == freezed
          ? _value.txAudioKBitRate
          : txAudioKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxAudioKBitRate: rxAudioKBitRate == freezed
          ? _value.rxAudioKBitRate
          : rxAudioKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      txVideoKBitRate: txVideoKBitRate == freezed
          ? _value.txVideoKBitRate
          : txVideoKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxVideoKBitRate: rxVideoKBitRate == freezed
          ? _value.rxVideoKBitRate
          : rxVideoKBitRate // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int,
      lastmileDelay: lastmileDelay == freezed
          ? _value.lastmileDelay
          : lastmileDelay // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxPacketLossRate: rxPacketLossRate == freezed
          ? _value.rxPacketLossRate
          : rxPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      cpuTotalUsage: cpuTotalUsage == freezed
          ? _value.cpuTotalUsage
          : cpuTotalUsage // ignore: cast_nullable_to_non_nullable
              as double,
      cpuAppUsage: cpuAppUsage == freezed
          ? _value.cpuAppUsage
          : cpuAppUsage // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayRtt: gatewayRtt == freezed
          ? _value.gatewayRtt
          : gatewayRtt // ignore: cast_nullable_to_non_nullable
              as int,
      memoryAppUsageRatio: memoryAppUsageRatio == freezed
          ? _value.memoryAppUsageRatio
          : memoryAppUsageRatio // ignore: cast_nullable_to_non_nullable
              as double,
      memoryTotalUsageRatio: memoryTotalUsageRatio == freezed
          ? _value.memoryTotalUsageRatio
          : memoryTotalUsageRatio // ignore: cast_nullable_to_non_nullable
              as double,
      memoryAppUsageInKbyte: memoryAppUsageInKbyte == freezed
          ? _value.memoryAppUsageInKbyte
          : memoryAppUsageInKbyte // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
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
      this.memoryAppUsageInKbyte = 0});

  factory _$_RtcStats.fromJson(Map<String, dynamic> json) =>
      _$$_RtcStatsFromJson(json);

  @override
  @JsonKey()
  final int totalDuration;
  @override
  @JsonKey()
  final int txBytes;
  @override
  @JsonKey()
  final int rxBytes;
  @override
  @JsonKey()
  final int txAudioBytes;
  @override
  @JsonKey()
  final int txVideoBytes;
  @override
  @JsonKey()
  final int rxAudioBytes;
  @override
  @JsonKey()
  final int rxVideoBytes;
  @override
  @JsonKey()
  final int txKBitRate;
  @override
  @JsonKey()
  final int rxKBitRate;
  @override
  @JsonKey()
  final int txAudioKBitRate;
  @override
  @JsonKey()
  final int rxAudioKBitRate;
  @override
  @JsonKey()
  final int txVideoKBitRate;
  @override
  @JsonKey()
  final int rxVideoKBitRate;
  @override
  @JsonKey()
  final int users;
  @override
  @JsonKey()
  final int lastmileDelay;
  @override
  @JsonKey()
  final int txPacketLossRate;
  @override
  @JsonKey()
  final int rxPacketLossRate;
  @override
  @JsonKey()
  final double cpuTotalUsage;
  @override
  @JsonKey()
  final double cpuAppUsage;
  @override
  @JsonKey()
  final int gatewayRtt;
  @override
  @JsonKey()
  final double memoryAppUsageRatio;
  @override
  @JsonKey()
  final double memoryTotalUsageRatio;
  @override
  @JsonKey()
  final int memoryAppUsageInKbyte;

  @override
  String toString() {
    return 'RtcStats(totalDuration: $totalDuration, txBytes: $txBytes, rxBytes: $rxBytes, txAudioBytes: $txAudioBytes, txVideoBytes: $txVideoBytes, rxAudioBytes: $rxAudioBytes, rxVideoBytes: $rxVideoBytes, txKBitRate: $txKBitRate, rxKBitRate: $rxKBitRate, txAudioKBitRate: $txAudioKBitRate, rxAudioKBitRate: $rxAudioKBitRate, txVideoKBitRate: $txVideoKBitRate, rxVideoKBitRate: $rxVideoKBitRate, users: $users, lastmileDelay: $lastmileDelay, txPacketLossRate: $txPacketLossRate, rxPacketLossRate: $rxPacketLossRate, cpuTotalUsage: $cpuTotalUsage, cpuAppUsage: $cpuAppUsage, gatewayRtt: $gatewayRtt, memoryAppUsageRatio: $memoryAppUsageRatio, memoryTotalUsageRatio: $memoryTotalUsageRatio, memoryAppUsageInKbyte: $memoryAppUsageInKbyte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RtcStats &&
            const DeepCollectionEquality()
                .equals(other.totalDuration, totalDuration) &&
            const DeepCollectionEquality().equals(other.txBytes, txBytes) &&
            const DeepCollectionEquality().equals(other.rxBytes, rxBytes) &&
            const DeepCollectionEquality()
                .equals(other.txAudioBytes, txAudioBytes) &&
            const DeepCollectionEquality()
                .equals(other.txVideoBytes, txVideoBytes) &&
            const DeepCollectionEquality()
                .equals(other.rxAudioBytes, rxAudioBytes) &&
            const DeepCollectionEquality()
                .equals(other.rxVideoBytes, rxVideoBytes) &&
            const DeepCollectionEquality()
                .equals(other.txKBitRate, txKBitRate) &&
            const DeepCollectionEquality()
                .equals(other.rxKBitRate, rxKBitRate) &&
            const DeepCollectionEquality()
                .equals(other.txAudioKBitRate, txAudioKBitRate) &&
            const DeepCollectionEquality()
                .equals(other.rxAudioKBitRate, rxAudioKBitRate) &&
            const DeepCollectionEquality()
                .equals(other.txVideoKBitRate, txVideoKBitRate) &&
            const DeepCollectionEquality()
                .equals(other.rxVideoKBitRate, rxVideoKBitRate) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality()
                .equals(other.lastmileDelay, lastmileDelay) &&
            const DeepCollectionEquality()
                .equals(other.txPacketLossRate, txPacketLossRate) &&
            const DeepCollectionEquality()
                .equals(other.rxPacketLossRate, rxPacketLossRate) &&
            const DeepCollectionEquality()
                .equals(other.cpuTotalUsage, cpuTotalUsage) &&
            const DeepCollectionEquality()
                .equals(other.cpuAppUsage, cpuAppUsage) &&
            const DeepCollectionEquality()
                .equals(other.gatewayRtt, gatewayRtt) &&
            const DeepCollectionEquality()
                .equals(other.memoryAppUsageRatio, memoryAppUsageRatio) &&
            const DeepCollectionEquality()
                .equals(other.memoryTotalUsageRatio, memoryTotalUsageRatio) &&
            const DeepCollectionEquality()
                .equals(other.memoryAppUsageInKbyte, memoryAppUsageInKbyte));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalDuration),
        const DeepCollectionEquality().hash(txBytes),
        const DeepCollectionEquality().hash(rxBytes),
        const DeepCollectionEquality().hash(txAudioBytes),
        const DeepCollectionEquality().hash(txVideoBytes),
        const DeepCollectionEquality().hash(rxAudioBytes),
        const DeepCollectionEquality().hash(rxVideoBytes),
        const DeepCollectionEquality().hash(txKBitRate),
        const DeepCollectionEquality().hash(rxKBitRate),
        const DeepCollectionEquality().hash(txAudioKBitRate),
        const DeepCollectionEquality().hash(rxAudioKBitRate),
        const DeepCollectionEquality().hash(txVideoKBitRate),
        const DeepCollectionEquality().hash(rxVideoKBitRate),
        const DeepCollectionEquality().hash(users),
        const DeepCollectionEquality().hash(lastmileDelay),
        const DeepCollectionEquality().hash(txPacketLossRate),
        const DeepCollectionEquality().hash(rxPacketLossRate),
        const DeepCollectionEquality().hash(cpuTotalUsage),
        const DeepCollectionEquality().hash(cpuAppUsage),
        const DeepCollectionEquality().hash(gatewayRtt),
        const DeepCollectionEquality().hash(memoryAppUsageRatio),
        const DeepCollectionEquality().hash(memoryTotalUsageRatio),
        const DeepCollectionEquality().hash(memoryAppUsageInKbyte)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_RtcStatsCopyWith<_$_RtcStats> get copyWith =>
      __$$_RtcStatsCopyWithImpl<_$_RtcStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RtcStatsToJson(this);
  }
}

abstract class _RtcStats implements RtcStats {
  const factory _RtcStats(
      {final int totalDuration,
      final int txBytes,
      final int rxBytes,
      final int txAudioBytes,
      final int txVideoBytes,
      final int rxAudioBytes,
      final int rxVideoBytes,
      final int txKBitRate,
      final int rxKBitRate,
      final int txAudioKBitRate,
      final int rxAudioKBitRate,
      final int txVideoKBitRate,
      final int rxVideoKBitRate,
      final int users,
      final int lastmileDelay,
      final int txPacketLossRate,
      final int rxPacketLossRate,
      final double cpuTotalUsage,
      final double cpuAppUsage,
      final int gatewayRtt,
      final double memoryAppUsageRatio,
      final double memoryTotalUsageRatio,
      final int memoryAppUsageInKbyte}) = _$_RtcStats;

  factory _RtcStats.fromJson(Map<String, dynamic> json) = _$_RtcStats.fromJson;

  @override
  int get totalDuration => throw _privateConstructorUsedError;
  @override
  int get txBytes => throw _privateConstructorUsedError;
  @override
  int get rxBytes => throw _privateConstructorUsedError;
  @override
  int get txAudioBytes => throw _privateConstructorUsedError;
  @override
  int get txVideoBytes => throw _privateConstructorUsedError;
  @override
  int get rxAudioBytes => throw _privateConstructorUsedError;
  @override
  int get rxVideoBytes => throw _privateConstructorUsedError;
  @override
  int get txKBitRate => throw _privateConstructorUsedError;
  @override
  int get rxKBitRate => throw _privateConstructorUsedError;
  @override
  int get txAudioKBitRate => throw _privateConstructorUsedError;
  @override
  int get rxAudioKBitRate => throw _privateConstructorUsedError;
  @override
  int get txVideoKBitRate => throw _privateConstructorUsedError;
  @override
  int get rxVideoKBitRate => throw _privateConstructorUsedError;
  @override
  int get users => throw _privateConstructorUsedError;
  @override
  int get lastmileDelay => throw _privateConstructorUsedError;
  @override
  int get txPacketLossRate => throw _privateConstructorUsedError;
  @override
  int get rxPacketLossRate => throw _privateConstructorUsedError;
  @override
  double get cpuTotalUsage => throw _privateConstructorUsedError;
  @override
  double get cpuAppUsage => throw _privateConstructorUsedError;
  @override
  int get gatewayRtt => throw _privateConstructorUsedError;
  @override
  double get memoryAppUsageRatio => throw _privateConstructorUsedError;
  @override
  double get memoryTotalUsageRatio => throw _privateConstructorUsedError;
  @override
  int get memoryAppUsageInKbyte => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RtcStatsCopyWith<_$_RtcStats> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteAudioStats _$RemoteAudioStatsFromJson(Map<String, dynamic> json) {
  return _RemoteAudioStats.fromJson(json);
}

/// @nodoc
mixin _$RemoteAudioStats {
  int get uid => throw _privateConstructorUsedError;
  int get quality => throw _privateConstructorUsedError;
  int get networkTransportDelay => throw _privateConstructorUsedError;
  int get jitterBufferDelay => throw _privateConstructorUsedError;
  int get audioLossRate => throw _privateConstructorUsedError;
  int get numChannels => throw _privateConstructorUsedError;
  int get receivedSampleRate => throw _privateConstructorUsedError;
  int get receivedBitrate => throw _privateConstructorUsedError;
  int get totalFrozenTime => throw _privateConstructorUsedError;
  int get frozenRate => throw _privateConstructorUsedError;
  int get totalActiveTime => throw _privateConstructorUsedError;
  int get publishDuration => throw _privateConstructorUsedError;
  int get qoeQuality => throw _privateConstructorUsedError;
  int get qualityChangedReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteAudioStatsCopyWith<RemoteAudioStats> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? uid = freezed,
    Object? quality = freezed,
    Object? networkTransportDelay = freezed,
    Object? jitterBufferDelay = freezed,
    Object? audioLossRate = freezed,
    Object? numChannels = freezed,
    Object? receivedSampleRate = freezed,
    Object? receivedBitrate = freezed,
    Object? totalFrozenTime = freezed,
    Object? frozenRate = freezed,
    Object? totalActiveTime = freezed,
    Object? publishDuration = freezed,
    Object? qoeQuality = freezed,
    Object? qualityChangedReason = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      networkTransportDelay: networkTransportDelay == freezed
          ? _value.networkTransportDelay
          : networkTransportDelay // ignore: cast_nullable_to_non_nullable
              as int,
      jitterBufferDelay: jitterBufferDelay == freezed
          ? _value.jitterBufferDelay
          : jitterBufferDelay // ignore: cast_nullable_to_non_nullable
              as int,
      audioLossRate: audioLossRate == freezed
          ? _value.audioLossRate
          : audioLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      numChannels: numChannels == freezed
          ? _value.numChannels
          : numChannels // ignore: cast_nullable_to_non_nullable
              as int,
      receivedSampleRate: receivedSampleRate == freezed
          ? _value.receivedSampleRate
          : receivedSampleRate // ignore: cast_nullable_to_non_nullable
              as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime // ignore: cast_nullable_to_non_nullable
              as int,
      frozenRate: frozenRate == freezed
          ? _value.frozenRate
          : frozenRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime // ignore: cast_nullable_to_non_nullable
              as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration // ignore: cast_nullable_to_non_nullable
              as int,
      qoeQuality: qoeQuality == freezed
          ? _value.qoeQuality
          : qoeQuality // ignore: cast_nullable_to_non_nullable
              as int,
      qualityChangedReason: qualityChangedReason == freezed
          ? _value.qualityChangedReason
          : qualityChangedReason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RemoteAudioStatsCopyWith<$Res>
    implements $RemoteAudioStatsCopyWith<$Res> {
  factory _$$_RemoteAudioStatsCopyWith(
          _$_RemoteAudioStats value, $Res Function(_$_RemoteAudioStats) then) =
      __$$_RemoteAudioStatsCopyWithImpl<$Res>;
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
class __$$_RemoteAudioStatsCopyWithImpl<$Res>
    extends _$RemoteAudioStatsCopyWithImpl<$Res>
    implements _$$_RemoteAudioStatsCopyWith<$Res> {
  __$$_RemoteAudioStatsCopyWithImpl(
      _$_RemoteAudioStats _value, $Res Function(_$_RemoteAudioStats) _then)
      : super(_value, (v) => _then(v as _$_RemoteAudioStats));

  @override
  _$_RemoteAudioStats get _value => super._value as _$_RemoteAudioStats;

  @override
  $Res call({
    Object? uid = freezed,
    Object? quality = freezed,
    Object? networkTransportDelay = freezed,
    Object? jitterBufferDelay = freezed,
    Object? audioLossRate = freezed,
    Object? numChannels = freezed,
    Object? receivedSampleRate = freezed,
    Object? receivedBitrate = freezed,
    Object? totalFrozenTime = freezed,
    Object? frozenRate = freezed,
    Object? totalActiveTime = freezed,
    Object? publishDuration = freezed,
    Object? qoeQuality = freezed,
    Object? qualityChangedReason = freezed,
  }) {
    return _then(_$_RemoteAudioStats(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      networkTransportDelay: networkTransportDelay == freezed
          ? _value.networkTransportDelay
          : networkTransportDelay // ignore: cast_nullable_to_non_nullable
              as int,
      jitterBufferDelay: jitterBufferDelay == freezed
          ? _value.jitterBufferDelay
          : jitterBufferDelay // ignore: cast_nullable_to_non_nullable
              as int,
      audioLossRate: audioLossRate == freezed
          ? _value.audioLossRate
          : audioLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      numChannels: numChannels == freezed
          ? _value.numChannels
          : numChannels // ignore: cast_nullable_to_non_nullable
              as int,
      receivedSampleRate: receivedSampleRate == freezed
          ? _value.receivedSampleRate
          : receivedSampleRate // ignore: cast_nullable_to_non_nullable
              as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime // ignore: cast_nullable_to_non_nullable
              as int,
      frozenRate: frozenRate == freezed
          ? _value.frozenRate
          : frozenRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime // ignore: cast_nullable_to_non_nullable
              as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration // ignore: cast_nullable_to_non_nullable
              as int,
      qoeQuality: qoeQuality == freezed
          ? _value.qoeQuality
          : qoeQuality // ignore: cast_nullable_to_non_nullable
              as int,
      qualityChangedReason: qualityChangedReason == freezed
          ? _value.qualityChangedReason
          : qualityChangedReason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteAudioStats implements _RemoteAudioStats {
  const _$_RemoteAudioStats(
      {required this.uid,
      required this.quality,
      required this.networkTransportDelay,
      required this.jitterBufferDelay,
      required this.audioLossRate,
      required this.numChannels,
      required this.receivedSampleRate,
      required this.receivedBitrate,
      required this.totalFrozenTime,
      required this.frozenRate,
      required this.totalActiveTime,
      required this.publishDuration,
      required this.qoeQuality,
      required this.qualityChangedReason});

  factory _$_RemoteAudioStats.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteAudioStatsFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_RemoteAudioStats &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality()
                .equals(other.networkTransportDelay, networkTransportDelay) &&
            const DeepCollectionEquality()
                .equals(other.jitterBufferDelay, jitterBufferDelay) &&
            const DeepCollectionEquality()
                .equals(other.audioLossRate, audioLossRate) &&
            const DeepCollectionEquality()
                .equals(other.numChannels, numChannels) &&
            const DeepCollectionEquality()
                .equals(other.receivedSampleRate, receivedSampleRate) &&
            const DeepCollectionEquality()
                .equals(other.receivedBitrate, receivedBitrate) &&
            const DeepCollectionEquality()
                .equals(other.totalFrozenTime, totalFrozenTime) &&
            const DeepCollectionEquality()
                .equals(other.frozenRate, frozenRate) &&
            const DeepCollectionEquality()
                .equals(other.totalActiveTime, totalActiveTime) &&
            const DeepCollectionEquality()
                .equals(other.publishDuration, publishDuration) &&
            const DeepCollectionEquality()
                .equals(other.qoeQuality, qoeQuality) &&
            const DeepCollectionEquality()
                .equals(other.qualityChangedReason, qualityChangedReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(networkTransportDelay),
      const DeepCollectionEquality().hash(jitterBufferDelay),
      const DeepCollectionEquality().hash(audioLossRate),
      const DeepCollectionEquality().hash(numChannels),
      const DeepCollectionEquality().hash(receivedSampleRate),
      const DeepCollectionEquality().hash(receivedBitrate),
      const DeepCollectionEquality().hash(totalFrozenTime),
      const DeepCollectionEquality().hash(frozenRate),
      const DeepCollectionEquality().hash(totalActiveTime),
      const DeepCollectionEquality().hash(publishDuration),
      const DeepCollectionEquality().hash(qoeQuality),
      const DeepCollectionEquality().hash(qualityChangedReason));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteAudioStatsCopyWith<_$_RemoteAudioStats> get copyWith =>
      __$$_RemoteAudioStatsCopyWithImpl<_$_RemoteAudioStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteAudioStatsToJson(this);
  }
}

abstract class _RemoteAudioStats implements RemoteAudioStats {
  const factory _RemoteAudioStats(
      {required final int uid,
      required final int quality,
      required final int networkTransportDelay,
      required final int jitterBufferDelay,
      required final int audioLossRate,
      required final int numChannels,
      required final int receivedSampleRate,
      required final int receivedBitrate,
      required final int totalFrozenTime,
      required final int frozenRate,
      required final int totalActiveTime,
      required final int publishDuration,
      required final int qoeQuality,
      required final int qualityChangedReason}) = _$_RemoteAudioStats;

  factory _RemoteAudioStats.fromJson(Map<String, dynamic> json) =
      _$_RemoteAudioStats.fromJson;

  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  int get quality => throw _privateConstructorUsedError;
  @override
  int get networkTransportDelay => throw _privateConstructorUsedError;
  @override
  int get jitterBufferDelay => throw _privateConstructorUsedError;
  @override
  int get audioLossRate => throw _privateConstructorUsedError;
  @override
  int get numChannels => throw _privateConstructorUsedError;
  @override
  int get receivedSampleRate => throw _privateConstructorUsedError;
  @override
  int get receivedBitrate => throw _privateConstructorUsedError;
  @override
  int get totalFrozenTime => throw _privateConstructorUsedError;
  @override
  int get frozenRate => throw _privateConstructorUsedError;
  @override
  int get totalActiveTime => throw _privateConstructorUsedError;
  @override
  int get publishDuration => throw _privateConstructorUsedError;
  @override
  int get qoeQuality => throw _privateConstructorUsedError;
  @override
  int get qualityChangedReason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteAudioStatsCopyWith<_$_RemoteAudioStats> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteVideoStats _$RemoteVideoStatsFromJson(Map<String, dynamic> json) {
  return _RemoteVideoStats.fromJson(json);
}

/// @nodoc
mixin _$RemoteVideoStats {
  int get uid => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get receivedBitrate => throw _privateConstructorUsedError;
  int get decoderOutputFrameRate => throw _privateConstructorUsedError;
  int get rendererOutputFrameRate => throw _privateConstructorUsedError;
  int get packetLossRate => throw _privateConstructorUsedError;
  int get rxStreamType => throw _privateConstructorUsedError;
  int get totalFrozenTime => throw _privateConstructorUsedError;
  int get frozenRate => throw _privateConstructorUsedError;
  int get totalActiveTime => throw _privateConstructorUsedError;
  int get publishDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteVideoStatsCopyWith<RemoteVideoStats> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? uid = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? receivedBitrate = freezed,
    Object? decoderOutputFrameRate = freezed,
    Object? rendererOutputFrameRate = freezed,
    Object? packetLossRate = freezed,
    Object? rxStreamType = freezed,
    Object? totalFrozenTime = freezed,
    Object? frozenRate = freezed,
    Object? totalActiveTime = freezed,
    Object? publishDuration = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      decoderOutputFrameRate: decoderOutputFrameRate == freezed
          ? _value.decoderOutputFrameRate
          : decoderOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      packetLossRate: packetLossRate == freezed
          ? _value.packetLossRate
          : packetLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxStreamType: rxStreamType == freezed
          ? _value.rxStreamType
          : rxStreamType // ignore: cast_nullable_to_non_nullable
              as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime // ignore: cast_nullable_to_non_nullable
              as int,
      frozenRate: frozenRate == freezed
          ? _value.frozenRate
          : frozenRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime // ignore: cast_nullable_to_non_nullable
              as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RemoteVideoStatsCopyWith<$Res>
    implements $RemoteVideoStatsCopyWith<$Res> {
  factory _$$_RemoteVideoStatsCopyWith(
          _$_RemoteVideoStats value, $Res Function(_$_RemoteVideoStats) then) =
      __$$_RemoteVideoStatsCopyWithImpl<$Res>;
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
class __$$_RemoteVideoStatsCopyWithImpl<$Res>
    extends _$RemoteVideoStatsCopyWithImpl<$Res>
    implements _$$_RemoteVideoStatsCopyWith<$Res> {
  __$$_RemoteVideoStatsCopyWithImpl(
      _$_RemoteVideoStats _value, $Res Function(_$_RemoteVideoStats) _then)
      : super(_value, (v) => _then(v as _$_RemoteVideoStats));

  @override
  _$_RemoteVideoStats get _value => super._value as _$_RemoteVideoStats;

  @override
  $Res call({
    Object? uid = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? receivedBitrate = freezed,
    Object? decoderOutputFrameRate = freezed,
    Object? rendererOutputFrameRate = freezed,
    Object? packetLossRate = freezed,
    Object? rxStreamType = freezed,
    Object? totalFrozenTime = freezed,
    Object? frozenRate = freezed,
    Object? totalActiveTime = freezed,
    Object? publishDuration = freezed,
  }) {
    return _then(_$_RemoteVideoStats(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      receivedBitrate: receivedBitrate == freezed
          ? _value.receivedBitrate
          : receivedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      decoderOutputFrameRate: decoderOutputFrameRate == freezed
          ? _value.decoderOutputFrameRate
          : decoderOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      packetLossRate: packetLossRate == freezed
          ? _value.packetLossRate
          : packetLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      rxStreamType: rxStreamType == freezed
          ? _value.rxStreamType
          : rxStreamType // ignore: cast_nullable_to_non_nullable
              as int,
      totalFrozenTime: totalFrozenTime == freezed
          ? _value.totalFrozenTime
          : totalFrozenTime // ignore: cast_nullable_to_non_nullable
              as int,
      frozenRate: frozenRate == freezed
          ? _value.frozenRate
          : frozenRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalActiveTime: totalActiveTime == freezed
          ? _value.totalActiveTime
          : totalActiveTime // ignore: cast_nullable_to_non_nullable
              as int,
      publishDuration: publishDuration == freezed
          ? _value.publishDuration
          : publishDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteVideoStats implements _RemoteVideoStats {
  const _$_RemoteVideoStats(
      {required this.uid,
      required this.width,
      required this.height,
      required this.receivedBitrate,
      required this.decoderOutputFrameRate,
      required this.rendererOutputFrameRate,
      required this.packetLossRate,
      required this.rxStreamType,
      required this.totalFrozenTime,
      required this.frozenRate,
      required this.totalActiveTime,
      required this.publishDuration});

  factory _$_RemoteVideoStats.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteVideoStatsFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_RemoteVideoStats &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.receivedBitrate, receivedBitrate) &&
            const DeepCollectionEquality()
                .equals(other.decoderOutputFrameRate, decoderOutputFrameRate) &&
            const DeepCollectionEquality().equals(
                other.rendererOutputFrameRate, rendererOutputFrameRate) &&
            const DeepCollectionEquality()
                .equals(other.packetLossRate, packetLossRate) &&
            const DeepCollectionEquality()
                .equals(other.rxStreamType, rxStreamType) &&
            const DeepCollectionEquality()
                .equals(other.totalFrozenTime, totalFrozenTime) &&
            const DeepCollectionEquality()
                .equals(other.frozenRate, frozenRate) &&
            const DeepCollectionEquality()
                .equals(other.totalActiveTime, totalActiveTime) &&
            const DeepCollectionEquality()
                .equals(other.publishDuration, publishDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(receivedBitrate),
      const DeepCollectionEquality().hash(decoderOutputFrameRate),
      const DeepCollectionEquality().hash(rendererOutputFrameRate),
      const DeepCollectionEquality().hash(packetLossRate),
      const DeepCollectionEquality().hash(rxStreamType),
      const DeepCollectionEquality().hash(totalFrozenTime),
      const DeepCollectionEquality().hash(frozenRate),
      const DeepCollectionEquality().hash(totalActiveTime),
      const DeepCollectionEquality().hash(publishDuration));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteVideoStatsCopyWith<_$_RemoteVideoStats> get copyWith =>
      __$$_RemoteVideoStatsCopyWithImpl<_$_RemoteVideoStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteVideoStatsToJson(this);
  }
}

abstract class _RemoteVideoStats implements RemoteVideoStats {
  const factory _RemoteVideoStats(
      {required final int uid,
      required final int width,
      required final int height,
      required final int receivedBitrate,
      required final int decoderOutputFrameRate,
      required final int rendererOutputFrameRate,
      required final int packetLossRate,
      required final int rxStreamType,
      required final int totalFrozenTime,
      required final int frozenRate,
      required final int totalActiveTime,
      required final int publishDuration}) = _$_RemoteVideoStats;

  factory _RemoteVideoStats.fromJson(Map<String, dynamic> json) =
      _$_RemoteVideoStats.fromJson;

  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get receivedBitrate => throw _privateConstructorUsedError;
  @override
  int get decoderOutputFrameRate => throw _privateConstructorUsedError;
  @override
  int get rendererOutputFrameRate => throw _privateConstructorUsedError;
  @override
  int get packetLossRate => throw _privateConstructorUsedError;
  @override
  int get rxStreamType => throw _privateConstructorUsedError;
  @override
  int get totalFrozenTime => throw _privateConstructorUsedError;
  @override
  int get frozenRate => throw _privateConstructorUsedError;
  @override
  int get totalActiveTime => throw _privateConstructorUsedError;
  @override
  int get publishDuration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteVideoStatsCopyWith<_$_RemoteVideoStats> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalAudioStats _$LocalAudioStatsFromJson(Map<String, dynamic> json) {
  return _LocalAudioStats.fromJson(json);
}

/// @nodoc
mixin _$LocalAudioStats {
  int get numChannels => throw _privateConstructorUsedError;
  int get sentSampleRate => throw _privateConstructorUsedError;
  int get sentBitrate => throw _privateConstructorUsedError;
  int get txPacketLossRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalAudioStatsCopyWith<LocalAudioStats> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? numChannels = freezed,
    Object? sentSampleRate = freezed,
    Object? sentBitrate = freezed,
    Object? txPacketLossRate = freezed,
  }) {
    return _then(_value.copyWith(
      numChannels: numChannels == freezed
          ? _value.numChannels
          : numChannels // ignore: cast_nullable_to_non_nullable
              as int,
      sentSampleRate: sentSampleRate == freezed
          ? _value.sentSampleRate
          : sentSampleRate // ignore: cast_nullable_to_non_nullable
              as int,
      sentBitrate: sentBitrate == freezed
          ? _value.sentBitrate
          : sentBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalAudioStatsCopyWith<$Res>
    implements $LocalAudioStatsCopyWith<$Res> {
  factory _$$_LocalAudioStatsCopyWith(
          _$_LocalAudioStats value, $Res Function(_$_LocalAudioStats) then) =
      __$$_LocalAudioStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numChannels,
      int sentSampleRate,
      int sentBitrate,
      int txPacketLossRate});
}

/// @nodoc
class __$$_LocalAudioStatsCopyWithImpl<$Res>
    extends _$LocalAudioStatsCopyWithImpl<$Res>
    implements _$$_LocalAudioStatsCopyWith<$Res> {
  __$$_LocalAudioStatsCopyWithImpl(
      _$_LocalAudioStats _value, $Res Function(_$_LocalAudioStats) _then)
      : super(_value, (v) => _then(v as _$_LocalAudioStats));

  @override
  _$_LocalAudioStats get _value => super._value as _$_LocalAudioStats;

  @override
  $Res call({
    Object? numChannels = freezed,
    Object? sentSampleRate = freezed,
    Object? sentBitrate = freezed,
    Object? txPacketLossRate = freezed,
  }) {
    return _then(_$_LocalAudioStats(
      numChannels: numChannels == freezed
          ? _value.numChannels
          : numChannels // ignore: cast_nullable_to_non_nullable
              as int,
      sentSampleRate: sentSampleRate == freezed
          ? _value.sentSampleRate
          : sentSampleRate // ignore: cast_nullable_to_non_nullable
              as int,
      sentBitrate: sentBitrate == freezed
          ? _value.sentBitrate
          : sentBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalAudioStats implements _LocalAudioStats {
  const _$_LocalAudioStats(
      {required this.numChannels,
      required this.sentSampleRate,
      required this.sentBitrate,
      required this.txPacketLossRate});

  factory _$_LocalAudioStats.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAudioStatsFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_LocalAudioStats &&
            const DeepCollectionEquality()
                .equals(other.numChannels, numChannels) &&
            const DeepCollectionEquality()
                .equals(other.sentSampleRate, sentSampleRate) &&
            const DeepCollectionEquality()
                .equals(other.sentBitrate, sentBitrate) &&
            const DeepCollectionEquality()
                .equals(other.txPacketLossRate, txPacketLossRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numChannels),
      const DeepCollectionEquality().hash(sentSampleRate),
      const DeepCollectionEquality().hash(sentBitrate),
      const DeepCollectionEquality().hash(txPacketLossRate));

  @JsonKey(ignore: true)
  @override
  _$$_LocalAudioStatsCopyWith<_$_LocalAudioStats> get copyWith =>
      __$$_LocalAudioStatsCopyWithImpl<_$_LocalAudioStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalAudioStatsToJson(this);
  }
}

abstract class _LocalAudioStats implements LocalAudioStats {
  const factory _LocalAudioStats(
      {required final int numChannels,
      required final int sentSampleRate,
      required final int sentBitrate,
      required final int txPacketLossRate}) = _$_LocalAudioStats;

  factory _LocalAudioStats.fromJson(Map<String, dynamic> json) =
      _$_LocalAudioStats.fromJson;

  @override
  int get numChannels => throw _privateConstructorUsedError;
  @override
  int get sentSampleRate => throw _privateConstructorUsedError;
  @override
  int get sentBitrate => throw _privateConstructorUsedError;
  @override
  int get txPacketLossRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalAudioStatsCopyWith<_$_LocalAudioStats> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalVideoStats _$LocalVideoStatsFromJson(Map<String, dynamic> json) {
  return _LocalVideoStats.fromJson(json);
}

/// @nodoc
mixin _$LocalVideoStats {
  int get sentBitrate => throw _privateConstructorUsedError;
  int get sentFrameRate => throw _privateConstructorUsedError;
  int get encoderOutputFrameRate => throw _privateConstructorUsedError;
  int get rendererOutputFrameRate => throw _privateConstructorUsedError;
  int get targetBitrate => throw _privateConstructorUsedError;
  int get targetFrameRate => throw _privateConstructorUsedError;
  int get qualityAdaptIndication => throw _privateConstructorUsedError;
  int get encodedBitrate => throw _privateConstructorUsedError;
  int get encodedFrameWidth => throw _privateConstructorUsedError;
  int get encodedFrameHeight => throw _privateConstructorUsedError;
  int get encodedFrameCount => throw _privateConstructorUsedError;
  int get codecType => throw _privateConstructorUsedError;
  int get txPacketLossRate => throw _privateConstructorUsedError;
  int get captureFrameRate => throw _privateConstructorUsedError;
  int get captureBrightnessLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalVideoStatsCopyWith<LocalVideoStats> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? sentBitrate = freezed,
    Object? sentFrameRate = freezed,
    Object? encoderOutputFrameRate = freezed,
    Object? rendererOutputFrameRate = freezed,
    Object? targetBitrate = freezed,
    Object? targetFrameRate = freezed,
    Object? qualityAdaptIndication = freezed,
    Object? encodedBitrate = freezed,
    Object? encodedFrameWidth = freezed,
    Object? encodedFrameHeight = freezed,
    Object? encodedFrameCount = freezed,
    Object? codecType = freezed,
    Object? txPacketLossRate = freezed,
    Object? captureFrameRate = freezed,
    Object? captureBrightnessLevel = freezed,
  }) {
    return _then(_value.copyWith(
      sentBitrate: sentBitrate == freezed
          ? _value.sentBitrate
          : sentBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      sentFrameRate: sentFrameRate == freezed
          ? _value.sentFrameRate
          : sentFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      encoderOutputFrameRate: encoderOutputFrameRate == freezed
          ? _value.encoderOutputFrameRate
          : encoderOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      targetBitrate: targetBitrate == freezed
          ? _value.targetBitrate
          : targetBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      targetFrameRate: targetFrameRate == freezed
          ? _value.targetFrameRate
          : targetFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      qualityAdaptIndication: qualityAdaptIndication == freezed
          ? _value.qualityAdaptIndication
          : qualityAdaptIndication // ignore: cast_nullable_to_non_nullable
              as int,
      encodedBitrate: encodedBitrate == freezed
          ? _value.encodedBitrate
          : encodedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameWidth: encodedFrameWidth == freezed
          ? _value.encodedFrameWidth
          : encodedFrameWidth // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameHeight: encodedFrameHeight == freezed
          ? _value.encodedFrameHeight
          : encodedFrameHeight // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameCount: encodedFrameCount == freezed
          ? _value.encodedFrameCount
          : encodedFrameCount // ignore: cast_nullable_to_non_nullable
              as int,
      codecType: codecType == freezed
          ? _value.codecType
          : codecType // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureFrameRate: captureFrameRate == freezed
          ? _value.captureFrameRate
          : captureFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureBrightnessLevel: captureBrightnessLevel == freezed
          ? _value.captureBrightnessLevel
          : captureBrightnessLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalVideoStatsCopyWith<$Res>
    implements $LocalVideoStatsCopyWith<$Res> {
  factory _$$_LocalVideoStatsCopyWith(
          _$_LocalVideoStats value, $Res Function(_$_LocalVideoStats) then) =
      __$$_LocalVideoStatsCopyWithImpl<$Res>;
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
class __$$_LocalVideoStatsCopyWithImpl<$Res>
    extends _$LocalVideoStatsCopyWithImpl<$Res>
    implements _$$_LocalVideoStatsCopyWith<$Res> {
  __$$_LocalVideoStatsCopyWithImpl(
      _$_LocalVideoStats _value, $Res Function(_$_LocalVideoStats) _then)
      : super(_value, (v) => _then(v as _$_LocalVideoStats));

  @override
  _$_LocalVideoStats get _value => super._value as _$_LocalVideoStats;

  @override
  $Res call({
    Object? sentBitrate = freezed,
    Object? sentFrameRate = freezed,
    Object? encoderOutputFrameRate = freezed,
    Object? rendererOutputFrameRate = freezed,
    Object? targetBitrate = freezed,
    Object? targetFrameRate = freezed,
    Object? qualityAdaptIndication = freezed,
    Object? encodedBitrate = freezed,
    Object? encodedFrameWidth = freezed,
    Object? encodedFrameHeight = freezed,
    Object? encodedFrameCount = freezed,
    Object? codecType = freezed,
    Object? txPacketLossRate = freezed,
    Object? captureFrameRate = freezed,
    Object? captureBrightnessLevel = freezed,
  }) {
    return _then(_$_LocalVideoStats(
      sentBitrate: sentBitrate == freezed
          ? _value.sentBitrate
          : sentBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      sentFrameRate: sentFrameRate == freezed
          ? _value.sentFrameRate
          : sentFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      encoderOutputFrameRate: encoderOutputFrameRate == freezed
          ? _value.encoderOutputFrameRate
          : encoderOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      rendererOutputFrameRate: rendererOutputFrameRate == freezed
          ? _value.rendererOutputFrameRate
          : rendererOutputFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      targetBitrate: targetBitrate == freezed
          ? _value.targetBitrate
          : targetBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      targetFrameRate: targetFrameRate == freezed
          ? _value.targetFrameRate
          : targetFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      qualityAdaptIndication: qualityAdaptIndication == freezed
          ? _value.qualityAdaptIndication
          : qualityAdaptIndication // ignore: cast_nullable_to_non_nullable
              as int,
      encodedBitrate: encodedBitrate == freezed
          ? _value.encodedBitrate
          : encodedBitrate // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameWidth: encodedFrameWidth == freezed
          ? _value.encodedFrameWidth
          : encodedFrameWidth // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameHeight: encodedFrameHeight == freezed
          ? _value.encodedFrameHeight
          : encodedFrameHeight // ignore: cast_nullable_to_non_nullable
              as int,
      encodedFrameCount: encodedFrameCount == freezed
          ? _value.encodedFrameCount
          : encodedFrameCount // ignore: cast_nullable_to_non_nullable
              as int,
      codecType: codecType == freezed
          ? _value.codecType
          : codecType // ignore: cast_nullable_to_non_nullable
              as int,
      txPacketLossRate: txPacketLossRate == freezed
          ? _value.txPacketLossRate
          : txPacketLossRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureFrameRate: captureFrameRate == freezed
          ? _value.captureFrameRate
          : captureFrameRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureBrightnessLevel: captureBrightnessLevel == freezed
          ? _value.captureBrightnessLevel
          : captureBrightnessLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalVideoStats implements _LocalVideoStats {
  const _$_LocalVideoStats(
      {required this.sentBitrate,
      required this.sentFrameRate,
      required this.encoderOutputFrameRate,
      required this.rendererOutputFrameRate,
      required this.targetBitrate,
      required this.targetFrameRate,
      required this.qualityAdaptIndication,
      required this.encodedBitrate,
      required this.encodedFrameWidth,
      required this.encodedFrameHeight,
      required this.encodedFrameCount,
      required this.codecType,
      required this.txPacketLossRate,
      required this.captureFrameRate,
      required this.captureBrightnessLevel});

  factory _$_LocalVideoStats.fromJson(Map<String, dynamic> json) =>
      _$$_LocalVideoStatsFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_LocalVideoStats &&
            const DeepCollectionEquality()
                .equals(other.sentBitrate, sentBitrate) &&
            const DeepCollectionEquality()
                .equals(other.sentFrameRate, sentFrameRate) &&
            const DeepCollectionEquality()
                .equals(other.encoderOutputFrameRate, encoderOutputFrameRate) &&
            const DeepCollectionEquality().equals(
                other.rendererOutputFrameRate, rendererOutputFrameRate) &&
            const DeepCollectionEquality()
                .equals(other.targetBitrate, targetBitrate) &&
            const DeepCollectionEquality()
                .equals(other.targetFrameRate, targetFrameRate) &&
            const DeepCollectionEquality()
                .equals(other.qualityAdaptIndication, qualityAdaptIndication) &&
            const DeepCollectionEquality()
                .equals(other.encodedBitrate, encodedBitrate) &&
            const DeepCollectionEquality()
                .equals(other.encodedFrameWidth, encodedFrameWidth) &&
            const DeepCollectionEquality()
                .equals(other.encodedFrameHeight, encodedFrameHeight) &&
            const DeepCollectionEquality()
                .equals(other.encodedFrameCount, encodedFrameCount) &&
            const DeepCollectionEquality().equals(other.codecType, codecType) &&
            const DeepCollectionEquality()
                .equals(other.txPacketLossRate, txPacketLossRate) &&
            const DeepCollectionEquality()
                .equals(other.captureFrameRate, captureFrameRate) &&
            const DeepCollectionEquality()
                .equals(other.captureBrightnessLevel, captureBrightnessLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sentBitrate),
      const DeepCollectionEquality().hash(sentFrameRate),
      const DeepCollectionEquality().hash(encoderOutputFrameRate),
      const DeepCollectionEquality().hash(rendererOutputFrameRate),
      const DeepCollectionEquality().hash(targetBitrate),
      const DeepCollectionEquality().hash(targetFrameRate),
      const DeepCollectionEquality().hash(qualityAdaptIndication),
      const DeepCollectionEquality().hash(encodedBitrate),
      const DeepCollectionEquality().hash(encodedFrameWidth),
      const DeepCollectionEquality().hash(encodedFrameHeight),
      const DeepCollectionEquality().hash(encodedFrameCount),
      const DeepCollectionEquality().hash(codecType),
      const DeepCollectionEquality().hash(txPacketLossRate),
      const DeepCollectionEquality().hash(captureFrameRate),
      const DeepCollectionEquality().hash(captureBrightnessLevel));

  @JsonKey(ignore: true)
  @override
  _$$_LocalVideoStatsCopyWith<_$_LocalVideoStats> get copyWith =>
      __$$_LocalVideoStatsCopyWithImpl<_$_LocalVideoStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalVideoStatsToJson(this);
  }
}

abstract class _LocalVideoStats implements LocalVideoStats {
  const factory _LocalVideoStats(
      {required final int sentBitrate,
      required final int sentFrameRate,
      required final int encoderOutputFrameRate,
      required final int rendererOutputFrameRate,
      required final int targetBitrate,
      required final int targetFrameRate,
      required final int qualityAdaptIndication,
      required final int encodedBitrate,
      required final int encodedFrameWidth,
      required final int encodedFrameHeight,
      required final int encodedFrameCount,
      required final int codecType,
      required final int txPacketLossRate,
      required final int captureFrameRate,
      required final int captureBrightnessLevel}) = _$_LocalVideoStats;

  factory _LocalVideoStats.fromJson(Map<String, dynamic> json) =
      _$_LocalVideoStats.fromJson;

  @override
  int get sentBitrate => throw _privateConstructorUsedError;
  @override
  int get sentFrameRate => throw _privateConstructorUsedError;
  @override
  int get encoderOutputFrameRate => throw _privateConstructorUsedError;
  @override
  int get rendererOutputFrameRate => throw _privateConstructorUsedError;
  @override
  int get targetBitrate => throw _privateConstructorUsedError;
  @override
  int get targetFrameRate => throw _privateConstructorUsedError;
  @override
  int get qualityAdaptIndication => throw _privateConstructorUsedError;
  @override
  int get encodedBitrate => throw _privateConstructorUsedError;
  @override
  int get encodedFrameWidth => throw _privateConstructorUsedError;
  @override
  int get encodedFrameHeight => throw _privateConstructorUsedError;
  @override
  int get encodedFrameCount => throw _privateConstructorUsedError;
  @override
  int get codecType => throw _privateConstructorUsedError;
  @override
  int get txPacketLossRate => throw _privateConstructorUsedError;
  @override
  int get captureFrameRate => throw _privateConstructorUsedError;
  @override
  int get captureBrightnessLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalVideoStatsCopyWith<_$_LocalVideoStats> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioVolumeInfo _$AudioVolumeInfoFromJson(Map<String, dynamic> json) {
  return _AudioVolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$AudioVolumeInfo {
  int get uid => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;
  int get vad => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioVolumeInfoCopyWith<AudioVolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? uid = freezed,
    Object? volume = freezed,
    Object? vad = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      vad: vad == freezed
          ? _value.vad
          : vad // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioVolumeInfoCopyWith<$Res>
    implements $AudioVolumeInfoCopyWith<$Res> {
  factory _$$_AudioVolumeInfoCopyWith(
          _$_AudioVolumeInfo value, $Res Function(_$_AudioVolumeInfo) then) =
      __$$_AudioVolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call({int uid, int volume, int vad, String channelId});
}

/// @nodoc
class __$$_AudioVolumeInfoCopyWithImpl<$Res>
    extends _$AudioVolumeInfoCopyWithImpl<$Res>
    implements _$$_AudioVolumeInfoCopyWith<$Res> {
  __$$_AudioVolumeInfoCopyWithImpl(
      _$_AudioVolumeInfo _value, $Res Function(_$_AudioVolumeInfo) _then)
      : super(_value, (v) => _then(v as _$_AudioVolumeInfo));

  @override
  _$_AudioVolumeInfo get _value => super._value as _$_AudioVolumeInfo;

  @override
  $Res call({
    Object? uid = freezed,
    Object? volume = freezed,
    Object? vad = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_$_AudioVolumeInfo(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      vad: vad == freezed
          ? _value.vad
          : vad // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudioVolumeInfo implements _AudioVolumeInfo {
  const _$_AudioVolumeInfo(
      {required this.uid,
      required this.volume,
      required this.vad,
      required this.channelId});

  factory _$_AudioVolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AudioVolumeInfoFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_AudioVolumeInfo &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.vad, vad) &&
            const DeepCollectionEquality().equals(other.channelId, channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(vad),
      const DeepCollectionEquality().hash(channelId));

  @JsonKey(ignore: true)
  @override
  _$$_AudioVolumeInfoCopyWith<_$_AudioVolumeInfo> get copyWith =>
      __$$_AudioVolumeInfoCopyWithImpl<_$_AudioVolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioVolumeInfoToJson(this);
  }
}

abstract class _AudioVolumeInfo implements AudioVolumeInfo {
  const factory _AudioVolumeInfo(
      {required final int uid,
      required final int volume,
      required final int vad,
      required final String channelId}) = _$_AudioVolumeInfo;

  factory _AudioVolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_AudioVolumeInfo.fromJson;

  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  int get volume => throw _privateConstructorUsedError;
  @override
  int get vad => throw _privateConstructorUsedError;
  @override
  String get channelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AudioVolumeInfoCopyWith<_$_AudioVolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  int get uid => throw _privateConstructorUsedError;
  AudioRemoteState get audioState => throw _privateConstructorUsedError;
  VideoRemoteState get videoState => throw _privateConstructorUsedError;
  RemoteAudioStats? get audioStats => throw _privateConstructorUsedError;
  RemoteVideoStats? get videoStats => throw _privateConstructorUsedError;
  AudioVolumeInfo? get volumeInfo => throw _privateConstructorUsedError;
  bool get hasFrames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
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
      RemoteAudioStats? audioStats,
      RemoteVideoStats? videoStats,
      AudioVolumeInfo? volumeInfo,
      bool hasFrames});

  $RemoteAudioStatsCopyWith<$Res>? get audioStats;
  $RemoteVideoStatsCopyWith<$Res>? get videoStats;
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo;
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  final Participant _value;
  // ignore: unused_field
  final $Res Function(Participant) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? audioState = freezed,
    Object? videoState = freezed,
    Object? audioStats = freezed,
    Object? videoStats = freezed,
    Object? volumeInfo = freezed,
    Object? hasFrames = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioRemoteState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState // ignore: cast_nullable_to_non_nullable
              as VideoRemoteState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats // ignore: cast_nullable_to_non_nullable
              as RemoteAudioStats?,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats // ignore: cast_nullable_to_non_nullable
              as RemoteVideoStats?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as AudioVolumeInfo?,
      hasFrames: hasFrames == freezed
          ? _value.hasFrames
          : hasFrames // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $RemoteAudioStatsCopyWith<$Res>? get audioStats {
    if (_value.audioStats == null) {
      return null;
    }

    return $RemoteAudioStatsCopyWith<$Res>(_value.audioStats!, (value) {
      return _then(_value.copyWith(audioStats: value));
    });
  }

  @override
  $RemoteVideoStatsCopyWith<$Res>? get videoStats {
    if (_value.videoStats == null) {
      return null;
    }

    return $RemoteVideoStatsCopyWith<$Res>(_value.videoStats!, (value) {
      return _then(_value.copyWith(videoStats: value));
    });
  }

  @override
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }

    return $AudioVolumeInfoCopyWith<$Res>(_value.volumeInfo!, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$_ParticipantCopyWith(
          _$_Participant value, $Res Function(_$_Participant) then) =
      __$$_ParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      AudioRemoteState audioState,
      VideoRemoteState videoState,
      RemoteAudioStats? audioStats,
      RemoteVideoStats? videoStats,
      AudioVolumeInfo? volumeInfo,
      bool hasFrames});

  @override
  $RemoteAudioStatsCopyWith<$Res>? get audioStats;
  @override
  $RemoteVideoStatsCopyWith<$Res>? get videoStats;
  @override
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo;
}

/// @nodoc
class __$$_ParticipantCopyWithImpl<$Res> extends _$ParticipantCopyWithImpl<$Res>
    implements _$$_ParticipantCopyWith<$Res> {
  __$$_ParticipantCopyWithImpl(
      _$_Participant _value, $Res Function(_$_Participant) _then)
      : super(_value, (v) => _then(v as _$_Participant));

  @override
  _$_Participant get _value => super._value as _$_Participant;

  @override
  $Res call({
    Object? uid = freezed,
    Object? audioState = freezed,
    Object? videoState = freezed,
    Object? audioStats = freezed,
    Object? videoStats = freezed,
    Object? volumeInfo = freezed,
    Object? hasFrames = freezed,
  }) {
    return _then(_$_Participant(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioRemoteState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState // ignore: cast_nullable_to_non_nullable
              as VideoRemoteState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats // ignore: cast_nullable_to_non_nullable
              as RemoteAudioStats?,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats // ignore: cast_nullable_to_non_nullable
              as RemoteVideoStats?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as AudioVolumeInfo?,
      hasFrames: hasFrames == freezed
          ? _value.hasFrames
          : hasFrames // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Participant implements _Participant {
  const _$_Participant(
      {required this.uid,
      this.audioState = AudioRemoteState.stopped,
      this.videoState = VideoRemoteState.stopped,
      this.audioStats,
      this.videoStats,
      this.volumeInfo,
      this.hasFrames = false});

  factory _$_Participant.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantFromJson(json);

  @override
  final int uid;
  @override
  @JsonKey()
  final AudioRemoteState audioState;
  @override
  @JsonKey()
  final VideoRemoteState videoState;
  @override
  final RemoteAudioStats? audioStats;
  @override
  final RemoteVideoStats? videoStats;
  @override
  final AudioVolumeInfo? volumeInfo;
  @override
  @JsonKey()
  final bool hasFrames;

  @override
  String toString() {
    return 'Participant(uid: $uid, audioState: $audioState, videoState: $videoState, audioStats: $audioStats, videoStats: $videoStats, volumeInfo: $volumeInfo, hasFrames: $hasFrames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participant &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.audioState, audioState) &&
            const DeepCollectionEquality()
                .equals(other.videoState, videoState) &&
            const DeepCollectionEquality()
                .equals(other.audioStats, audioStats) &&
            const DeepCollectionEquality()
                .equals(other.videoStats, videoStats) &&
            const DeepCollectionEquality()
                .equals(other.volumeInfo, volumeInfo) &&
            const DeepCollectionEquality().equals(other.hasFrames, hasFrames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(audioState),
      const DeepCollectionEquality().hash(videoState),
      const DeepCollectionEquality().hash(audioStats),
      const DeepCollectionEquality().hash(videoStats),
      const DeepCollectionEquality().hash(volumeInfo),
      const DeepCollectionEquality().hash(hasFrames));

  @JsonKey(ignore: true)
  @override
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      __$$_ParticipantCopyWithImpl<_$_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantToJson(this);
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {required final int uid,
      final AudioRemoteState audioState,
      final VideoRemoteState videoState,
      final RemoteAudioStats? audioStats,
      final RemoteVideoStats? videoStats,
      final AudioVolumeInfo? volumeInfo,
      final bool hasFrames}) = _$_Participant;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$_Participant.fromJson;

  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  AudioRemoteState get audioState => throw _privateConstructorUsedError;
  @override
  VideoRemoteState get videoState => throw _privateConstructorUsedError;
  @override
  RemoteAudioStats? get audioStats => throw _privateConstructorUsedError;
  @override
  RemoteVideoStats? get videoStats => throw _privateConstructorUsedError;
  @override
  AudioVolumeInfo? get volumeInfo => throw _privateConstructorUsedError;
  @override
  bool get hasFrames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalParticipant _$LocalParticipantFromJson(Map<String, dynamic> json) {
  return _LocalParticipant.fromJson(json);
}

/// @nodoc
mixin _$LocalParticipant {
  int? get uid => throw _privateConstructorUsedError;
  AudioLocalState get audioState => throw _privateConstructorUsedError;
  VideoLocalState get videoState => throw _privateConstructorUsedError;
  LocalAudioStats? get audioStats => throw _privateConstructorUsedError;
  LocalVideoStats? get videoStats => throw _privateConstructorUsedError;
  AudioVolumeInfo? get volumeInfo => throw _privateConstructorUsedError;
  bool get hasFrames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalParticipantCopyWith<LocalParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalParticipantCopyWith<$Res> {
  factory $LocalParticipantCopyWith(
          LocalParticipant value, $Res Function(LocalParticipant) then) =
      _$LocalParticipantCopyWithImpl<$Res>;
  $Res call(
      {int? uid,
      AudioLocalState audioState,
      VideoLocalState videoState,
      LocalAudioStats? audioStats,
      LocalVideoStats? videoStats,
      AudioVolumeInfo? volumeInfo,
      bool hasFrames});

  $LocalAudioStatsCopyWith<$Res>? get audioStats;
  $LocalVideoStatsCopyWith<$Res>? get videoStats;
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo;
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
    Object? uid = freezed,
    Object? audioState = freezed,
    Object? videoState = freezed,
    Object? audioStats = freezed,
    Object? videoStats = freezed,
    Object? volumeInfo = freezed,
    Object? hasFrames = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioLocalState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState // ignore: cast_nullable_to_non_nullable
              as VideoLocalState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats // ignore: cast_nullable_to_non_nullable
              as LocalAudioStats?,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats // ignore: cast_nullable_to_non_nullable
              as LocalVideoStats?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as AudioVolumeInfo?,
      hasFrames: hasFrames == freezed
          ? _value.hasFrames
          : hasFrames // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LocalAudioStatsCopyWith<$Res>? get audioStats {
    if (_value.audioStats == null) {
      return null;
    }

    return $LocalAudioStatsCopyWith<$Res>(_value.audioStats!, (value) {
      return _then(_value.copyWith(audioStats: value));
    });
  }

  @override
  $LocalVideoStatsCopyWith<$Res>? get videoStats {
    if (_value.videoStats == null) {
      return null;
    }

    return $LocalVideoStatsCopyWith<$Res>(_value.videoStats!, (value) {
      return _then(_value.copyWith(videoStats: value));
    });
  }

  @override
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }

    return $AudioVolumeInfoCopyWith<$Res>(_value.volumeInfo!, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocalParticipantCopyWith<$Res>
    implements $LocalParticipantCopyWith<$Res> {
  factory _$$_LocalParticipantCopyWith(
          _$_LocalParticipant value, $Res Function(_$_LocalParticipant) then) =
      __$$_LocalParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? uid,
      AudioLocalState audioState,
      VideoLocalState videoState,
      LocalAudioStats? audioStats,
      LocalVideoStats? videoStats,
      AudioVolumeInfo? volumeInfo,
      bool hasFrames});

  @override
  $LocalAudioStatsCopyWith<$Res>? get audioStats;
  @override
  $LocalVideoStatsCopyWith<$Res>? get videoStats;
  @override
  $AudioVolumeInfoCopyWith<$Res>? get volumeInfo;
}

/// @nodoc
class __$$_LocalParticipantCopyWithImpl<$Res>
    extends _$LocalParticipantCopyWithImpl<$Res>
    implements _$$_LocalParticipantCopyWith<$Res> {
  __$$_LocalParticipantCopyWithImpl(
      _$_LocalParticipant _value, $Res Function(_$_LocalParticipant) _then)
      : super(_value, (v) => _then(v as _$_LocalParticipant));

  @override
  _$_LocalParticipant get _value => super._value as _$_LocalParticipant;

  @override
  $Res call({
    Object? uid = freezed,
    Object? audioState = freezed,
    Object? videoState = freezed,
    Object? audioStats = freezed,
    Object? videoStats = freezed,
    Object? volumeInfo = freezed,
    Object? hasFrames = freezed,
  }) {
    return _then(_$_LocalParticipant(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioLocalState,
      videoState: videoState == freezed
          ? _value.videoState
          : videoState // ignore: cast_nullable_to_non_nullable
              as VideoLocalState,
      audioStats: audioStats == freezed
          ? _value.audioStats
          : audioStats // ignore: cast_nullable_to_non_nullable
              as LocalAudioStats?,
      videoStats: videoStats == freezed
          ? _value.videoStats
          : videoStats // ignore: cast_nullable_to_non_nullable
              as LocalVideoStats?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as AudioVolumeInfo?,
      hasFrames: hasFrames == freezed
          ? _value.hasFrames
          : hasFrames // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalParticipant implements _LocalParticipant {
  const _$_LocalParticipant(
      {this.uid,
      this.audioState = AudioLocalState.stopped,
      this.videoState = VideoLocalState.stopped,
      this.audioStats,
      this.videoStats,
      this.volumeInfo,
      this.hasFrames = false});

  factory _$_LocalParticipant.fromJson(Map<String, dynamic> json) =>
      _$$_LocalParticipantFromJson(json);

  @override
  final int? uid;
  @override
  @JsonKey()
  final AudioLocalState audioState;
  @override
  @JsonKey()
  final VideoLocalState videoState;
  @override
  final LocalAudioStats? audioStats;
  @override
  final LocalVideoStats? videoStats;
  @override
  final AudioVolumeInfo? volumeInfo;
  @override
  @JsonKey()
  final bool hasFrames;

  @override
  String toString() {
    return 'LocalParticipant(uid: $uid, audioState: $audioState, videoState: $videoState, audioStats: $audioStats, videoStats: $videoStats, volumeInfo: $volumeInfo, hasFrames: $hasFrames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalParticipant &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.audioState, audioState) &&
            const DeepCollectionEquality()
                .equals(other.videoState, videoState) &&
            const DeepCollectionEquality()
                .equals(other.audioStats, audioStats) &&
            const DeepCollectionEquality()
                .equals(other.videoStats, videoStats) &&
            const DeepCollectionEquality()
                .equals(other.volumeInfo, volumeInfo) &&
            const DeepCollectionEquality().equals(other.hasFrames, hasFrames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(audioState),
      const DeepCollectionEquality().hash(videoState),
      const DeepCollectionEquality().hash(audioStats),
      const DeepCollectionEquality().hash(videoStats),
      const DeepCollectionEquality().hash(volumeInfo),
      const DeepCollectionEquality().hash(hasFrames));

  @JsonKey(ignore: true)
  @override
  _$$_LocalParticipantCopyWith<_$_LocalParticipant> get copyWith =>
      __$$_LocalParticipantCopyWithImpl<_$_LocalParticipant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalParticipantToJson(this);
  }
}

abstract class _LocalParticipant implements LocalParticipant {
  const factory _LocalParticipant(
      {final int? uid,
      final AudioLocalState audioState,
      final VideoLocalState videoState,
      final LocalAudioStats? audioStats,
      final LocalVideoStats? videoStats,
      final AudioVolumeInfo? volumeInfo,
      final bool hasFrames}) = _$_LocalParticipant;

  factory _LocalParticipant.fromJson(Map<String, dynamic> json) =
      _$_LocalParticipant.fromJson;

  @override
  int? get uid => throw _privateConstructorUsedError;
  @override
  AudioLocalState get audioState => throw _privateConstructorUsedError;
  @override
  VideoLocalState get videoState => throw _privateConstructorUsedError;
  @override
  LocalAudioStats? get audioStats => throw _privateConstructorUsedError;
  @override
  LocalVideoStats? get videoStats => throw _privateConstructorUsedError;
  @override
  AudioVolumeInfo? get volumeInfo => throw _privateConstructorUsedError;
  @override
  bool get hasFrames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalParticipantCopyWith<_$_LocalParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}
