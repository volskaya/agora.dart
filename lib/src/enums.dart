import 'package:json_annotation/json_annotation.dart';

enum AreaCode {
  @JsonValue(0x00000001)
  china,
  @JsonValue(0x00000002)
  northAmerica,
  @JsonValue(0x00000004)
  europe,
  @JsonValue(0x00000008)
  asia,
  @JsonValue(0x00000010)
  japan,
  @JsonValue(0x00000020)
  india,
  @JsonValue(-1)
  global,
}

/// Self-defined audio codec profile.
enum AudioCodecProfileType {
  /// (Default) LCAAC, which is the low-complexity audio codec profile.
  @JsonValue(0)
  lcaac,

  /// HEAAC, which is the high-efficiency audio codec profile.
  @JsonValue(1)
  heaac,
}

/// Audio equalization band frequency.
enum AudioEqualizationBandFrequency {
  /// 31 Hz.
  @JsonValue(0)
  band31,

  /// 62 Hz.
  @JsonValue(1)
  band62,

  /// 125 Hz.
  @JsonValue(2)
  band125,

  /// 250 Hz.
  @JsonValue(3)
  band250,

  /// 500 Hz.
  @JsonValue(4)
  band500,

  /// 1 kHz.
  @JsonValue(5)
  band1k,

  /// 2 kHz.
  @JsonValue(6)
  band2k,

  /// 4 kHz.
  @JsonValue(7)
  band4k,

  /// 8 kHz.
  @JsonValue(8)
  band8k,

  /// 16 kHz.
  @JsonValue(9)
  band16k,
}

/// The error information of the local audio.
enum AudioLocalError {
  /// The local audio is normal.
  @JsonValue(0)
  ok,

  /// No specified reason for the local audio failure.
  @JsonValue(1)
  failure,

  /// No permission to use the local audio device.
  @JsonValue(2)
  deviceNoPermission,

  /// The microphone is in use.
  @JsonValue(3)
  deviceBusy,

  /// The local audio recording fails. Check whether the recording device is working properly.
  @JsonValue(4)
  recordFailure,

  /// The local audio encoding fails.
  @JsonValue(5)
  encodeFailure,
}

/// The state of the local audio.
enum AudioLocalState {
  /// The local audio is in the initial state.
  @JsonValue(0)
  stopped,

  /// The recording device starts successfully.
  @JsonValue(1)
  recording,

  /// The first audio frame encodes successfully.
  @JsonValue(2)
  encoding,

  /// The local audio fails to start.
  @JsonValue(3)
  failed,
}

/// The error code of the audio mixing file.
enum AudioMixingErrorCode {
  /// The SDK cannot open the audio mixing file.
  @JsonValue(701)
  canNotOpen,

  /// The SDK opens the audio mixing file too frequently.
  @JsonValue(702)
  tooFrequentCall,

  /// The opening of the audio mixing file is interrupted.
  @JsonValue(703)
  interruptedEOF,

  /// No error.
  @JsonValue(0)
  ok,
}

/// The state of the audio mixing file.
enum AudioMixingStateCode {
  /// The audio mixing file is playing.
  @JsonValue(710)
  playing,

  /// The audio mixing file pauses playing.
  @JsonValue(711)
  paused,

  /// The audio mixing file stops playing.
  @JsonValue(713)
  stopped,

  /// An exception occurs when playing the audio mixing file.
  @JsonValue(714)
  failed,
}

/// Audio output routing.
enum AudioOutputRouting {
  /// Default.
  @JsonValue(-1)
  none,

  /// Headset.
  @JsonValue(0)
  headset,

  /// Earpiece.
  @JsonValue(1)
  earpiece,

  /// Headset with no microphone.
  @JsonValue(2)
  headsetNoMic,

  /// Speakerphone.
  @JsonValue(3)
  speakerphone,

  /// Loudspeaker.
  @JsonValue(4)
  loudspeaker,

  /// Bluetooth headset.
  @JsonValue(5)
  headsetBluetooth,
}

/// Audio profile.
enum AudioProfile {
  /// Default audio profile.
  /// - In the [ChannelProfile.Communication] profile: A sample rate of 32 KHz, audio encoding, mono, and a bitrate of up to 18 Kbps.
  /// - In the [ChannelProfile.LiveBroadcasting] profile: A sample rate of 48 KHz, music encoding, mono, and a bitrate of up to 64 Kbps.
  @JsonValue(0)
  none,

  /// A sample rate of 32 KHz, audio encoding, mono, and a bitrate of up to 18 Kbps.
  @JsonValue(1)
  speechStandard,

  /// A sample rate of 48 KHz, music encoding, mono, and a bitrate of up to 64 Kbps.
  @JsonValue(2)
  musicStandard,

  /// A sample rate of 48 KHz, music encoding, stereo, and a bitrate of up to 80 Kbps.
  @JsonValue(3)
  musicStandardStereo,

  /// A sample rate of 48 KHz, music encoding, mono, and a bitrate of up to 96 Kbps.
  @JsonValue(4)
  musicHighQuality,

  /// A sample rate of 48 KHz, music encoding, stereo, and a bitrate of up to 128 Kbps.
  @JsonValue(5)
  musicHighQualityStereo,
}

/// Audio recording quality.
enum AudioRecordingQuality {
  /// Low quality. The sample rate is 32 KHz, and the file size is around 1.2 MB after 10 minutes of recording.
  @JsonValue(0)
  low,

  /// Medium quality. The sample rate is 32 KHz, and the file size is around 2 MB after 10 minutes of recording.
  @JsonValue(1)
  medium,

  /// High quality. The sample rate is 32 KHz, and the file size is around 3.75 MB after 10 minutes of recording.
  @JsonValue(2)
  high,
}

/// The state of the remote audio.
enum AudioRemoteState {
  /// The remote audio is in the default state, probably due to:
  /// - [AudioRemoteStateReason.LocalMuted]
  /// - [AudioRemoteStateReason.RemoteMuted]
  /// - [AudioRemoteStateReason.RemoteOffline]
  @JsonValue(0)
  stopped,

  /// The first remote audio packet is received.
  @JsonValue(1)
  starting,

  /// The remote audio stream is decoded and plays normally, probably due to:
  /// - [AudioRemoteStateReason.NetworkRecovery]
  /// - [AudioRemoteStateReason.LocalUnmuted]
  /// - [AudioRemoteStateReason.RemoteUnmuted]
  @JsonValue(2)
  decoding,

  /// The remote audio is frozen, probably due to:
  /// - [AudioRemoteStateReason.NetworkCongestion]
  @JsonValue(3)
  frozen,

  /// The remote audio fails to start, probably due to:
  /// - [AudioRemoteStateReason.Internal]
  @JsonValue(4)
  failed,
}

/// The reason of the remote audio state change.
enum AudioRemoteStateReason {
  /// Internal reasons.
  @JsonValue(0)
  internal,

  /// Network congestion.
  @JsonValue(1)
  networkCongestion,

  /// Network recovery.
  @JsonValue(2)
  networkRecovery,

  /// The local user stops receiving the remote audio stream or disables the audio module.
  @JsonValue(3)
  localMuted,

  /// The local user resumes receiving the remote audio stream or enables the audio module.
  @JsonValue(4)
  localUnmuted,

  /// The remote user stops sending the audio stream or disables the audio module.
  @JsonValue(5)
  remoteMuted,

  /// The remote user resumes sending the audio stream or enables the audio module.
  @JsonValue(6)
  remoteUnmuted,

  /// The remote user leaves the channel.
  @JsonValue(7)
  remoteOffline,
}

/// The preset local voice reverberation option.
enum AudioReverbPreset {
  /// Turn off local voice reverberation, that is, to use the original voice.
  @JsonValue(0x00000000)
  off,

  /// The reverberation style typical of popular music (enhanced).
  @JsonValue(0x00000001)
  popular,

  /// The reverberation style typical of R&B music (enhanced).
  @JsonValue(0x00000002)
  rnB,

  /// The reverberation style typical of rock music.
  @JsonValue(0x00000003)
  rock,

  /// The reverberation style typical of hip-hop music.
  @JsonValue(0x00000004)
  hipHop,

  /// The reverberation style typical of a concert hall.
  @JsonValue(0x00000005)
  vocalConcert,

  /// The reverberation style typical of a KTV venue (enhanced).
  @JsonValue(0x00000006)
  ktv,

  /// The reverberation style typical of a recording studio (enhanced).
  @JsonValue(0x00000007)
  studio,

  /// The reverberation style typical of a KTV venue (enhanced).
  @JsonValue(0x00100001)
  fxKtv,

  /// The reverberation style typical of a concert hall (enhanced).
  @JsonValue(0x00100002)
  fxVocalConcert,

  /// The reverberation style typical of an uncle’s voice.
  @JsonValue(0x00100003)
  fxUncle,

  /// The reverberation style typical of a sister’s voice.
  @JsonValue(0x00100004)
  fxSister,

  /// The reverberation style typical of a recording studio (enhanced).
  @JsonValue(0x00100005)
  fxStudio,

  /// The reverberation style typical of popular music (enhanced).
  @JsonValue(0x00100006)
  fxPopular,

  /// The reverberation style typical of R&B music (enhanced).
  @JsonValue(0x00100007)
  fxRnb,

  /// The reverberation style typical of the vintage phonograph.
  @JsonValue(0x00100008)
  fxPhonograph,

  /// The reverberation of the virtual stereo. The virtual stereo is an effect that renders the monophonic audio as the stereo audio, so that all users in the channel can hear the stereo voice effect. To achieve better virtual stereo reverberation, Agora recommends setting the `profile` parameter in [RtcEngine.setAudioProfile] as [AudioProfile.MusicHighQualityStereo].
  @JsonValue(0x00200001)
  virtualStereo,
}

/// Audio reverberation type.
enum AudioReverbType {
  /// Level of the dry signal (-20 to 10 dB).
  @JsonValue(0)
  dryLevel,

  /// Level of the early reflection signal (wet signal) (-20 to 10 dB).
  @JsonValue(1)
  wetLevel,

  /// Room size of the reflection (0 to 100 dB). A larger room size means stronger reverberation.
  @JsonValue(2)
  roomSize,

  /// Length of the initial delay of the wet signal (0 to 200 ms).
  @JsonValue(3)
  wetDelay,

  /// Strength of the late reverberation (0 to 100).
  @JsonValue(4)
  strength,
}

/// Audio sample rate.
enum AudioSampleRateType {
  /// 32 kHz.
  @JsonValue(32000)
  type32000,

  /// 44.1 kHz.
  @JsonValue(44100)
  type44100,

  /// 48 kHz.
  @JsonValue(48000)
  type48000,
}

/// Audio scenario.
enum AudioScenario {
  /// Default audio application scenario.
  @JsonValue(0)
  none,

  /// Entertainment scenario supporting voice during gameplay.
  @JsonValue(1)
  chatRoomEntertainment,

  /// Education scenario prioritizing smoothness and stability.
  @JsonValue(2)
  education,

  /// Live gaming scenario, enabling the gaming audio effects in the speaker mode in a live broadcast scenario. Choose this scenario for high-fidelity music playback.
  @JsonValue(3)
  gameStreaming,

  /// Showroom scenario, optimizing the audio quality with external professional equipment.
  @JsonValue(4)
  showRoom,

  /// Gaming scenario.
  @JsonValue(5)
  chatRoomGaming,

  /// IoT (Internet of Things) scenario where users use IoT devices with low power consumption.
  @JsonValue(6)
  iot,

  /// Meeting scenario that mainly contains the human voice.
  ///
  /// Since v3.2.0
  @JsonValue(8)
  meeting,
}

/// The preset audio voice configuration used to change the voice effect.
enum AudioVoiceChanger {
  /// Turn off the local voice changer, that is, to use the original voice.
  @JsonValue(0x00000000)
  off,

  /// The voice of an old man.
  @JsonValue(0x00000001)
  oldMan,

  /// The voice of a little boy.
  @JsonValue(0x00000002)
  babyBoy,

  /// The voice of a little girl.
  @JsonValue(0x00000003)
  babyGirl,

  /// The voice of Zhu Bajie, a character in Journey to the West who has a voice like that of a growling bear.
  @JsonValue(0x00000004)
  zhuBaJie,

  /// The ethereal voice.
  @JsonValue(0x00000005)
  ethereal,

  /// The voice of Hulk.
  @JsonValue(0x00000006)
  hulk,

  /// A more vigorous voice.
  @JsonValue(0x00100001)
  beautyVigorous,

  /// A deeper voice.
  @JsonValue(0x00100002)
  beautyDeep,

  /// A mellower voice.
  @JsonValue(0x00100003)
  beautyMellow,

  /// Falsetto.
  @JsonValue(0x00100004)
  beautyFalsetto,

  /// A fuller voice.
  @JsonValue(0x00100005)
  beautyFull,

  /// A clearer voice.
  @JsonValue(0x00100006)
  beautyClear,

  /// A more resounding voice.
  @JsonValue(0x00100007)
  beautyResounding,

  /// A more ringing voice.
  @JsonValue(0x00100008)
  beautyRinging,

  /// A more spatially resonant voice.
  @JsonValue(0x00100009)
  beautySpacial,

  /// (For male only) A more magnetic voice. Do not use it when the speaker is a female; otherwise, voice distortion occurs.
  @JsonValue(0x00200001)
  generalBeautyVoiceMaleMagnetic,

  /// (For female only) A fresher voice. Do not use it when the speaker is a male; otherwise, voice distortion occurs.
  @JsonValue(0x00200002)
  generalBeautyVoiceFemaleFresh,

  /// (For female only) A more vital voice. Do not use it when the speaker is a male; otherwise, voice distortion occurs.
  @JsonValue(0x00200003)
  generalBeautyVoiceFemaleVitality,
}

/// The camera capturer configuration.
enum CameraCaptureOutputPreference {
  /// (default) Self-adapts the camera output parameters to the system performance and network conditions to balance CPU consumption and video preview quality.
  @JsonValue(0)
  auto,

  /// Prioritizes the system performance. The SDK chooses the dimension and frame rate of the local camera capture closest to those set by [RtcEngine.setVideoEncoderConfiguration].
  @JsonValue(1)
  performance,

  /// Prioritizes the local preview quality. The SDK chooses higher camera output parameters to improve the local video preview quality. This option requires extra CPU and RAM usage for video pre-processing.
  @JsonValue(2)
  preview,

  /// Internal use only.
  @JsonValue(3)
  unkown,
}

/// The camera direction.
enum CameraDirection {
  /// The rear camera.
  @JsonValue(0)
  rear,

  /// The front camera.
  @JsonValue(1)
  front,
}

/// The error code in of channel media relay.
enum ChannelMediaRelayError {
  /// The state is normal.
  @JsonValue(0)
  none,

  /// An error occurs in the server response.
  @JsonValue(1)
  serverErrorResponse,

  /// No server response. You can call the [RtcEngine.leaveChannel] method to leave the channel.
  @JsonValue(2)
  serverNoResponse,

  /// The SDK fails to access the service, probably due to limited resources of the server.
  @JsonValue(3)
  noResourceAvailable,

  /// Fails to send the relay request.
  @JsonValue(4)
  failedJoinSourceChannel,

  /// Fails to accept the relay request.
  @JsonValue(5)
  failedJoinDestinationChannel,

  /// The server fails to receive the media stream.
  @JsonValue(6)
  failedPacketReceivedFromSource,

  /// The server fails to send the media stream.
  @JsonValue(7)
  failedPacketSentToDestination,

  /// The SDK disconnects from the server due to poor network connections. You can call the [RtcEngine.leaveChannel] method to leave the channel.
  @JsonValue(8)
  serverConnectionLost,

  /// An internal error occurs in the server.
  @JsonValue(9)
  internalError,

  /// The token of the source channel has expired.
  @JsonValue(10)
  sourceTokenExpired,

  /// The token of the destination channel has expired.
  @JsonValue(11)
  destinationTokenExpired,
}

/// The event code in of channel media relay event.
enum ChannelMediaRelayEvent {
  /// The user disconnects from the server due to poor network connections.
  @JsonValue(0)
  disconnect,

  /// The user connects to the server.
  @JsonValue(1)
  connected,

  /// The user joins the source channel.
  @JsonValue(2)
  joinedSourceChannel,

  /// The user joins the destination channel.
  @JsonValue(3)
  joinedDestinationChannel,

  /// The SDK starts relaying the media stream to the destination channel.
  @JsonValue(4)
  sentToDestinationChannel,

  /// The server receives the video stream from the source channel.
  @JsonValue(5)
  receivedVideoPacketFromSource,

  /// The server receives the audio stream from the source channel.
  @JsonValue(6)
  receivedAudioPacketFromSource,

  /// The destination channel is updated.
  @JsonValue(7)
  updateDestinationChannel,

  /// The destination channel update fails due to internal reasons.
  @JsonValue(8)
  updateDestinationChannelRefused,

  /// The destination channel does not change, which means that the destination channel fails to be updated.
  @JsonValue(9)
  updateDestinationChannelNotChange,

  /// The destination channel name is NULL.
  @JsonValue(10)
  updateDestinationChannelIsNil,

  /// The video profile is sent to the server.
  @JsonValue(11)
  videoProfileUpdate,
}

/// The state code in channel media relay state.
enum ChannelMediaRelayState {
  /// The SDK is initializing.
  @JsonValue(0)
  idle,

  /// The SDK tries to relay the media stream to the destination channel.
  @JsonValue(1)
  connecting,

  /// The SDK successfully relays the media stream to the destination channel.
  @JsonValue(2)
  running,

  /// A failure occurs.
  @JsonValue(3)
  failure,
}

/// Channel profile.
enum ChannelProfile {
  /// (Default) The Communication profile.
  ///
  /// Use this profile in one-on-one calls or group calls, where all users can talk freely.
  @JsonValue(0)
  communication,

  /// The LiveBroadcasting profile.
  ///
  /// Users in a live-broadcast channel have a role as either broadcaster or audience. A broadcaster can both send and receive streams; an audience can only receive streams.
  @JsonValue(1)
  liveBroadcasting,

  /// The Gaming profile.
  ///
  /// This profile uses a codec with a lower bitrate and consumes less power. Applies to the gaming scenario, where all game players can talk freely.
  @JsonValue(2)
  game,
}

/// Client role in a live broadcast.
enum ClientRole {
  /// A broadcaster can both send and receive streams.
  @JsonValue(1)
  broadcaster,

  /// The default role. An audience can only receive streams.
  @JsonValue(2)
  audience,
}

/// Reasons for the connection state change.
enum ConnectionChangedReason {
  /// The SDK is connecting to Agora’s edge server.
  @JsonValue(0)
  connecting,

  /// The SDK has joined the channel successfully.
  @JsonValue(1)
  joinSuccess,

  /// The connection between the SDK and Agora’s edge server is interrupted.
  @JsonValue(2)
  interrupted,

  /// The connection between the SDK and Agora’s edge server is banned by Agora’s edge server.
  @JsonValue(3)
  bannedByServer,

  /// The SDK fails to join the channel for more than 20 minutes and stops reconnecting to the channel.
  @JsonValue(4)
  joinFailed,

  /// The SDK has left the channel.
  @JsonValue(5)
  leaveChannel,

  /// The specified App ID is invalid. Try to rejoin the channel with a valid App ID.
  @JsonValue(6)
  invalidAppId,

  /// The specified channel name is invalid. Try to rejoin the channel with a valid channel name.
  @JsonValue(7)
  invalidChannelName,

  /// The generated token is invalid probably due to the following reasons:
  /// - The App Certificate for the project is enabled in Console, but you do not use Token when joining the channel. If you enable the App Certificate, you must use a token to join the channel.
  /// - The uid that you specify in the [RtcEngine.joinChannel] method is different from the uid that you pass for generating the token.
  @JsonValue(8)
  invalidToken,

  /// The token has expired. Generate a new token from your server.
  @JsonValue(9)
  tokenExpired,

  /// The user is banned by the server.
  @JsonValue(10)
  rejectedByServer,

  /// The SDK tries to reconnect after setting a proxy server.
  @JsonValue(11)
  settingProxyServer,

  /// The token renews.
  @JsonValue(12)
  renewToken,

  /// The client IP address has changed, probably due to a change of the network type, IP address, or network port.
  @JsonValue(13)
  clientIpAddressChanged,

  /// Timeout for the keep-alive of the connection between the SDK and Agora’s edge server. The connection state changes to:
  /// - [ConnectionStateType.Reconnecting]
  @JsonValue(14)
  keepAliveTimeout,
}

/// Connection states.
enum ConnectionStateType {
  /// The SDK is disconnected from Agora's edge server.
  /// - This is the initial state before [RtcEngine.joinChannel].
  /// - The SDK also enters this state when the app calls [RtcEngine.leaveChannel].
  @JsonValue(1)
  disconnected,

  /// The SDK is connecting to Agora's edge server.
  /// - When the app calls [RtcEngine.joinChannel], the SDK starts to establish a connection to the specified channel, triggers the [RtcEngineEventHandler.connectionStateChanged] callback, and switches to the [ConnectionStateType.Connecting] state.
  /// - When the SDK successfully joins the channel, the SDK triggers the [RtcEngineEventHandler.connectionStateChanged] callback and switches to the [ConnectionStateType.Connected] state.
  /// - After the SDK joins the channel and when it finishes initializing the media engine, the SDK triggers the [RtcEngineEventHandler.joinChannelSuccess] callback.
  @JsonValue(2)
  connecting,

  /// The SDK is connected to Agora's edge server and joins a channel. You can now publish or subscribe to a media stream in the channel.
  /// If the connection to the channel is lost because, for example, the network is down or switched, the SDK automatically tries to reconnect and triggers:
  /// - The [RtcEngineEventHandler.connectionStateChanged] callback, and switches to the [ConnectionStateType.Reconnecting] state.
  @JsonValue(3)
  connected,

  /// The SDK keeps rejoining the channel after being disconnected from a joined channel because of network issues.
  /// - If the SDK cannot rejoin the channel within 10 seconds after being disconnected from Agora’s edge server, the SDK triggers the [RtcEngineEventHandler.connectionLost] callback, stays in the [ConnectionStateType.Reconnecting] state, and keeps rejoining the channel.
  /// - If the SDK fails to rejoin the channel 20 minutes after being disconnected from Agora’s edge server, the SDK triggers the [RtcEngineEventHandler.connectionStateChanged] callback, switches to the [ConnectionStateType.Failed] state, and stops rejoining the channel.
  @JsonValue(4)
  reconnecting,

  /// The SDK fails to connect to Agora's edge server or join the channel.
  /// You must call [RtcEngine.leaveChannel] to leave this state, and call [RtcEngine.joinChannel] again to rejoin the channel.
  ///
  /// If the SDK is banned from joining the channel by Agora’s edge server (through the RESTful API), the SDK triggers the [RtcEngineEventHandler.connectionStateChanged] callbacks.
  @JsonValue(5)
  failed,
}

/// The video encoding degradation preference under limited bandwidth.
enum DegradationPreference {
  /// (Default) Degrades the frame rate to guarantee the video quality.
  @JsonValue(0)
  maintainQuality,

  /// Degrades the video quality to guarantee the frame rate.
  @JsonValue(1)
  maintainFramerate,

  /// Reserved for future use.
  @JsonValue(2)
  balanced
}

/// Encryption mode
enum EncryptionMode {
  /// This mode is deprecated.
  @deprecated
  @JsonValue(0)
  none,

  /// (Default) 128-bit AES encryption, XTS mode.
  @JsonValue(1)
  aes128xts,

  /// 128-bit AES encryption, ECB mode.
  @JsonValue(2)
  aes128ecb,

  /// 256-bit AES encryption, XTS mode.
  @JsonValue(3)
  aes256xts,

  /// 128-bit SM4 encryption, ECB mode.
  ///
  ///
  @JsonValue(4)
  sm4128ecb,
}

/// Error codes occur when the SDK encounters an error that cannot be recovered automatically without any app intervention.
enum ErrorCode {
  /// No error occurs.
  @JsonValue(0)
  noError,

  /// A general error occurs (no specified reason).
  @JsonValue(1)
  failed,

  /// An invalid parameter is used. For example, the specific channel name includes illegal characters.
  @JsonValue(2)
  invalidArgument,

  /// The SDK module is not ready.
  /// Possible solutions:
  /// - Check the audio device.
  /// - Check the completeness of the app.
  /// - Re-initialize the SDK.
  @JsonValue(3)
  notReady,

  /// The current state of the SDK does not support this function.
  @JsonValue(4)
  notSupported,

  /// The request is rejected. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(5)
  refused,

  /// The buffer size is not big enough to store the returned data.
  @JsonValue(6)
  bufferTooSmall,

  /// The SDK is not initialized before calling this method.
  @JsonValue(7)
  notInitialized,

  /// No permission exists. Check whether the user has granted access to the audio or video device.
  @JsonValue(9)
  noPermission,

  /// An API method timeout occurs. Some API methods require the SDK to return the execution result, and this error occurs if the request takes too long (over 10 seconds) for the SDK to process.
  @JsonValue(10)
  timedOut,

  /// The request is canceled. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(11)
  canceled,

  /// The method is called too often. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(12)
  tooOften,

  /// The SDK fails to bind to the network socket. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(13)
  bindSocket,

  /// The network is unavailable. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(14)
  netDown,

  /// No network buffers are available. This is for internal SDK use only, and is not returned to the app through any method or callback.
  @JsonValue(15)
  noBufs,

  /// The request to join the channel is rejected.
  /// Possible reasons are:
  /// - The user is already in the channel, and still calls the API method to join the channel, for example, [RtcEngine.joinChannel].
  /// - The user tries joining the channel during the echo test. Please join the channel after the echo test ends.
  @JsonValue(17)
  joinChannelRejected,

  /// The request to leave the channel is rejected.
  /// Possible reasons are:
  /// - The user left the channel and still calls the API method to leave the channel, for example, [RtcEngine.leaveChannel].
  /// - The user has not joined the channel and calls the API method to leave the channel.
  @JsonValue(18)
  leaveChannelRejected,

  /// The resources are occupied and cannot be used.
  @JsonValue(19)
  alreadyInUse,

  /// The SDK gave up the request due to too many requests.
  @JsonValue(20)
  abort,

  /// In Windows, specific firewall settings cause the SDK to fail to initialize and crash.
  @JsonValue(21)
  initNetEngine,

  /// The app uses too much of the system resources and the SDK fails to allocate the resources.
  @JsonValue(22)
  sesourceLimited,

  /// The specified App ID is invalid. Please try to rejoin the channel with a valid App ID.
  @JsonValue(101)
  invalidAppId,

  /// The specified channel name is invalid. Please try to rejoin the channel with a valid channel name.
  @JsonValue(102)
  invalidChannelId,

  /// 103: Fails to get server resources in the specified region. Please try to specify another region.
  ///
  ///
  @JsonValue(103)
  noServerResources,

  /// The token expired. Agora recommends that you use [ConnectionChangedReason.TokenExpired] in the reason parameter of [RtcEngineEventHandler.connectionStateChanged] instead.
  ///
  /// Possible reasons are:
  /// - Authorized Timestamp expired: The timestamp is represented by the number of seconds elapsed since 1/1/1970. The user can use the token to access the Agora service within five minutes after the token is generated. If the user does not access the Agora service after five minutes, this token is no longer valid.
  /// - Call Expiration Timestamp expired: The timestamp is the exact time when a user can no longer use the Agora service (for example, when a user is forced to leave an ongoing call). When a value is set for the Call Expiration Timestamp, it does not mean that the token will expire, but that the user will be banned from the channel.
  @deprecated
  @JsonValue(109)
  tokenExpired,

  /// The token is invalid. Agora recommends that you use [ConnectionChangedReason.InvalidToken] in the reason parameter of [RtcEngineEventHandler.connectionStateChanged] instead.
  ///
  /// Possible reasons are:
  /// - The App Certificate for the project is enabled in Console, but the user is using the App ID. Once the App Certificate is enabled, the user must use a token.
  /// - The uid is mandatory, and users must set the same uid as the one set in the [RtcEngine.joinChannel] method.
  @deprecated
  @JsonValue(110)
  invalidToken,

  /// The Internet connection is interrupted. This applies to the Agora Web SDK only.
  @JsonValue(111)
  connectionInterrupted,

  /// The Internet connection is lost. This applies to the Agora Web SDK only.
  @JsonValue(112)
  connectionLost,

  /// The user is not in the channel when calling the [RtcEngine.sendStreamMessage] or [RtcEngine.getUserInfoByUserAccount] method.
  @JsonValue(113)
  notInChannel,

  /// The size of the sent data is over 1024 bytes when the user calls the [RtcEngine.sendStreamMessage] method.
  @JsonValue(114)
  sizeTooLarge,

  /// The bitrate of the sent data exceeds the limit of 6 Kbps when the user calls the [RtcEngine.sendStreamMessage] method.
  @JsonValue(115)
  bitrateLimit,

  /// Too many data streams (over five streams) are created when the user calls the [RtcEngine.createDataStream] method.
  @JsonValue(116)
  tooManyDataStreams,

  /// Decryption fails. The user may have used a different encryption password to join the channel. Check your settings or try rejoining the channel.
  @JsonValue(120)
  decryptionFailed,

  /// The client is banned by the server.
  @JsonValue(123)
  clientIsBannedByServer,

  /// Incorrect watermark file parameter.
  @JsonValue(124)
  watermarkParam,

  /// Incorrect watermark file path.
  @JsonValue(125)
  watermarkPath,

  /// Incorrect watermark file format.
  @JsonValue(126)
  watermarkPng,

  /// Incorrect watermark file information.
  @JsonValue(127)
  watermarkInfo,

  /// Incorrect watermark file data format.
  @JsonValue(128)
  watermarkAGRB,

  /// An error occurs in reading the watermark file.
  @JsonValue(129)
  watermarkRead,

  /// The encrypted stream is not allowed to publish.
  @JsonValue(130)
  encryptedStreamNotAllowedPublish,

  /// The user account is invalid.
  @JsonValue(134)
  invalidUserAccount,

  /// CDN related errors. Remove the original URL address and add a new one by calling the [RtcEngine.removePublishStreamUrl] and [RtcEngine.addPublishStreamUrl] methods.
  @JsonValue(151)
  publishStreamCDNError,

  /// The host publishes more than 10 URLs. Delete the unnecessary URLs before adding new ones.
  @JsonValue(152)
  publishStreamNumReachLimit,

  /// The host manipulates other hosts' URLs. Check your app logic.
  @JsonValue(153)
  publishStreamNotAuthorized,

  /// An error occurs in Agora’s streaming server. Call the `addPublishStreamUrl` method to publish the stream again.
  ///
  /// See [RtcEngine.addPublishStreamUrl]
  @JsonValue(154)
  publishStreamInternalServerError,

  /// The server fails to find the stream.
  @JsonValue(155)
  publishStreamNotFound,

  /// The format of the RTMP stream URL is not supported. Check whether the URL format is correct.
  @JsonValue(156)
  publishStreamFormatNotSuppported,

  /// Fails to load the media engine.
  @JsonValue(1001)
  loadMediaEngine,

  /// Fails to start the call after enabling the media engine.
  @JsonValue(1002)
  startCall,

  /// Fails to start the camera. Agora recommends that you use [VideoLocalError.captureFailure] in the error parameter of [RtcEngineEventHandler.localVideoStateChanged] instead.
  @deprecated
  @JsonValue(1003)
  startCamera,

  /// Fails to start the video rendering module.
  @JsonValue(1004)
  startVideoRender,

  /// Audio Device Module: A general error occurs in the Audio Device Module (the reason is not classified specifically). Check if the audio device is used by another app, or try rejoining the channel.
  @JsonValue(1005)
  admGeneralError,

  /// Audio Device Module: An error occurs in using the Java resources.
  @JsonValue(1006)
  admJavaResource,

  /// Audio Device Module: An error occurs in setting the sampling frequency.
  @JsonValue(1007)
  admSampleRate,

  /// Audio Device Module: An error occurs in initializing the playback device.
  @JsonValue(1008)
  admInitPlayout,

  /// Audio Device Module: An error occurs in starting the playback device.
  @JsonValue(1009)
  admStartPlayout,

  /// Audio Device Module: An error occurs in stopping the playback device.
  @JsonValue(1010)
  admStopPlayout,

  /// Audio Device Module: An error occurs in initializing the recording device.
  @JsonValue(1011)
  admInitRecording,

  /// Audio Device Module: An error occurs in starting the recording device.
  @JsonValue(1012)
  admStartRecording,

  /// Audio Device Module: An error occurs in stopping the recording device.
  @JsonValue(1013)
  admStopRecording,

  /// Audio Device Module: A playback error occurs. Check your playback device, or try rejoining the channel.
  @JsonValue(1015)
  admRuntimePlayoutError,

  /// Audio Device Module: A recording error occurs.
  @JsonValue(1017)
  admRuntimeRecordingError,

  /// Audio Device Module: Fails to record.
  @JsonValue(1018)
  admRecordAudioFailed,

  /// Audio Device Module: Abnormal audio playback frequency.
  @JsonValue(1020)
  admPlayAbnormalFrequency,

  /// Audio Device Module: Abnormal audio recording frequency.
  @JsonValue(1021)
  admRecordAbnormalFrequency,

  /// Audio Device Module: An error occurs in initializing the loopback device.
  @JsonValue(1022)
  admInitLoopback,

  /// Audio Device Module: An error occurs in starting the loopback device.
  @JsonValue(1023)
  admStartLoopback,

  /// Audio Device Module: An error occurs in no recording Permission.
  @JsonValue(1027)
  admNoPermission,

  /// Audio Routing: Fails to route the audio to the connected Bluetooth device. The default route is used.
  @JsonValue(1030)
  audioBtScoFailed,

  /// Audio Device Module: No recording device exists.
  @JsonValue(1359)
  admNoRecordingDevice,

  /// No playback device exists.
  @JsonValue(1360)
  admNoPlayoutDevice,

  /// Video Device Module: The camera is unauthorized.
  @JsonValue(1501)
  vdmCameraNotAuthorized,

  /// Video Device Module: An unknown error occurs.
  @JsonValue(1600)
  vcmUnknownError,

  /// Video Device Module: An error occurs in initializing the video encoder.
  @JsonValue(1601)
  vcmEncoderInitError,

  /// Video Device Module: An error occurs in video encoding.
  @JsonValue(1602)
  vcmEncoderEncodeError,

  /// Video Device Module: An error occurs in setting the video encoder.
  @deprecated
  @JsonValue(1603)
  vcmEncoderSetError,
}

/// State of importing an external video stream in a live broadcast.
enum InjectStreamStatus {
  /// The external video stream imported successfully.
  @JsonValue(0)
  startSuccess,

  /// The external video stream already exists.
  @JsonValue(1)
  startAlreadyExists,

  /// The external video stream import is unauthorized.
  @JsonValue(2)
  startUnauthorized,

  /// Import external video stream timeout.
  @JsonValue(3)
  startTimedout,

  /// The external video stream failed to import.
  @JsonValue(4)
  startFailed,

  /// The external video stream imports successfully.
  @JsonValue(5)
  stopSuccess,

  /// No external video stream is found.
  @JsonValue(6)
  stopNotFound,

  /// The external video stream is stopped from being unauthorized.
  @JsonValue(7)
  stopUnauthorized,

  /// Importing the external video stream timeout.
  @JsonValue(8)
  stopTimedout,

  /// Importing the external video stream failed.
  @JsonValue(9)
  stopFailed,

  /// The external video stream import is interrupted.
  @JsonValue(10)
  broken,
}

/// The state of the probe test result.
enum LastmileProbeResultState {
  /// The last-mile network probe test is complete.
  @JsonValue(1)
  complete,

  /// The last-mile network probe test is incomplete and the bandwidth estimation is not available, probably due to limited test resources.
  @JsonValue(2)
  incompleteNoBwe,

  /// The last-mile network probe test is not carried out, probably due to poor network conditions.
  @JsonValue(3)
  unavailable,
}

/// The lightening contrast level.
enum LighteningContrastLevel {
  /// Low contrast level.
  @JsonValue(0)
  low,

  /// (Default) Normal contrast level.
  @JsonValue(1)
  normal,

  /// High contrast level.
  @JsonValue(2)
  high,
}

/// The detailed error information of the local video.
enum VideoLocalError {
  /// The local video is normal.
  @JsonValue(0)
  ok,

  /// No specified reason for the local video failure.
  @JsonValue(1)
  failure,

  /// No permission to use the local video device.
  @JsonValue(2)
  deviceNoPermission,

  /// The local video capturer is in use.
  @JsonValue(3)
  deviceBusy,

  /// The local video capture fails. Check whether the capturer is working properly.
  @JsonValue(4)
  captureFailure,

  /// The local video encoding fails.
  @JsonValue(5)
  encodeFailure,
}

/// The state of the local video stream.
enum VideoLocalState {
  /// The local video is in the initial state.
  @JsonValue(0)
  stopped,

  /// The local video capturer starts successfully.
  @JsonValue(1)
  capturing,

  /// The first local video frame encodes successfully.
  @JsonValue(2)
  encoding,

  /// The local video fails to start.
  @JsonValue(3)
  failed,
}

/// Output log filter level.
enum LogFilter {
  /// Do not output any log information.
  @JsonValue(0)
  off,

  /// Output all log information. Set your log filter as debug if you want to get the most complete log file.
  @JsonValue(0x080f)
  debug,

  /// Output CRITICAL, ERROR, WARNING, and INFO level log information. We recommend setting your log filter as this level.
  @JsonValue(0x000f)
  info,

  /// Outputs CRITICAL, ERROR, and WARNING level log information.
  @JsonValue(0x000e)
  warning,

  /// Outputs CRITICAL and ERROR level log information.
  @JsonValue(0x000c)
  error,

  /// Outputs CRITICAL level log information.
  @JsonValue(0x0008)
  critical,
}

/// Network quality.
enum NetworkQuality {
  /// The network quality is unknown.
  @JsonValue(0)
  unknown,

  /// The network quality is excellent.
  @JsonValue(1)
  excellent,

  /// The network quality is quite good, but the bitrate may be slightly lower than excellent.
  @JsonValue(2)
  good,

  /// Users can feel the communication slightly impaired.
  @JsonValue(3)
  poor,

  /// Users can communicate only not very smoothly.
  @JsonValue(4)
  bad,

  /// The network quality is so bad that users can hardly communicate.
  @JsonValue(5)
  vbad,

  /// The network is disconnected and users cannot communicate at all.
  @JsonValue(6)
  down,

  /// Users cannot detect the network quality. (Not in use.)
  @JsonValue(7)
  unsupported,

  /// Detecting the network quality.
  @JsonValue(8)
  detecting,
}

/// Network type.
enum NetworkType {
  /// The network type is unknown.
  @JsonValue(-1)
  unknown,

  /// The SDK disconnects from the network.
  @JsonValue(0)
  disconnected,

  /// The network type is LAN.
  @JsonValue(1)
  lan,

  /// The network type is Wi-Fi (including hotspots).
  @JsonValue(2)
  wifi,

  /// The network type is mobile 2G.
  @JsonValue(3)
  mobile2G,

  /// The network type is mobile 3G.
  @JsonValue(4)
  mobile3G,

  /// The network type is mobile 4G.
  @JsonValue(5)
  mobile4G,
}

/// The detailed error information for streaming.
enum RtmpStreamingErrorCode {
  /// The RTMP or RTMPS streaming publishes successfully.
  @JsonValue(0)
  ok,

  /// Invalid argument used. If, for example, you do not call the [RtcEngine.setLiveTranscoding] method to configure the LiveTranscoding parameters before calling the [RtcEngine.addPublishStreamUrl] method, the SDK returns this error. Check whether you set the parameters in the `setLiveTranscoding` method properly.
  @JsonValue(1)
  invalidParameters,

  /// The RTMP or RTMPS streaming is encrypted and cannot be published.
  @JsonValue(2)
  encryptedStreamNotAllowed,

  /// Timeout for the RTMP or RTMPS streaming. Call the [RtcEngine.addPublishStreamUrl] method to publish the streaming again.
  @JsonValue(3)
  connectionTimeout,

  /// An error occurs in Agora’s streaming server. Call the [RtcEngine.addPublishStreamUrl] method to publish the streaming again.
  @JsonValue(4)
  internalServerError,

  /// An error occurs in the RTMP server.
  @JsonValue(5)
  rtmpServerError,

  /// The RTMP or RTMPS streaming publishes too frequently.
  @JsonValue(6)
  tooOften,

  /// The host publishes more than 10 URLs. Delete the unnecessary URLs before adding new ones.
  @JsonValue(7)
  reachLimit,

  /// The host manipulates other hosts' URLs. Check your app logic.
  @JsonValue(8)
  notAuthorized,

  /// Agora’s server fails to find the RTMP or RTMPS streaming.
  @JsonValue(9)
  streamNotFound,

  /// The format of the RTMP or RTMPS streaming URL is not supported. Check whether the URL format is correct.
  @JsonValue(10)
  formatNotSupported,
}

/// The RTMP or RTMPS streaming state.
enum RtmpStreamingState {
  /// The RTMP or RTMPS streaming has not started or has ended. This state is also triggered after you remove an RTMP address from the CDN by calling [RtcEngine.removePublishStreamUrl].
  @JsonValue(0)
  idle,

  /// The SDK is connecting to Agora’s streaming server and the RTMP server. This state is triggered after you call the [RtcEngine.addPublishStreamUrl] method.
  @JsonValue(1)
  connecting,

  /// The RTMP or RTMPS streaming is being published. The SDK successfully publishes the RTMP or RTMPS streaming and returns this state.
  @JsonValue(2)
  running,

  /// The RTMP or RTMPS streaming is recovering. When exceptions occur to the CDN, or the streaming is interrupted, the SDK attempts to resume RTMP or RTMPS streaming and returns this state.
  /// - If the SDK successfully resumes the streaming, [RtmpStreamingState.Running] returns.
  /// - If the streaming does not resume within 60 seconds or server errors occur, [RtmpStreamingState.Failure] returns. You can also reconnect to the server by calling the [RtcEngine.removePublishStreamUrl] and [RtcEngine.addPublishStreamUrl] methods.
  @JsonValue(3)
  recovering,

  /// The RTMP or RTMPS streaming fails. See the `errorCode` parameter for the detailed error information. You can also call the [RtcEngine.addPublishStreamUrl] method to publish the RTMP or RTMPS streaming again.
  @JsonValue(4)
  failure,
}

/// Stream fallback option.
enum StreamFallbackOptions {
  /// No fallback behavior for the local/remote video stream when the uplink/downlink network condition is unreliable. The quality of the stream is not guaranteed.
  @JsonValue(0)
  disabled,

  /// Under unreliable downlink network conditions, the remote video stream falls back to the low-stream (low resolution and low bitrate) video. You can only set this option in the [RtcEngine.setRemoteSubscribeFallbackOption] method. Nothing happens when you set this in the [RtcEngine.setLocalPublishFallbackOption] method.
  @JsonValue(1)
  videoStreamLow,

  /// Under unreliable uplink network conditions, the published video stream falls back to audio only. Under unreliable downlink network conditions, the remote video stream first falls back to the low-stream (low resolution and low bitrate) video; and then to an audio-only stream if the network condition deteriorates.
  @JsonValue(2)
  audioOnly,
}

/// Reason for the user being offline.
enum UserOfflineReason {
  /// The user left the current channel.
  @JsonValue(0)
  quit,

  /// The SDK timed out and the user dropped offline because no data packet is received within a certain period of time. If a user quits the call and the message is not passed to the SDK (due to an unreliable channel), the SDK assumes the user dropped offline.
  @JsonValue(1)
  dropped,

  /// (LiveBroadcasting only) The client role switched from the host to the audience.
  @JsonValue(2)
  becomeAudience,
}

/// The priority of the remote user.
enum UserPriority {
  /// The user’s priority is high.
  @JsonValue(50)
  high,

  /// (Default) The user’s priority is normal.
  @JsonValue(100)
  normal,
}

/// Self-defined video codec profile.
enum VideoCodecProfileType {
  /// Baseline video codec profile. Generally used in video calls on mobile phones.
  @JsonValue(66)
  baseline,

  /// Main video codec profile. Generally used in mainstream electronics, such as MP4 players, portable video players, PSP, and iPads.
  @JsonValue(77)
  main,

  /// (Default) High video codec profile. Generally used in high-resolution broadcasts or television.
  @JsonValue(100)
  high,
}

/// Video frame rate.
enum VideoFrameRate {
  /// Min
  @JsonValue(-1)
  min,

  /// 1 fps.
  @JsonValue(1)
  fps1,

  /// 7 fps.
  @JsonValue(7)
  fps7,

  /// 10 fps.
  @JsonValue(10)
  fps10,

  /// 15 fps.
  @JsonValue(15)
  fps15,

  /// 24 fps.
  @JsonValue(24)
  fps24,

  /// 30 fps.
  @JsonValue(30)
  fps30,

  /// 60 fps (macOS only).
  @JsonValue(60)
  fps60,
}

/// Sets the video bitrate (Kbps). Refer to the table below and set your bitrate.
/// **Video Bitrate Table**
///
/// | Resolution             | Frame Rate (fps) | Base Bitrate (Kbps)                    | Live Bitrate (Kbps)                    |
/// |------------------------|------------------|----------------------------------------|----------------------------------------|
/// | 160 * 120              | 15               | 65                                     | 130                                    |
/// | 120 * 120              | 15               | 50                                     | 100                                    |
/// | 320 * 180              | 15               | 140                                    | 280                                    |
/// | 180 * 180              | 15               | 100                                    | 200                                    |
/// | 240 * 180              | 15               | 120                                    | 240                                    |
/// | 320 * 240              | 15               | 200                                    | 400                                    |
/// | 240 * 240              | 15               | 140                                    | 280                                    |
/// | 424 * 240              | 15               | 220                                    | 440                                    |
/// | 640 * 360              | 15               | 400                                    | 800                                    |
/// | 360 * 360              | 15               | 260                                    | 520                                    |
/// | 640 * 360              | 30               | 600                                    | 1200                                   |
/// | 360 * 360              | 30               | 400                                    | 800                                    |
/// | 480 * 360              | 15               | 320                                    | 640                                    |
/// | 480 * 360              | 30               | 490                                    | 980                                    |
/// | 640 * 480              | 15               | 500                                    | 1000                                   |
/// | 480 * 480              | 15               | 400                                    | 800                                    |
/// | 640 * 480              | 30               | 750                                    | 1500                                   |
/// | 480 * 480              | 30               | 600                                    | 1200                                   |
/// | 848 * 480              | 15               | 610                                    | 1220                                   |
/// | 848 * 480              | 30               | 930                                    | 1860                                   |
/// | 640 * 480              | 10               | 400                                    | 800                                    |
/// | 1280 * 720             | 15               | 1130                                   | 2260                                   |
/// | 1280 * 720             | 30               | 1710                                   | 3420                                   |
/// | 960 * 720              | 15               | 910                                    | 1820                                   |
/// | 960 * 720              | 30               | 1380                                   | 2760                                   |
///
///  **Note**
/// - The base bitrate in this table applies to the Communication profile.
/// - The LiveBroadcasting profile generally requires a higher bitrate for better video quality. We recommend setting the bitrate mode as `0`. You can also set the bitrate as the base bitrate value x 2.
///
/// If you set a bitrate beyond the proper range, the SDK automatically adjusts it to a value within the range. You can also choose from the following options:
enum BitRate {
  /// (Recommended) The standard bitrate mode. In this mode, the bitrates differ between the LiveBroadcasting and Communication profiles:
  /// - Communication profile: the video bitrate is the same as the base bitrate.
  /// - LiveBroadcasting profile: the video bitrate is twice the base bitrate.
  @JsonValue(0)
  standard,

  /// The compatible bitrate mode. In this mode, the bitrate stays the same regardless of the profile. In the LiveBroadcasting profile, if you choose this mode, the video frame rate may be lower than the set value.
  @JsonValue(-1)
  compatible,
}

/// Video mirror mode.
enum VideoMirrorMode {
  /// (Default) The SDK determines the mirror mode.
  @JsonValue(0)
  auto,

  /// Enables mirror mode.
  @JsonValue(1)
  enabled,

  /// Disables mirror mode.
  @JsonValue(2)
  disabled,
}

/// Video output orientation mode.
enum VideoOutputOrientationMode {
  /// Adaptive mode (Default).
  /// The video encoder adapts to the orientation mode of the video input device. When you use a custom video source, the output video from the encoder inherits the orientation of the original video.
  /// - If the width of the captured video from the SDK is greater than the height, the encoder sends the video in landscape mode. The encoder also sends the rotational information of the video, and the receiver uses the rotational information to rotate the received video.
  /// - If the original video is in portrait mode, the output video from the encoder is also in portrait mode. The encoder also sends the rotational information of the video to the receiver.
  @JsonValue(0)
  adaptative,

  /// Landscape mode.
  /// The video encoder always sends the video in landscape mode. The video encoder rotates the original video before sending it and the rotational information is 0. This mode applies to scenarios involving CDN live streaming.
  @JsonValue(1)
  fixedLandscape,

  /// Portrait mode.
  /// The video encoder always sends the video in portrait mode. The video encoder rotates the original video before sending it and the rotational information is 0. This mode applies to scenarios involving CDN live streaming.
  @JsonValue(2)
  fixedPortrait,
}

/// Quality change of the local video in terms of target frame rate and target bit rate since last count.
enum VideoQualityAdaptIndication {
  /// The quality of the local video stays the same.
  @JsonValue(0)
  adaptNone,

  /// The quality improves because the network bandwidth increases.
  @JsonValue(1)
  adaptUpBandwidth,

  /// The quality worsens because the network bandwidth decreases.
  @JsonValue(2)
  adaptDownBandwidth,
}

/// The state of the remote video.
enum VideoRemoteState {
  /// The remote video is in the default state, probably due to:
  /// - [VideoRemoteStateReason.LocalMuted]
  /// - [VideoRemoteStateReason.RemoteMuted]
  /// - [VideoRemoteStateReason.RemoteOffline]
  @JsonValue(0)
  stopped,

  /// The first remote video packet is received.
  @JsonValue(1)
  starting,

  /// The remote video stream is decoded and plays normally, probably due to:
  /// - [VideoRemoteStateReason.NetworkRecovery]
  /// - [VideoRemoteStateReason.LocalUnmuted]
  /// - [VideoRemoteStateReason.RemoteUnmuted]
  /// - [VideoRemoteStateReason.AudioFallbackRecovery]
  @JsonValue(2)
  decoding,

  /// The remote video is frozen, probably due to:
  /// - [VideoRemoteStateReason.NetworkCongestion]
  /// - [VideoRemoteStateReason.AudioFallback]
  @JsonValue(3)
  frozen,

  /// The remote video fails to start, probably due to [VideoRemoteStateReason.Internal].
  @JsonValue(4)
  failed,
}

/// The reason of the remote video state change.
enum VideoRemoteStateReason {
  /// Internal reasons.
  @JsonValue(0)
  internal,

  /// Network congestion.
  @JsonValue(1)
  networkCongestion,

  /// Network recovery.
  @JsonValue(2)
  networkRecovery,

  /// The local user stops receiving the remote video stream or disables the video module.
  @JsonValue(3)
  localMuted,

  /// The local user stops receiving the remote video stream or disables the video module.
  @JsonValue(4)
  localUnmuted,

  /// The remote user stops sending the video stream or disables the video module.
  @JsonValue(5)
  remoteMuted,

  /// The remote user resumes sending the video stream or enables the video module.
  @JsonValue(6)
  remoteUnmuted,

  /// The remote user leaves the channel.
  @JsonValue(7)
  remoteOffline,

  /// The remote media stream falls back to the audio-only stream due to poor network conditions.
  @JsonValue(8)
  audioFallback,

  /// The remote media stream switches back to the video stream after the network conditions improve.
  @JsonValue(9)
  audioFallbackRecovery,
}

/// Video display mode.
enum VideoRenderMode {
  /// Uniformly scale the video until it fills the visible boundaries (cropped). One dimension of the video may have clipped contents.
  @JsonValue(1)
  hidden,

  /// Uniformly scale the video until one of its dimension fits the boundary (zoomed to fit). Areas that are not filled due to the disparity in the aspect ratio are filled with black.
  @JsonValue(2)
  fit,

  /// This mode is deprecated.
  @deprecated
  @JsonValue(3)
  adaptive,

  /// The fill mode. In this mode, the SDK stretches or zooms the video to fill the display window.
  @JsonValue(4)
  fill,
}

/// Video stream type.
enum VideoStreamType {
  /// High-bitrate, high-resolution video stream.
  @JsonValue(0)
  high,

  /// Low-bitrate, low-resolution video stream.
  @JsonValue(1)
  low,
}

/// Warning codes occur when the SDK encounters an error that may be recovered automatically. These are only notifications, and can generally be ignored. For example, when the SDK loses connection to the server, the SDK reports the `OpenChannelTimeout`(106) warning and tries to reconnect automatically.
/// See [WarningCode.OpenChannelTimeout].
enum WarningCode {
  /// The specified view is invalid. Specify a view when using the video call function.
  @JsonValue(8)
  invalidView,

  /// Failed to initialize the video function, possibly caused by a lack of resources. The users cannot see the video while the voice communication is not affected.
  @JsonValue(16)
  initVideo,

  /// The request is pending, usually due to some module not being ready, and the SDK postpones processing the request.
  @JsonValue(20)
  pending,

  /// No channel resources are available. Maybe because the server cannot allocate any channel resource.
  @JsonValue(103)
  noAvailableChannel,

  /// A timeout occurs when looking up the channel. When joining a channel, the SDK looks up the specified channel. The warning usually occurs when the network condition is too poor for the SDK to connect to the server.
  @JsonValue(104)
  lookupChannelTimeout,

  /// The server rejects the request to look up the channel. The server cannot process this request or the request is illegal. Agora recommends that you use [ConnectionChangedReason.RejectedByServer] in the reason parameter of [RtcEngineEventHandler.connectionStateChanged] instead.
  @deprecated
  @JsonValue(105)
  lookupChannelRejected,

  /// The server rejects the request to look up the channel. The server cannot process this request or the request is illegal.
  @JsonValue(106)
  openChannelTimeout,

  /// The server rejects the request to open the channel. The server cannot process this request or the request is illegal.
  @JsonValue(107)
  openChannelRejected,

  /// A timeout occurs when switching to the live video.
  @JsonValue(111)
  switchLiveVideoTimeout,

  /// A timeout occurs when setting the client role in the LiveBroadcasting profile.
  @JsonValue(118)
  setClientRoleTimeout,

  /// The client role is unauthorized.
  @JsonValue(119)
  setClientRoleNotAuthorized,

  /// The ticket to open the channel is invalid.
  @JsonValue(121)
  openChannelInvalidTicket,

  /// Try connecting to another server.
  @JsonValue(122)
  openChannelTryNextVos,

  /// An error occurs in opening the audio mixing file.
  @JsonValue(701)
  audioMixingOpenError,

  /// Audio Device Module: a warning occurs in the playback device.
  @JsonValue(1014)
  admRuntimePlayoutWarning,

  /// Audio Device Module: a warning occurs in the recording device.
  @JsonValue(1016)
  admRuntimeRecordingWarning,

  /// Audio Device Module: no valid audio data is collected.
  @JsonValue(1019)
  admRecordAudioSilence,

  /// Audio Device Module: a playback device fails.
  @JsonValue(1020)
  admPlaybackMalfunction,

  /// Audio Device Module: a recording device fails.
  @JsonValue(1021)
  admRecordMalfunction,

  /// Audio Device Module: call is interrupted by system events such as phone call or siri etc.
  @JsonValue(1025)
  admInterruption,

  /// During a call, `AudioSessionCategory` should be set to `AVAudioSessionCategoryPlayAndRecord`, and the SDK monitors this value. If the `AudioSessionCategory` is set to other values, this warning code is triggered and the SDK will forcefully set it back to `AVAudioSessionCategoryPlayAndRecord`.
  ///
  ///
  @JsonValue(1029)
  admCategoryNotPlayAndRecord,

  /// Audio Device Module: the recorded audio is too low.
  @JsonValue(1031)
  admRecordAudioLowlevel,

  /// Audio Device Module: the playback audio is too low.
  @JsonValue(1032)
  admPlayoutAudioLowlevel,

  /// Audio Device Module: The recording device is busy.
  @JsonValue(1033)
  admRecordIsOccupied,

  /// Audio device module: An error occurs in the audio driver. Solutions:
  /// - Restart your audio device.
  /// - Restart your device where the app runs.
  /// - Upgrade the sound card drive.
  ///
  ///
  @JsonValue(1040)
  admNoDataReadyCallback,

  /// Audio device module: The audio recording device is different from the audio playback device, which may cause echoes problem. Agora recommends using the same audio device to record and playback audio.
  ///
  ///
  @JsonValue(1042)
  admInconsistentDevices,

  /// Audio Device Module: howling is detected.
  @JsonValue(1051)
  apmHowling,

  /// Audio Device Module: the device is in the glitch state.
  @JsonValue(1052)
  admGlitchState,

  /// Audio processing module: A residual echo is detected, which may be caused by the belated scheduling of system threads or the signal overflow.
  @JsonValue(1053)
  apmResidualEcho,

  /// Super-resolution warning: the original video dimensions of the remote user exceed 640*480.
  @JsonValue(1610)
  superResolutionStreamOverLimitation,

  /// Super-resolution warning: another user is using super resolution.
  @JsonValue(1611)
  superResolutionUserCountOverLimitation,

  /// Super-resolution warning: The device is not supported.
  @JsonValue(1612)
  superResolutionDeviceNotSupported,
}

/// The audio channel of the sound.
enum AudioChannel {
  /// (Default) Supports dual channels. Depends on the upstream of the broadcaster.
  @JsonValue(0)
  channel0,

  /// The audio stream of the broadcaster uses the FL audio channel. If the upstream of the broadcaster uses multiple audio channels, these channels will be mixed into mono first.
  @JsonValue(1)
  channel1,

  /// The audio stream of the broadcaster uses the FC audio channel. If the upstream of the broadcaster uses multiple audio channels, these channels will be mixed into mono first.
  @JsonValue(2)
  channel2,

  /// The audio stream of the broadcaster uses the FR audio channel. If the upstream of the broadcaster uses multiple audio channels, these channels will be mixed into mono first.
  @JsonValue(3)
  channel3,

  /// The audio stream of the broadcaster uses the BL audio channel. If the upstream of the broadcaster uses multiple audio channels, these channels will be mixed into mono first.
  @JsonValue(4)
  channel4,

  /// The audio stream of the broadcaster uses the BR audio channel. If the upstream of the broadcaster uses multiple audio channels, these channels will be mixed into mono first.
  @JsonValue(5)
  channel5,
}

/// Video codec types.
enum VideoCodecType {
  /// Standard VP8.
  @JsonValue(1)
  vp8,

  /// Standard H264.
  @JsonValue(2)
  h264,

  /// Enhanced VP8.
  @JsonValue(3)
  evp,

  /// Enhanced H264.
  @JsonValue(4)
  e264,
}

/// The publishing state.
///
///
enum StreamPublishState {
  /// The initial publishing state after joining the channel.
  @JsonValue(0)
  idle,

  /// Fails to publish the local stream. Possible reasons:
  /// - The local user calls [RtcEngine.muteLocalAudioStream] (`true`) or [muteLocalVideoStream] (`true`) to stop sending local streams.
  /// - The local user calls [RtcEngine.disableAudio] or [RtcEngine.disableVideo] to disable the entire audio or video module.
  /// - The local user calls [RtcEngine.enableLocalAudio] (`false`) or [RtcEngine.enableLocalVideo] (`false`) to disable the local audio sampling or video capturing.
  /// - The role of the local user is `Audience`.
  @JsonValue(1)
  noPublished,

  /// Publishing.
  @JsonValue(2)
  publishing,

  /// Publishes successfully.
  @JsonValue(3)
  published,
}

/// The subscribing state.
///
///
enum StreamSubscribeState {
  /// The initial subscribing state after joining the channel.
  @JsonValue(0)
  idle,

  /// Fails to subscribe to the remote stream. Possible reasons:
  /// - The remote user:
  ///   - Calls [RtcEngine.muteLocalAudioStream] (`true`) to stop sending local streams.
  ///   - The local user calls [RtcEngine.disableAudio] or [RtcEngine.disableVideo] to disable the entire audio or video module.
  ///   - The local user calls [RtcEngine.enableLocalAudio] (`false`) or [RtcEngine.enableLocalVideo] (`false`) to disable the local audio sampling or video capturing.
  ///   - The role of the local user is `Audience`.
  /// - The local user calls the following methods to stop receiving remote streams:
  ///   - Calls [RtcEngine.muteRemoteAudioStream] (`true`), [RtcEngine.muteAllRemoteAudioStreams] (`true`), or [RtcEngine.setDefaultMuteAllRemoteAudioStreams] (`true`) to stop receiving remote audio streams.
  ///   - Calls [RtcEngine.muteRemoteVideoStream] (`true`), [RtcEngine.muteAllRemoteVideoStreams] (`true`), or [RtcEngine.setDefaultMuteAllRemoteVideoStreams] (`true`) to stop receiving remote video streams.
  @JsonValue(1)
  noSubscribed,

  /// Subscribing.
  @JsonValue(2)
  subscribing,

  /// Subscribes to and receives the remote stream successfully.
  @JsonValue(3)
  subscribed,
}

/// Events during the RTMP or RTMPS streaming.
enum RtmpStreamingEvent {
  /// An error occurs when you add a background image or a watermark image to the RTMP stream.
  @JsonValue(1)
  failedLoadImage,
}

/// Audio session restriction.
enum AudioSessionOperationRestriction {
  /// No restriction, the SDK has full control of the audio session operations.
  @JsonValue(0)
  none,

  /// The SDK does not change the audio session category.
  @JsonValue(1)
  setCategory,

  /// The SDK does not change any setting of the audio session (category, mode, categoryOptions).
  @JsonValue(1 << 1)
  configureSession,

  /// The SDK keeps the audio session active when leaving a channel.
  @JsonValue(1 << 2)
  deactivateSession,

  /// The SDK does not configure the audio session anymore.
  @JsonValue(1 << 7)
  all,
}

/// The options for SDK preset audio effects.
enum AudioEffectPreset {
  /// Turn off audio effects and use the original voice.
  @JsonValue(0x00000000)
  audioEffectOff,

  /// An audio effect typical of a KTV venue.
  @JsonValue(0x02010100)
  roomAcousticsKTV,

  /// An audio effect typical of a concert hall.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02010200)
  roomAcousticsVocalConcert,

  /// An audio effect typical of a recording studio.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02010300)
  roomAcousticsStudio,

  /// An audio effect typical of a vintage phonograph.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02010400)
  roomAcousticsPhonograph,

  /// A virtual stereo effect that renders monophonic audio as stereo audio.
  ///
  /// **Note**
  ///
  /// Call `setAudioProfile` and set the profile parameter to `MusicStandardStereo(3)` or `MusicHighQualityStereo(5)` before setting this enumerator; otherwise, the enumerator setting does not take effect.
  @JsonValue(0x02010500)
  roomAcousticsVirtualStereo,

  /// A more spatial audio effect.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02010600)
  roomAcousticsSpacial,

  /// A more ethereal audio effect.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02010700)
  roomAcousticsEthereal,

  /// A 3D voice effect that makes the voice appear to be moving around the user. The default cycle period of the 3D voice effect is 10 seconds. To change the cycle period, call [RtcEngine.setAudioEffectParameters] after this method.
  ///
  /// **Note**
  ///
  /// - Call setAudioProfile and set the profile parameter to `MusicStandardStereo(3)` or `MusicHighQualityStereo(5)` before setting this enumerator; otherwise, the enumerator setting does not take effect.
  /// - If the 3D voice effect is enabled, users need to use stereo audio playback devices to hear the anticipated voice effect.
  @JsonValue(0x02010800)
  roomAcoustics3DVoice,

  /// The voice of a middle-aged man.
  ///
  /// **Note**
  ///
  /// - Agora recommends using this enumerator to process a male-sounding voice; otherwise, you may not hear the anticipated voice effect.
  /// - To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020100)
  voiceChangerEffectUncle,

  /// The voice of an old man.
  ///
  /// **Note**
  ///
  /// - Agora recommends using this enumerator to process a male-sounding voice; otherwise, you may not hear the anticipated voice effect.
  /// - To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020200)
  voiceChangerEffectOldMan,

  /// The voice of a boy.
  ///
  /// **Note**
  ///
  /// - Agora recommends using this enumerator to process a male-sounding voice; otherwise, you may not hear the anticipated voice effect.
  /// - To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020300)
  voiceChangerEffectBoy,

  /// The voice of a young woman.
  ///
  /// **Note**
  ///
  /// - Agora recommends using this enumerator to process a female-sounding voice; otherwise, you may not hear the anticipated voice effect.
  /// - To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020400)
  voiceChangerEffectSister,

  /// The voice of a girl.
  ///
  /// **Note**
  ///
  /// - Agora recommends using this enumerator to process a male-sounding voice; otherwise, you may not hear the anticipated voice effect.
  /// - To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020500)
  voiceChangerEffectGirl,

  /// The voice of Pig King, a character in Journey to the West who has a voice like a growling bear.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020600)
  voiceChangerEffectPigKing,

  /// The voice of Hulk.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02020700)
  voiceChangerEffectHulk,

  /// An audio effect typical of R&B music.
  ///
  /// **Note**
  ///
  /// Call [RtcEngine.setAudioProfile] and set the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator; otherwise, the enumerator setting does not take effect.
  @JsonValue(0x02030100)
  styleTransformationRnB,

  /// An audio effect typical of popular music.
  ///
  /// **Note**
  ///
  /// Call [RtcEngine.setAudioProfile] and set the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator; otherwise, the enumerator setting does not take effect.
  @JsonValue(0x02030200)
  styleTransformationPopular,

  /// A pitch correction effect that corrects the user’s pitch based on the pitch of the natural C major scale. To change the basic mode and tonic pitch, call [RtcEngine.setAudioEffectParameters] after this method.
  ///
  /// **Note**
  ///
  /// To achieve better audio effect quality, Agora recommends calling [RtcEngine.setAudioProfile] and setting the profile parameter to `MusicHighQuality(4)` or `MusicHighQualityStereo(5)` before setting this enumerator.
  @JsonValue(0x02040100)
  pitchCorrection,
}

/// The options for SDK preset voice beautifier effects.
enum VoiceBeautifierPreset {
  /// Turn off voice beautifier effects and use the original voice.
  @JsonValue(0x00000000)
  voiceBeautifierOff,

  /// A more magnetic voice.
  ///
  /// **Note**
  ///
  /// Agora recommends using this enumerator to process a male-sounding voice; otherwise, you may experience vocal distortion.
  @JsonValue(0x01010100)
  chatBeautifierMagnetic,

  /// A fresher voice.
  ///
  /// Agora recommends using this enumerator to process a female-sounding voice; otherwise, you may experience vocal distortion.
  @JsonValue(0x01010200)
  chatBeautifierFresh,

  /// A more vital voice.
  ///
  /// Agora recommends using this enumerator to process a female-sounding voice; otherwise, you may experience vocal distortion.
  @JsonValue(0x01010300)
  chatBeautifierVitality,

  /// A more vigorous voice.
  @JsonValue(0x01030100)
  timbreTransformationVigorous,

  /// A deeper voice.
  @JsonValue(0x01030200)
  timbreTransformationDeep,

  /// A mellower voice.
  @JsonValue(0x01030300)
  timbreTransformationMellow,

  /// A falsetto voice.
  @JsonValue(0x01030400)
  timbreTransformationFalsetto,

  /// A fuller voice.
  @JsonValue(0x01030500)
  timbreTransformationFull,

  /// A clearer voice.
  @JsonValue(0x01030600)
  timbreTransformationClear,

  /// A more resounding voice.
  @JsonValue(0x01030700)
  timbreTransformationResounding,

  /// A more ringing voice.
  @JsonValue(0x01030800)
  timbreTransformationRinging,
}

/// The latency level of an audience member in a interactive live streaming.
///
/// **Note**
///
/// Takes effect only when the user role is `Broadcaster`.
enum AudienceLatencyLevelType {
  /// 1: Low latency.
  @JsonValue(1)
  lowLatency,

  /// 2: (Default) Ultra low latency.
  @JsonValue(2)
  ultraLowLatency,
}
