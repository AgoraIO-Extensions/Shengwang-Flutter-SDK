import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_base.g.dart';

/// 频道场景。
@JsonEnum(alwaysCreate: true)
enum ChannelProfileType {
  /// 0: 通信场景。声网推荐使用直播场景以获取更好的音视频体验。
  @JsonValue(0)
  channelProfileCommunication,

  /// 1:（默认）直播场景。
  @JsonValue(1)
  channelProfileLiveBroadcasting,

  /// 2: 游戏场景。 废弃：请改用 channelProfileLiveBroadcasting。
  @JsonValue(2)
  channelProfileGame,

  /// 3: 互动场景。该场景对延时进行了优化。如果你的场景中有用户需要频繁互动，建议使用该场景。 废弃：请改用 channelProfileLiveBroadcasting。
  @JsonValue(3)
  channelProfileCloudGaming,

  /// @nodoc
  @JsonValue(4)
  channelProfileCommunication1v1,
}

/// @nodoc
extension ChannelProfileTypeExt on ChannelProfileType {
  /// @nodoc
  static ChannelProfileType fromValue(int value) {
    return $enumDecode(_$ChannelProfileTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ChannelProfileTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum WarnCodeType {
  /// @nodoc
  @JsonValue(8)
  warnInvalidView,

  /// @nodoc
  @JsonValue(16)
  warnInitVideo,

  /// @nodoc
  @JsonValue(20)
  warnPending,

  /// @nodoc
  @JsonValue(103)
  warnNoAvailableChannel,

  /// @nodoc
  @JsonValue(104)
  warnLookupChannelTimeout,

  /// @nodoc
  @JsonValue(105)
  warnLookupChannelRejected,

  /// @nodoc
  @JsonValue(106)
  warnOpenChannelTimeout,

  /// @nodoc
  @JsonValue(107)
  warnOpenChannelRejected,

  /// @nodoc
  @JsonValue(111)
  warnSwitchLiveVideoTimeout,

  /// @nodoc
  @JsonValue(118)
  warnSetClientRoleTimeout,

  /// @nodoc
  @JsonValue(121)
  warnOpenChannelInvalidTicket,

  /// @nodoc
  @JsonValue(122)
  warnOpenChannelTryNextVos,

  /// @nodoc
  @JsonValue(131)
  warnChannelConnectionUnrecoverable,

  /// @nodoc
  @JsonValue(132)
  warnChannelConnectionIpChanged,

  /// @nodoc
  @JsonValue(133)
  warnChannelConnectionPortChanged,

  /// @nodoc
  @JsonValue(134)
  warnChannelSocketError,

  /// @nodoc
  @JsonValue(701)
  warnAudioMixingOpenError,

  /// @nodoc
  @JsonValue(1014)
  warnAdmRuntimePlayoutWarning,

  /// @nodoc
  @JsonValue(1016)
  warnAdmRuntimeRecordingWarning,

  /// @nodoc
  @JsonValue(1019)
  warnAdmRecordAudioSilence,

  /// @nodoc
  @JsonValue(1020)
  warnAdmPlayoutMalfunction,

  /// @nodoc
  @JsonValue(1021)
  warnAdmRecordMalfunction,

  /// @nodoc
  @JsonValue(1031)
  warnAdmRecordAudioLowlevel,

  /// @nodoc
  @JsonValue(1032)
  warnAdmPlayoutAudioLowlevel,

  /// @nodoc
  @JsonValue(1040)
  warnAdmWindowsNoDataReadyEvent,

  /// @nodoc
  @JsonValue(1051)
  warnApmHowling,

  /// @nodoc
  @JsonValue(1052)
  warnAdmGlitchState,

  /// @nodoc
  @JsonValue(1053)
  warnAdmImproperSettings,

  /// @nodoc
  @JsonValue(1055)
  warnAdmPopState,

  /// @nodoc
  @JsonValue(1322)
  warnAdmWinCoreNoRecordingDevice,

  /// @nodoc
  @JsonValue(1323)
  warnAdmWinCoreNoPlayoutDevice,

  /// @nodoc
  @JsonValue(1324)
  warnAdmWinCoreImproperCaptureRelease,
}

/// @nodoc
extension WarnCodeTypeExt on WarnCodeType {
  /// @nodoc
  static WarnCodeType fromValue(int value) {
    return $enumDecode(_$WarnCodeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$WarnCodeTypeEnumMap[this]!;
  }
}

/// 错误代码。
///
/// 错误代码意味着 SDK 遇到不可恢复的错误，需要应用程序干预。例如：打开摄像头失败时会返回错误，App 需要提示用户不能使用摄像头。
@JsonEnum(alwaysCreate: true)
enum ErrorCodeType {
  /// 0：没有错误。
  @JsonValue(0)
  errOk,

  /// 1：一般性的错误（没有明确归类的错误原因）。请重新调用方法。
  @JsonValue(1)
  errFailed,

  /// 2：方法中设置了无效的参数。例如指定的频道名中含有非法字符。请重新设置参数。
  @JsonValue(2)
  errInvalidArgument,

  /// 3：SDK 尚未准备好。可能的原因有： RtcEngine 初始化失败。请重新初始化 RtcEngine 。
  ///  调用方法时用户尚未加入频道。请检查方法的调用逻辑。
  ///  调用 rate 或 complain 方法时用户尚未离开频道。请检查方法的调用逻辑。
  ///  音频模块未开启。
  ///  程序集不完整。
  @JsonValue(3)
  errNotReady,

  /// 4： RtcEngine 当前状态不支持该操作。可能的原因有：
  ///  使用内置加密时，设置的加密模式不正确，或加载外部加密库失败。请检查加密的枚举值是否正确，或重新加载外部加密库。
  @JsonValue(4)
  errNotSupported,

  /// 5：方法调用被拒绝。可能的原因有： RtcEngine 初始化失败。请重新初始化 RtcEngine 。
  ///  在加入频道时，将频道名设为空字符 "" 。请重新设置频道名。
  ///  多频道场景下，在调用 joinChannelEx 方法加入频道时，设置的频道名已存在。请重新设置频道名。
  @JsonValue(5)
  errRefused,

  /// 6：缓冲区大小不足以存放返回的数据。
  @JsonValue(6)
  errBufferTooSmall,

  /// 7： RtcEngine 尚未初始化就调用方法。请确认在调用该方法前已创建 RtcEngine 对象并完成初始化。
  @JsonValue(7)
  errNotInitialized,

  /// 8：当前状态无效。
  @JsonValue(8)
  errInvalidState,

  /// 9：没有操作权限。请检查用户是否授予了 App 音视频设备的使用权限。
  @JsonValue(9)
  errNoPermission,

  /// 10： 方法调用超时。有些方法调用需要 SDK 返回结果，如果 SDK 处理事件过长，超过 10 秒没有返回，会出现此错误。
  @JsonValue(10)
  errTimedout,

  /// @nodoc
  @JsonValue(11)
  errCanceled,

  /// @nodoc
  @JsonValue(12)
  errTooOften,

  /// @nodoc
  @JsonValue(13)
  errBindSocket,

  /// @nodoc
  @JsonValue(14)
  errNetDown,

  /// 17：加入频道被拒绝。可能的原因有：
  ///  用户已经在频道中。建议通过 onConnectionStateChanged 回调判断用户是否在频道中。除收到 connectionStateDisconnected (1) 状态外，不要再次调用该方法加入频道。
  ///  用户在调用 startEchoTest 进行通话测试后，未调用 stopEchoTest 结束当前测试就尝试加入频道。开始通话测试后，需要先调用 stopEchoTest 结束当前测试，再加入频道。
  @JsonValue(17)
  errJoinChannelRejected,

  /// 18：离开频道失败。可能的原因有：
  ///  调用 leaveChannel 前，用户已离开频道。停止调用该方法即可。
  ///  用户尚未加入频道，就调用 leaveChannel 退出频道。这种情况下无需额外操作。
  @JsonValue(18)
  errLeaveChannelRejected,

  /// 19：资源已被占用，不能重复使用。
  @JsonValue(19)
  errAlreadyInUse,

  /// 20：SDK 放弃请求，可能由于请求的次数太多。
  @JsonValue(20)
  errAborted,

  /// 21：Windows 下特定的防火墙设置导致 RtcEngine 初始化失败然后崩溃。
  @JsonValue(21)
  errInitNetEngine,

  /// 22：SDK 分配资源失败，可能由于 App 占用资源过多或系统资源耗尽。
  @JsonValue(22)
  errResourceLimited,

  /// @nodoc
  @JsonValue(23)
  errFuncIsProhibited,

  /// 101：不是有效的 App ID。请更换有效的 App ID 重新加入频道。
  @JsonValue(101)
  errInvalidAppId,

  /// 102：不是有效的频道名。可能的原因是设置的参数数据类型不正确。请更换有效的频道名重新加入频道。
  @JsonValue(102)
  errInvalidChannelName,

  /// 103：无法获取当前区域的服务器资源。请在初始化 RtcEngine 时尝试指定其他区域。
  @JsonValue(103)
  errNoServerResources,

  /// 109：当前使用的 Token 过期，不再有效。请在服务端申请生成新的 Token，并调用 renewToken 更新 Token。 弃用：该枚举已废弃。请改用 onConnectionStateChanged 回调中的 connectionChangedTokenExpired (9)。
  @JsonValue(109)
  errTokenExpired,

  /// 弃用：该枚举已废弃。请改用 onConnectionStateChanged 回调中的 connectionChangedInvalidToken (8)。 110：Token 无效。一般有以下原因：
  ///  在控制台中启用了 App 证书，但未使用 App ID + Token 鉴权。当项目启用了 App 证书，就必须使用 Token 鉴权。
  ///  生成 Token 时填入的 uid 字段，和用户加入频道时填入的 uid 不匹配。
  @JsonValue(110)
  errInvalidToken,

  /// 111：网络连接中断。SDK 在和服务器建立连接后，失去网络连接超过 4 秒。
  @JsonValue(111)
  errConnectionInterrupted,

  /// 112：网络连接丢失。网络连接中断，且 SDK 无法在 10 秒内连接服务器。
  @JsonValue(112)
  errConnectionLost,

  /// 113：调用 sendStreamMessage 方法时用户不在频道内。
  @JsonValue(113)
  errNotInChannel,

  /// 114：在调用 sendStreamMessage 时，发送的数据长度大于 1 KB。
  @JsonValue(114)
  errSizeTooLarge,

  /// 115：在调用 sendStreamMessage 时，发送数据的频率超过限制（6 KB/s）。
  @JsonValue(115)
  errBitrateLimit,

  /// 116：在调用 createDataStream 时，创建的数据流超过限制（5 个）。
  @JsonValue(116)
  errTooManyDataStreams,

  /// 117：数据流发送超时。
  @JsonValue(117)
  errStreamMessageTimeout,

  /// 119：用户切换角色失败，请尝试重新加入频道。
  @JsonValue(119)
  errSetClientRoleNotAuthorized,

  /// 120：媒体流解密失败。可能是用户加入频道时使用了错误的密钥。请检查用户加入频道时填入的密钥，或引导用户尝试重新加入频道。
  @JsonValue(120)
  errDecryptionFailed,

  /// 121：该用户 ID 无效。
  @JsonValue(121)
  errInvalidUserId,

  /// 122：数据流解密失败。可能是用户加入频道时使用了错误的密钥。请检查用户加入频道时填入的密钥，或引导用户尝试重新加入频道。
  @JsonValue(122)
  errDatastreamDecryptionFailed,

  /// 123：该用户被服务器禁止。
  @JsonValue(123)
  errClientIsBannedByServer,

  /// 130：SDK 不支持将加密过的流推到 CDN 上。
  @JsonValue(130)
  errEncryptedStreamNotAllowedPublish,

  /// @nodoc
  @JsonValue(131)
  errLicenseCredentialInvalid,

  /// 134：无效的 user account，可能是因为设置了无效的参数。
  @JsonValue(134)
  errInvalidUserAccount,

  /// @nodoc
  @JsonValue(157)
  errModuleNotFound,

  /// @nodoc
  @JsonValue(157)
  errCertRaw,

  /// @nodoc
  @JsonValue(158)
  errCertJsonPart,

  /// @nodoc
  @JsonValue(159)
  errCertJsonInval,

  /// @nodoc
  @JsonValue(160)
  errCertJsonNomem,

  /// @nodoc
  @JsonValue(161)
  errCertCustom,

  /// @nodoc
  @JsonValue(162)
  errCertCredential,

  /// @nodoc
  @JsonValue(163)
  errCertSign,

  /// @nodoc
  @JsonValue(164)
  errCertFail,

  /// @nodoc
  @JsonValue(165)
  errCertBuf,

  /// @nodoc
  @JsonValue(166)
  errCertNull,

  /// @nodoc
  @JsonValue(167)
  errCertDuedate,

  /// @nodoc
  @JsonValue(168)
  errCertRequest,

  /// 200：不支持的 PCM 格式。
  @JsonValue(200)
  errPcmsendFormat,

  /// 201：缓冲区溢出，PCM 发送速率过快。
  @JsonValue(201)
  errPcmsendBufferoverflow,

  /// @nodoc
  @JsonValue(250)
  errRdtUserNotExist,

  /// @nodoc
  @JsonValue(251)
  errRdtUserNotReady,

  /// @nodoc
  @JsonValue(252)
  errRdtDataBlocked,

  /// @nodoc
  @JsonValue(253)
  errRdtCmdExceedLimit,

  /// @nodoc
  @JsonValue(254)
  errRdtDataExceedLimit,

  /// @nodoc
  @JsonValue(255)
  errRdtEncryption,

  /// @nodoc
  @JsonValue(428)
  errLoginAlreadyLogin,

  /// 1001：加载媒体引擎失败。
  @JsonValue(1001)
  errLoadMediaEngine,

  /// 1005：音频设备出现错误（未指明何种错误）。请检查音频设备是否被其他应用占用，或者尝试重新进入频道。
  @JsonValue(1005)
  errAdmGeneralError,

  /// 1008：初始化播放设备出错。请检查播放设备是否被其他应用占用，或者尝试重新进入频道。
  @JsonValue(1008)
  errAdmInitPlayout,

  /// 1009：启动播放设备出错。请检查播放设备是否正常。
  @JsonValue(1009)
  errAdmStartPlayout,

  /// 1010：停止播放设备出错。
  @JsonValue(1010)
  errAdmStopPlayout,

  /// 1011：初始化录音设备出错。请检查录音设备是否正常，或者尝试重新进入频道。
  @JsonValue(1011)
  errAdmInitRecording,

  /// 1012：启动录音设备出错。请检查录音设备是否正常。
  @JsonValue(1012)
  errAdmStartRecording,

  /// 1013：停止录音设备出错。
  @JsonValue(1013)
  errAdmStopRecording,

  /// 1501：没有摄像头使用权限。请检查是否已经打开摄像头权限。
  @JsonValue(1501)
  errVdmCameraNotAuthorized,
}

/// @nodoc
extension ErrorCodeTypeExt on ErrorCodeType {
  /// @nodoc
  static ErrorCodeType fromValue(int value) {
    return $enumDecode(_$ErrorCodeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ErrorCodeTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum LicenseErrorType {
  /// @nodoc
  @JsonValue(1)
  licenseErrInvalid,

  /// @nodoc
  @JsonValue(2)
  licenseErrExpire,

  /// @nodoc
  @JsonValue(3)
  licenseErrMinutesExceed,

  /// @nodoc
  @JsonValue(4)
  licenseErrLimitedPeriod,

  /// @nodoc
  @JsonValue(5)
  licenseErrDiffDevices,

  /// @nodoc
  @JsonValue(99)
  licenseErrInternal,
}

/// @nodoc
extension LicenseErrorTypeExt on LicenseErrorType {
  /// @nodoc
  static LicenseErrorType fromValue(int value) {
    return $enumDecode(_$LicenseErrorTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LicenseErrorTypeEnumMap[this]!;
  }
}

/// SDK 对 Audio Session 的操作权限。
@JsonEnum(alwaysCreate: true)
enum AudioSessionOperationRestriction {
  /// 0: 没有限制，SDK 可以对 Audio Session 进行更改。
  @JsonValue(0)
  audioSessionOperationRestrictionNone,

  /// 1: SDK 不能更改 Audio Session 的 category。
  @JsonValue(1)
  audioSessionOperationRestrictionSetCategory,

  /// 2: SDK 不能更改 Audio Session 的 category、mode 或 categoryOptions。
  @JsonValue(1 << 1)
  audioSessionOperationRestrictionConfigureSession,

  /// 4: 离开频道时，SDK 会保持 Audio Session 处于活动状态，例如在后台播放音频。
  @JsonValue(1 << 2)
  audioSessionOperationRestrictionDeactivateSession,

  /// 128: 完全限制 SDK 对 Audio Session 的操作权限，SDK 不能再对 Audio Session 进行任何更改。
  @JsonValue(1 << 7)
  audioSessionOperationRestrictionAll,
}

extension AudioSessionOperationRestrictionExt
    on AudioSessionOperationRestriction {
  /// @nodoc
  static AudioSessionOperationRestriction fromValue(int value) {
    return $enumDecode(_$AudioSessionOperationRestrictionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioSessionOperationRestrictionEnumMap[this]!;
  }
}

/// 用户离线原因。
@JsonEnum(alwaysCreate: true)
enum UserOfflineReasonType {
  /// 0: 用户主动离开。
  @JsonValue(0)
  userOfflineQuit,

  /// 1: 因过长时间收不到对方数据包，超时掉线。 由于 SDK 使用的是不可靠通道，也有可能对方主动离开频道，但是本地没收到对方离开消息而误判为超时掉线。
  @JsonValue(1)
  userOfflineDropped,

  /// 2: 用户身份从主播切换为观众。
  @JsonValue(2)
  userOfflineBecomeAudience,
}

/// @nodoc
extension UserOfflineReasonTypeExt on UserOfflineReasonType {
  /// @nodoc
  static UserOfflineReasonType fromValue(int value) {
    return $enumDecode(_$UserOfflineReasonTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$UserOfflineReasonTypeEnumMap[this]!;
  }
}

/// 接口类。
@JsonEnum(alwaysCreate: true)
enum InterfaceIdType {
  /// 1： AudioDeviceManager 接口类。
  @JsonValue(1)
  agoraIidAudioDeviceManager,

  /// 2： VideoDeviceManager 接口类。
  @JsonValue(2)
  agoraIidVideoDeviceManager,

  /// 3：该接口类已废弃。
  @JsonValue(3)
  agoraIidParameterEngine,

  /// 4： MediaEngine 接口类。
  @JsonValue(4)
  agoraIidMediaEngine,

  /// @nodoc
  @JsonValue(5)
  agoraIidAudioEngine,

  /// @nodoc
  @JsonValue(6)
  agoraIidVideoEngine,

  /// @nodoc
  @JsonValue(7)
  agoraIidRtcConnection,

  /// 8：该接口类已废弃。
  @JsonValue(8)
  agoraIidSignalingEngine,

  /// @nodoc
  @JsonValue(9)
  agoraIidMediaEngineRegulator,

  /// 11： LocalSpatialAudioEngine 接口类。
  @JsonValue(11)
  agoraIidLocalSpatialAudio,

  /// @nodoc
  @JsonValue(13)
  agoraIidStateSync,

  /// @nodoc
  @JsonValue(14)
  agoraIidMetaService,

  /// 15： MusicContentCenter 接口类。
  @JsonValue(15)
  agoraIidMusicContentCenter,

  /// @nodoc
  @JsonValue(16)
  agoraIidH265Transcoder,
}

/// @nodoc
extension InterfaceIdTypeExt on InterfaceIdType {
  /// @nodoc
  static InterfaceIdType fromValue(int value) {
    return $enumDecode(_$InterfaceIdTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$InterfaceIdTypeEnumMap[this]!;
  }
}

/// 网络质量。
@JsonEnum(alwaysCreate: true)
enum QualityType {
  /// 0: 网络质量未知。
  @JsonValue(0)
  qualityUnknown,

  /// 1: 网络质量极好。
  @JsonValue(1)
  qualityExcellent,

  /// 2: 用户主观感觉和 excellent 差不多，但码率可能略低于 excellent。
  @JsonValue(2)
  qualityGood,

  /// 3: 用户主观感受有瑕疵但不影响沟通。
  @JsonValue(3)
  qualityPoor,

  /// 4: 勉强能沟通但不顺畅。
  @JsonValue(4)
  qualityBad,

  /// 5: 网络质量非常差，基本不能沟通。
  @JsonValue(5)
  qualityVbad,

  /// 6: 完全无法沟通。
  @JsonValue(6)
  qualityDown,

  /// @nodoc
  @JsonValue(7)
  qualityUnsupported,

  /// 8: 网络质量检测进行中。
  @JsonValue(8)
  qualityDetecting,
}

/// @nodoc
extension QualityTypeExt on QualityType {
  /// @nodoc
  static QualityType fromValue(int value) {
    return $enumDecode(_$QualityTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$QualityTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum FitModeType {
  /// @nodoc
  @JsonValue(1)
  modeCover,

  /// @nodoc
  @JsonValue(2)
  modeContain,
}

/// @nodoc
extension FitModeTypeExt on FitModeType {
  /// @nodoc
  static FitModeType fromValue(int value) {
    return $enumDecode(_$FitModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FitModeTypeEnumMap[this]!;
  }
}

/// 视频顺时针旋转信息。
@JsonEnum(alwaysCreate: true)
enum VideoOrientation {
  /// 0:（默认）顺时针旋转 0 度。
  @JsonValue(0)
  videoOrientation0,

  /// 90: 顺时针旋转 90 度。
  @JsonValue(90)
  videoOrientation90,

  /// 180: 顺时针旋转 180 度。
  @JsonValue(180)
  videoOrientation180,

  /// 270: 顺时针旋转 270 度。
  @JsonValue(270)
  videoOrientation270,
}

/// @nodoc
extension VideoOrientationExt on VideoOrientation {
  /// @nodoc
  static VideoOrientation fromValue(int value) {
    return $enumDecode(_$VideoOrientationEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoOrientationEnumMap[this]!;
  }
}

/// 视频帧率。
@JsonEnum(alwaysCreate: true)
enum FrameRate {
  /// 1: 1 fps。
  @JsonValue(1)
  frameRateFps1,

  /// 7: 7 fps。
  @JsonValue(7)
  frameRateFps7,

  /// 10: 10 fps。
  @JsonValue(10)
  frameRateFps10,

  /// 15: 15 fps。
  @JsonValue(15)
  frameRateFps15,

  /// 24: 24 fps。
  @JsonValue(24)
  frameRateFps24,

  /// 30: 30 fps。
  @JsonValue(30)
  frameRateFps30,

  /// 60: 60 fps。 仅适用于 Windows 和 macOS 平台。
  @JsonValue(60)
  frameRateFps60,
}

/// @nodoc
extension FrameRateExt on FrameRate {
  /// @nodoc
  static FrameRate fromValue(int value) {
    return $enumDecode(_$FrameRateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FrameRateEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum FrameWidth {
  /// @nodoc
  @JsonValue(960)
  frameWidth960,
}

/// @nodoc
extension FrameWidthExt on FrameWidth {
  /// @nodoc
  static FrameWidth fromValue(int value) {
    return $enumDecode(_$FrameWidthEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FrameWidthEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum FrameHeight {
  /// @nodoc
  @JsonValue(540)
  frameHeight540,
}

/// @nodoc
extension FrameHeightExt on FrameHeight {
  /// @nodoc
  static FrameHeight fromValue(int value) {
    return $enumDecode(_$FrameHeightEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FrameHeightEnumMap[this]!;
  }
}

/// 视频帧类型。
@JsonEnum(alwaysCreate: true)
enum VideoFrameType {
  /// 0: 黑帧。
  @JsonValue(0)
  videoFrameTypeBlankFrame,

  /// 3: 关键帧。
  @JsonValue(3)
  videoFrameTypeKeyFrame,

  /// 4: Delta 帧。
  @JsonValue(4)
  videoFrameTypeDeltaFrame,

  /// 5: B 帧。
  @JsonValue(5)
  videoFrameTypeBFrame,

  /// 6: 丢弃帧。
  @JsonValue(6)
  videoFrameTypeDroppableFrame,

  /// 未知帧。
  @JsonValue(7)
  videoFrameTypeUnknow,
}

/// @nodoc
extension VideoFrameTypeExt on VideoFrameType {
  /// @nodoc
  static VideoFrameType fromValue(int value) {
    return $enumDecode(_$VideoFrameTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoFrameTypeEnumMap[this]!;
  }
}

/// 视频编码的方向模式。
@JsonEnum(alwaysCreate: true)
enum OrientationMode {
  /// 0: （默认）该模式下 SDK 输出的视频方向与采集到的视频方向一致。接收端会根据收到的视频旋转信息对视频进行旋转。该模式适用于接收端可以调整视频方向的场景。
  ///  如果采集的视频是横屏模式，则输出的视频也是横屏模式。
  ///  如果采集的视频是竖屏模式，则输出的视频也是竖屏模式。
  @JsonValue(0)
  orientationModeAdaptive,

  /// 1: 该模式下 SDK 固定输出风景（横屏）模式的视频。如果采集到的视频是竖屏模式，则视频编码器会对其进行裁剪。该模式适用于当接收端无法调整视频方向时，如使用旁路推流场景下。
  @JsonValue(1)
  orientationModeFixedLandscape,

  /// 2: 该模式下 SDK 固定输出人像（竖屏）模式的视频，如果采集到的视频是横屏模式，则视频编码器会对其进行裁剪。该模式适用于当接收端无法调整视频方向时，如使用旁路推流场景下。
  @JsonValue(2)
  orientationModeFixedPortrait,
}

/// @nodoc
extension OrientationModeExt on OrientationMode {
  /// @nodoc
  static OrientationMode fromValue(int value) {
    return $enumDecode(_$OrientationModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$OrientationModeEnumMap[this]!;
  }
}

/// 带宽受限时的视频编码降级偏好。
@JsonEnum(alwaysCreate: true)
enum DegradationPreference {
  /// -1：（默认）自动模式。SDK 会根据你设置的视频场景，自动选择 maintainFramerate、maintainBalanced 或 maintainResolution，以获得最优的综合质量体验 (QoE)。
  @JsonValue(-1)
  maintainAuto,

  /// 0：带宽受限时，视频编码时优先降低视频帧率，维持分辨率不变。该降级偏好适用于画质优先的场景。 弃用：该枚举已废弃。请改用其他枚举。
  @JsonValue(0)
  maintainQuality,

  /// 1：带宽受限时，视频编码时优先降低视频分辨率，维持视频帧率不变。该降级偏好适用于流畅性优先且允许画质降低的场景。
  @JsonValue(1)
  maintainFramerate,

  /// 2：带宽受限时，视频编码时同时降低视频帧率和视频分辨率。maintainBalanced 的降幅比 maintainQuality 和 maintainFramerate 降幅更低，适用于流畅性和画质均有限的场景。 本地发送的视频分辨率可能改变，远端用户需能处理这种情况，详见 onVideoSizeChanged 。
  @JsonValue(2)
  maintainBalanced,

  /// 3: 带宽受限时，视频编码时优先降低视频帧率，维持分辨率保持不变。该降级偏好适用于画质优先的场景。
  @JsonValue(3)
  maintainResolution,

  /// @nodoc
  @JsonValue(100)
  disabled,
}

/// @nodoc
extension DegradationPreferenceExt on DegradationPreference {
  /// @nodoc
  static DegradationPreference fromValue(int value) {
    return $enumDecode(_$DegradationPreferenceEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$DegradationPreferenceEnumMap[this]!;
  }
}

/// 视频尺寸。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoDimensions implements AgoraSerializable {
  /// @nodoc
  const VideoDimensions({this.width, this.height});

  /// 视频宽度，单位为像素。
  @JsonKey(name: 'width')
  final int? width;

  /// 视频高度，单位为像素。
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  factory VideoDimensions.fromJson(Map<String, dynamic> json) =>
      _$VideoDimensionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoDimensionsToJson(this);
}

/// @nodoc
const standardBitrate = 0;

/// @nodoc
const compatibleBitrate = -1;

/// @nodoc
const defaultMinBitrate = -1;

/// @nodoc
const defaultMinBitrateEqualToTargetBitrate = -2;

/// 屏幕共享设备支持的最高帧率。
@JsonEnum(alwaysCreate: true)
enum ScreenCaptureFramerateCapability {
  /// 0：最高支持 15 fps。
  @JsonValue(0)
  screenCaptureFramerateCapability15Fps,

  /// 1：最高支持 30 fps。
  @JsonValue(1)
  screenCaptureFramerateCapability30Fps,

  /// 2：最高支持 60 fps。
  @JsonValue(2)
  screenCaptureFramerateCapability60Fps,
}

extension ScreenCaptureFramerateCapabilityExt
    on ScreenCaptureFramerateCapability {
  /// @nodoc
  static ScreenCaptureFramerateCapability fromValue(int value) {
    return $enumDecode(_$ScreenCaptureFramerateCapabilityEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ScreenCaptureFramerateCapabilityEnumMap[this]!;
  }
}

/// 视频编解码能力等级。
@JsonEnum(alwaysCreate: true)
enum VideoCodecCapabilityLevel {
  /// -1：不支持的视频类型。目前仅支持对 H.264 和 H.265 格式的视频进行查询，如果视频为其他格式，则返回该值。
  @JsonValue(-1)
  codecCapabilityLevelUnspecified,

  /// 5：基本的编解码支持，即：对 1080p、30 fps 以下的视频进行编解码。
  @JsonValue(5)
  codecCapabilityLevelBasicSupport,

  /// 10：最高支持对 1080p、30 fps 的视频进行编解码。
  @JsonValue(10)
  codecCapabilityLevel1080p30fps,

  /// 20：最高支持对 1080p、60 fps 的视频进行编解码。
  @JsonValue(20)
  codecCapabilityLevel1080p60fps,

  /// 30：最高支持对 4K、30 fps 的视频进行编解码。
  @JsonValue(30)
  codecCapabilityLevel4k60fps,
}

/// @nodoc
extension VideoCodecCapabilityLevelExt on VideoCodecCapabilityLevel {
  /// @nodoc
  static VideoCodecCapabilityLevel fromValue(int value) {
    return $enumDecode(_$VideoCodecCapabilityLevelEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoCodecCapabilityLevelEnumMap[this]!;
  }
}

/// 视频编码格式。
@JsonEnum(alwaysCreate: true)
enum VideoCodecType {
  /// 0：（默认）不指定编解码格式。SDK 会根据当前视频流的分辨率、设备性能自动匹配适合的编解码格式。
  @JsonValue(0)
  videoCodecNone,

  /// 1：标准 VP8。
  @JsonValue(1)
  videoCodecVp8,

  /// 2：标准 H.264。
  @JsonValue(2)
  videoCodecH264,

  /// 3：标准 H.265。
  @JsonValue(3)
  videoCodecH265,

  /// 6：Generic。本类型主要用于传输视频裸数据(比如用户已加密的视频帧)，该类型视频帧以回调的形式返回给用户，需要用户自行解码与渲染。
  @JsonValue(6)
  videoCodecGeneric,

  /// @nodoc
  @JsonValue(7)
  videoCodecGenericH264,

  /// @nodoc
  @JsonValue(12)
  videoCodecAv1,

  /// @nodoc
  @JsonValue(13)
  videoCodecVp9,

  /// 20：Generic JPEG。本类型所需的算力较小，可用于算力有限的 IoT 设备。
  @JsonValue(20)
  videoCodecGenericJpeg,
}

/// @nodoc
extension VideoCodecTypeExt on VideoCodecType {
  /// @nodoc
  static VideoCodecType fromValue(int value) {
    return $enumDecode(_$VideoCodecTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoCodecTypeEnumMap[this]!;
  }
}

/// 摄像头的焦距类型。
///
/// 仅适用于 Android 和 iOS。
@JsonEnum(alwaysCreate: true)
enum CameraFocalLengthType {
  /// 0：（默认）标准镜头。
  @JsonValue(0)
  cameraFocalLengthDefault,

  /// 1：广角镜头。
  @JsonValue(1)
  cameraFocalLengthWideAngle,

  /// 2：超广角镜头。
  @JsonValue(2)
  cameraFocalLengthUltraWide,

  /// 3：（仅适用于 iOS）长焦镜头。
  @JsonValue(3)
  cameraFocalLengthTelephoto,
}

/// @nodoc
extension CameraFocalLengthTypeExt on CameraFocalLengthType {
  /// @nodoc
  static CameraFocalLengthType fromValue(int value) {
    return $enumDecode(_$CameraFocalLengthTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraFocalLengthTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum TCcMode {
  /// @nodoc
  @JsonValue(0)
  ccEnabled,

  /// @nodoc
  @JsonValue(1)
  ccDisabled,
}

/// @nodoc
extension TCcModeExt on TCcMode {
  /// @nodoc
  static TCcMode fromValue(int value) {
    return $enumDecode(_$TCcModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$TCcModeEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SenderOptions implements AgoraSerializable {
  /// @nodoc
  const SenderOptions({this.ccMode, this.codecType, this.targetBitrate});

  /// @nodoc
  @JsonKey(name: 'ccMode')
  final TCcMode? ccMode;

  /// @nodoc
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// @nodoc
  @JsonKey(name: 'targetBitrate')
  final int? targetBitrate;

  /// @nodoc
  factory SenderOptions.fromJson(Map<String, dynamic> json) =>
      _$SenderOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SenderOptionsToJson(this);
}

/// 音频编解码格式。
@JsonEnum(alwaysCreate: true)
enum AudioCodecType {
  /// 1: OPUS。
  @JsonValue(1)
  audioCodecOpus,

  /// 3: PCMA。
  @JsonValue(3)
  audioCodecPcma,

  /// 4: PCMU。
  @JsonValue(4)
  audioCodecPcmu,

  /// 5: G722。
  @JsonValue(5)
  audioCodecG722,

  /// 8: LC-AAC。
  @JsonValue(8)
  audioCodecAaclc,

  /// 9: HE-AAC。
  @JsonValue(9)
  audioCodecHeaac,

  /// 10: JC1。
  @JsonValue(10)
  audioCodecJc1,

  /// 11: HE-AAC v2。
  @JsonValue(11)
  audioCodecHeaac2,

  /// @nodoc
  @JsonValue(12)
  audioCodecLpcnet,

  /// @nodoc
  @JsonValue(13)
  audioCodecOpusmc,
}

/// @nodoc
extension AudioCodecTypeExt on AudioCodecType {
  /// @nodoc
  static AudioCodecType fromValue(int value) {
    return $enumDecode(_$AudioCodecTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioCodecTypeEnumMap[this]!;
  }
}

/// 音频编码类型。
@JsonEnum(alwaysCreate: true)
enum AudioEncodingType {
  /// 0x010101: AAC 编码格式，16000 Hz 采样率，低音质。音频时长为 10 分钟的文件编码后大小约为 1.2 MB。
  @JsonValue(0x010101)
  audioEncodingTypeAac16000Low,

  /// 0x010102: AAC 编码格式，16000 Hz 采样率，中音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x010102)
  audioEncodingTypeAac16000Medium,

  /// 0x010201: AAC 编码格式，32000 Hz 采样率，低音质。音频时长为 10 分钟的文件编码后大小约为 1.2 MB。
  @JsonValue(0x010201)
  audioEncodingTypeAac32000Low,

  /// 0x010202: AAC 编码格式，32000 Hz 采样率，中音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x010202)
  audioEncodingTypeAac32000Medium,

  /// 0x010203: AAC 编码格式，32000 Hz 采样率，高音质。音频时长为 10 分钟的文件编码后大小约为 3.5 MB。
  @JsonValue(0x010203)
  audioEncodingTypeAac32000High,

  /// 0x010302: AAC 编码格式，48000 Hz 采样率，中音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x010302)
  audioEncodingTypeAac48000Medium,

  /// 0x010303: AAC 编码格式，48000 Hz 采样率，高音质。音频时长为 10 分钟的文件编码后大小约为 3.5 MB。
  @JsonValue(0x010303)
  audioEncodingTypeAac48000High,

  /// 0x020101: OPUS 编码格式，16000 Hz 采样率，低音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x020101)
  audioEncodingTypeOpus16000Low,

  /// 0x020102: OPUS 编码格式，16000 Hz 采样率，中音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x020102)
  audioEncodingTypeOpus16000Medium,

  /// 0x020302: OPUS 编码格式，48000 Hz 采样率，中音质。音频时长为 10 分钟的文件编码后大小约为 2 MB。
  @JsonValue(0x020302)
  audioEncodingTypeOpus48000Medium,

  /// 0x020303: OPUS 编码格式，48000 Hz 采样率，高音质。音频时长为 10 分钟的文件编码后大小约为 3.5 MB。
  @JsonValue(0x020303)
  audioEncodingTypeOpus48000High,
}

/// @nodoc
extension AudioEncodingTypeExt on AudioEncodingType {
  /// @nodoc
  static AudioEncodingType fromValue(int value) {
    return $enumDecode(_$AudioEncodingTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioEncodingTypeEnumMap[this]!;
  }
}

/// 水印的适配模式。
@JsonEnum(alwaysCreate: true)
enum WatermarkFitMode {
  /// 0: 使用你在 WatermarkOptions 中设置的 positionInLandscapeMode 和 positionInPortraitMode 值。此时 WatermarkRatio 中的设置无效。
  @JsonValue(0)
  fitModeCoverPosition,

  /// 1: 使用你在 WatermarkRatio 中设置的值。此时 WatermarkOptions 中 positionInLandscapeMode 和 positionInPortraitMode 的设置无效。
  @JsonValue(1)
  fitModeUseImageRatio,
}

/// @nodoc
extension WatermarkFitModeExt on WatermarkFitMode {
  /// @nodoc
  static WatermarkFitMode fromValue(int value) {
    return $enumDecode(_$WatermarkFitModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$WatermarkFitModeEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EncodedAudioFrameAdvancedSettings implements AgoraSerializable {
  /// @nodoc
  const EncodedAudioFrameAdvancedSettings({this.speech, this.sendEvenIfEmpty});

  /// @nodoc
  @JsonKey(name: 'speech')
  final bool? speech;

  /// @nodoc
  @JsonKey(name: 'sendEvenIfEmpty')
  final bool? sendEvenIfEmpty;

  /// @nodoc
  factory EncodedAudioFrameAdvancedSettings.fromJson(
          Map<String, dynamic> json) =>
      _$EncodedAudioFrameAdvancedSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$EncodedAudioFrameAdvancedSettingsToJson(this);
}

/// 编码后音频的信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EncodedAudioFrameInfo implements AgoraSerializable {
  /// @nodoc
  const EncodedAudioFrameInfo(
      {this.codec,
      this.sampleRateHz,
      this.samplesPerChannel,
      this.numberOfChannels,
      this.advancedSettings,
      this.captureTimeMs});

  /// 音频编码规格: AudioCodecType 。
  @JsonKey(name: 'codec')
  final AudioCodecType? codec;

  /// 音频采样率 (Hz)。
  @JsonKey(name: 'sampleRateHz')
  final int? sampleRateHz;

  /// 每个声道的音频采样数。
  @JsonKey(name: 'samplesPerChannel')
  final int? samplesPerChannel;

  /// 声道数。
  @JsonKey(name: 'numberOfChannels')
  final int? numberOfChannels;

  /// 该功能暂不支持。
  @JsonKey(name: 'advancedSettings')
  final EncodedAudioFrameAdvancedSettings? advancedSettings;

  /// 采集外部编码视频帧的 Unix 时间戳 (ms)。
  @JsonKey(name: 'captureTimeMs')
  final int? captureTimeMs;

  /// @nodoc
  factory EncodedAudioFrameInfo.fromJson(Map<String, dynamic> json) =>
      _$EncodedAudioFrameInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncodedAudioFrameInfoToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioPcmDataInfo implements AgoraSerializable {
  /// @nodoc
  const AudioPcmDataInfo(
      {this.samplesPerChannel,
      this.channelNum,
      this.samplesOut,
      this.elapsedTimeMs,
      this.ntpTimeMs});

  /// @nodoc
  @JsonKey(name: 'samplesPerChannel')
  final int? samplesPerChannel;

  /// @nodoc
  @JsonKey(name: 'channelNum')
  final int? channelNum;

  /// @nodoc
  @JsonKey(name: 'samplesOut')
  final int? samplesOut;

  /// @nodoc
  @JsonKey(name: 'elapsedTimeMs')
  final int? elapsedTimeMs;

  /// @nodoc
  @JsonKey(name: 'ntpTimeMs')
  final int? ntpTimeMs;

  /// @nodoc
  factory AudioPcmDataInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioPcmDataInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioPcmDataInfoToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum H264PacketizeMode {
  /// @nodoc
  @JsonValue(0)
  nonInterleaved,

  /// @nodoc
  @JsonValue(1)
  singleNalUnit,
}

/// @nodoc
extension H264PacketizeModeExt on H264PacketizeMode {
  /// @nodoc
  static H264PacketizeMode fromValue(int value) {
    return $enumDecode(_$H264PacketizeModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$H264PacketizeModeEnumMap[this]!;
  }
}

/// 视频流类型。
@JsonEnum(alwaysCreate: true)
enum VideoStreamType {
  /// 0: 视频大流，即高分辨率、高码率视频流。
  @JsonValue(0)
  videoStreamHigh,

  /// 1: 视频小流，即低分辨率、低码率视频流。
  @JsonValue(1)
  videoStreamLow,

  /// @nodoc
  @JsonValue(4)
  videoStreamLayer1,

  /// @nodoc
  @JsonValue(5)
  videoStreamLayer2,

  /// @nodoc
  @JsonValue(6)
  videoStreamLayer3,

  /// @nodoc
  @JsonValue(7)
  videoStreamLayer4,

  /// @nodoc
  @JsonValue(8)
  videoStreamLayer5,

  /// @nodoc
  @JsonValue(9)
  videoStreamLayer6,
}

/// @nodoc
extension VideoStreamTypeExt on VideoStreamType {
  /// @nodoc
  static VideoStreamType fromValue(int value) {
    return $enumDecode(_$VideoStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoStreamTypeEnumMap[this]!;
  }
}

/// 视频订阅设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoSubscriptionOptions implements AgoraSerializable {
  /// @nodoc
  const VideoSubscriptionOptions({this.type, this.encodedFrameOnly});

  /// 订阅的视频流类型，默认值为 videoStreamHigh，即订阅视频大流。详见 VideoStreamType 。
  @JsonKey(name: 'type')
  final VideoStreamType? type;

  /// 是否仅订阅编码后的视频流： true ：仅订阅编码后的视频数据（结构化数据），SDK 未对该视频数据做解码及渲染。 false ：（默认）订阅原始视频数据和编码后的数据。
  @JsonKey(name: 'encodedFrameOnly')
  final bool? encodedFrameOnly;

  /// @nodoc
  factory VideoSubscriptionOptions.fromJson(Map<String, dynamic> json) =>
      _$VideoSubscriptionOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoSubscriptionOptionsToJson(this);
}

/// 用户 User Account 的最大长度。
@JsonEnum(alwaysCreate: true)
enum MaxUserAccountLengthType {
  /// 用户 User Account 的最大长度为 255 个字符。
  @JsonValue(256)
  maxUserAccountLength,
}

/// @nodoc
extension MaxUserAccountLengthTypeExt on MaxUserAccountLengthType {
  /// @nodoc
  static MaxUserAccountLengthType fromValue(int value) {
    return $enumDecode(_$MaxUserAccountLengthTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MaxUserAccountLengthTypeEnumMap[this]!;
  }
}

/// 外部编码视频帧的信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EncodedVideoFrameInfo implements AgoraSerializable {
  /// @nodoc
  const EncodedVideoFrameInfo(
      {this.codecType,
      this.width,
      this.height,
      this.framesPerSecond,
      this.frameType,
      this.rotation,
      this.trackId,
      this.captureTimeMs,
      this.decodeTimeMs,
      this.streamType,
      this.presentationMs});

  /// 视频编码类型，详见 VideoCodecType 。默认值为 videoCodecH264 (2) 。
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// 视频帧的宽度 (px)。
  @JsonKey(name: 'width')
  final int? width;

  /// 视频帧的高度 (px)。
  @JsonKey(name: 'height')
  final int? height;

  /// 每秒的视频帧数。
  /// 当该参数不为 0 时，你可以用它计算外部编码视频帧的 Unix 时间戳。
  @JsonKey(name: 'framesPerSecond')
  final int? framesPerSecond;

  /// 视频帧的类型，详见 VideoFrameType 。
  @JsonKey(name: 'frameType')
  final VideoFrameType? frameType;

  /// 视频帧的旋转信息，详见 VideoOrientation 。
  @JsonKey(name: 'rotation')
  final VideoOrientation? rotation;

  /// 预留参数。
  @JsonKey(name: 'trackId')
  final int? trackId;

  /// 采集外部编码视频帧的 Unix 时间戳 (ms)。
  @JsonKey(name: 'captureTimeMs')
  final int? captureTimeMs;

  /// @nodoc
  @JsonKey(name: 'decodeTimeMs')
  final int? decodeTimeMs;

  /// 视频流类型。详见 VideoStreamType 。
  @JsonKey(name: 'streamType')
  final VideoStreamType? streamType;

  /// @nodoc
  @JsonKey(name: 'presentationMs')
  final int? presentationMs;

  /// @nodoc
  factory EncodedVideoFrameInfo.fromJson(Map<String, dynamic> json) =>
      _$EncodedVideoFrameInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncodedVideoFrameInfoToJson(this);
}

/// 视频编码的压缩偏好类型。
@JsonEnum(alwaysCreate: true)
enum CompressionPreference {
  /// -1:（默认）自动模式。SDK 会根据你设置的视频场景，自动选择 preferLowLatency 或 preferQuality，以获得最佳的用户体验。
  @JsonValue(-1)
  preferCompressionAuto,

  /// 0: 低延时偏好。SDK 会对视频帧进行压缩处理，以降低延时。该偏好适用于流畅性优先且允许画质降低的场景。
  @JsonValue(0)
  preferLowLatency,

  /// 1：高质量偏好。SDK 会对视频帧进行压缩处理，同时保持视频质量。该偏好适用于画质优先的场景。
  @JsonValue(1)
  preferQuality,
}

/// @nodoc
extension CompressionPreferenceExt on CompressionPreference {
  /// @nodoc
  static CompressionPreference fromValue(int value) {
    return $enumDecode(_$CompressionPreferenceEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CompressionPreferenceEnumMap[this]!;
  }
}

/// 视频编码器偏好。
@JsonEnum(alwaysCreate: true)
enum EncodingPreference {
  /// -1：自适应偏好。SDK 根据平台、设备类型等因素自动选择最优的编码类型进行编码。
  @JsonValue(-1)
  preferAuto,

  /// 0：软件编码偏好。SDK 优先使用软件编码器进行视频编码。
  @JsonValue(0)
  preferSoftware,

  /// 1：硬件编码偏好。SDK 优先使用硬件编码器进行视频编码。当设备不支持硬件编码时，SDK 会自动使用软件编码，并通过 onLocalVideoStats 回调中的 hwEncoderAccelerating 报告当前使用的视频编码器类型。
  @JsonValue(1)
  preferHardware,
}

/// @nodoc
extension EncodingPreferenceExt on EncodingPreference {
  /// @nodoc
  static EncodingPreference fromValue(int value) {
    return $enumDecode(_$EncodingPreferenceEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EncodingPreferenceEnumMap[this]!;
  }
}

/// 视频编码的高级选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdvanceOptions implements AgoraSerializable {
  /// @nodoc
  const AdvanceOptions(
      {this.encodingPreference, this.compressionPreference, this.encodeAlpha});

  /// 视频编码器偏好。详见 EncodingPreference 。
  @JsonKey(name: 'encodingPreference')
  final EncodingPreference? encodingPreference;

  /// 视频编码的压缩偏好。详见 CompressionPreference 。
  @JsonKey(name: 'compressionPreference')
  final CompressionPreference? compressionPreference;

  /// 当视频帧包含 Alpha 通道数据时，设置是否将 Alpha 数据编码并发送至远端： true ：对 Alpha 数据进行编码发送。 false ：（默认）不对 Alpha 数据进行编码发送。
  @JsonKey(name: 'encodeAlpha')
  final bool? encodeAlpha;

  /// @nodoc
  factory AdvanceOptions.fromJson(Map<String, dynamic> json) =>
      _$AdvanceOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdvanceOptionsToJson(this);
}

/// 镜像模式类型。
@JsonEnum(alwaysCreate: true)
enum VideoMirrorModeType {
  /// 0：由 SDK 决定镜像模式。
  ///  本地视图镜像模式：如果你使用前置摄像头，默认启动本地视图镜像模式；如果你使用后置摄像头，默认关闭本地视图镜像模式。
  ///  远端用户视图镜像模式：默认关闭远端用户的镜像模式。
  @JsonValue(0)
  videoMirrorModeAuto,

  /// 1：启用镜像模式。
  @JsonValue(1)
  videoMirrorModeEnabled,

  /// 2：关闭镜像模式。
  @JsonValue(2)
  videoMirrorModeDisabled,
}

/// @nodoc
extension VideoMirrorModeTypeExt on VideoMirrorModeType {
  /// @nodoc
  static VideoMirrorModeType fromValue(int value) {
    return $enumDecode(_$VideoMirrorModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoMirrorModeTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum CameraFormatType {
  /// @nodoc
  @JsonValue(0)
  cameraFormatNv12,

  /// @nodoc
  @JsonValue(1)
  cameraFormatBgra,
}

/// @nodoc
extension CameraFormatTypeExt on CameraFormatType {
  /// @nodoc
  static CameraFormatType fromValue(int value) {
    return $enumDecode(_$CameraFormatTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraFormatTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum VideoModuleType {
  /// @nodoc
  @JsonValue(0)
  videoModuleCapturer,

  /// @nodoc
  @JsonValue(1)
  videoModuleSoftwareEncoder,

  /// @nodoc
  @JsonValue(2)
  videoModuleHardwareEncoder,

  /// @nodoc
  @JsonValue(3)
  videoModuleSoftwareDecoder,

  /// @nodoc
  @JsonValue(4)
  videoModuleHardwareDecoder,

  /// @nodoc
  @JsonValue(5)
  videoModuleRenderer,
}

/// @nodoc
extension VideoModuleTypeExt on VideoModuleType {
  /// @nodoc
  static VideoModuleType fromValue(int value) {
    return $enumDecode(_$VideoModuleTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoModuleTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum HdrCapability {
  /// @nodoc
  @JsonValue(-1)
  hdrCapabilityUnknown,

  /// @nodoc
  @JsonValue(0)
  hdrCapabilityUnsupported,

  /// @nodoc
  @JsonValue(1)
  hdrCapabilitySupported,
}

/// @nodoc
extension HdrCapabilityExt on HdrCapability {
  /// @nodoc
  static HdrCapability fromValue(int value) {
    return $enumDecode(_$HdrCapabilityEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$HdrCapabilityEnumMap[this]!;
  }
}

/// 编解码类型 bit mask。
@JsonEnum(alwaysCreate: true)
enum CodecCapMask {
  /// (0)：不支持编解码。
  @JsonValue(0)
  codecCapMaskNone,

  /// (1 << 0)：支持硬件解码。
  @JsonValue(1 << 0)
  codecCapMaskHwDec,

  /// (1 << 1)：支持硬件编码。
  @JsonValue(1 << 1)
  codecCapMaskHwEnc,

  /// (1 << 2)：支持软件解码。
  @JsonValue(1 << 2)
  codecCapMaskSwDec,

  /// (1 << 3)：支持软件编码。
  @JsonValue(1 << 3)
  codecCapMaskSwEnc,
}

/// @nodoc
extension CodecCapMaskExt on CodecCapMask {
  /// @nodoc
  static CodecCapMask fromValue(int value) {
    return $enumDecode(_$CodecCapMaskEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CodecCapMaskEnumMap[this]!;
  }
}

/// 编解码能力等级。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class CodecCapLevels implements AgoraSerializable {
  /// @nodoc
  const CodecCapLevels({this.hwDecodingLevel, this.swDecodingLevel});

  /// 硬件解码能力等级，表示设备能够对不同品质视频进行硬件解码的能力。详见 VideoCodecCapabilityLevel 。
  @JsonKey(name: 'hwDecodingLevel')
  final VideoCodecCapabilityLevel? hwDecodingLevel;

  /// 软件解码能力等级，表示设备能够对不同品质视频进行软件解码的能力。详见 VideoCodecCapabilityLevel 。
  @JsonKey(name: 'swDecodingLevel')
  final VideoCodecCapabilityLevel? swDecodingLevel;

  /// @nodoc
  factory CodecCapLevels.fromJson(Map<String, dynamic> json) =>
      _$CodecCapLevelsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodecCapLevelsToJson(this);
}

/// SDK 支持的编解码能力信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class CodecCapInfo implements AgoraSerializable {
  /// @nodoc
  const CodecCapInfo({this.codecType, this.codecCapMask, this.codecLevels});

  /// 视频编解码类型。详见 VideoCodecType 。
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// SDK 编解码类型的 bit mask。详见 CodecCapMask 。
  @JsonKey(name: 'codecCapMask')
  final int? codecCapMask;

  /// SDK 支持的编解码能力等级。详见 CodecCapLevels 。
  @JsonKey(name: 'codecLevels')
  final CodecCapLevels? codecLevels;

  /// @nodoc
  factory CodecCapInfo.fromJson(Map<String, dynamic> json) =>
      _$CodecCapInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodecCapInfoToJson(this);
}

/// 摄像头支持的焦距信息，包含摄像头的方向以及焦距类型。
///
/// 仅适用于 Android 和 iOS。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FocalLengthInfo implements AgoraSerializable {
  /// @nodoc
  const FocalLengthInfo({this.cameraDirection, this.focalLengthType});

  /// 摄像头方向。详见 CameraDirection 。
  @JsonKey(name: 'cameraDirection')
  final int? cameraDirection;

  /// 焦距类型。详见 CameraFocalLengthType 。
  @JsonKey(name: 'focalLengthType')
  final CameraFocalLengthType? focalLengthType;

  /// @nodoc
  factory FocalLengthInfo.fromJson(Map<String, dynamic> json) =>
      _$FocalLengthInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FocalLengthInfoToJson(this);
}

/// 视频编码器的配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoEncoderConfiguration implements AgoraSerializable {
  /// @nodoc
  const VideoEncoderConfiguration(
      {this.codecType,
      this.dimensions,
      this.frameRate,
      this.bitrate,
      this.minBitrate,
      this.orientationMode,
      this.degradationPreference,
      this.mirrorMode,
      this.advanceOptions});

  /// 视频编码类型，详见 VideoCodecType 。
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// 视频编码的分辨率 (px)，详见 VideoDimensions 。该参数用于衡量编码质量，以长 × 宽表示，默认值为 960 × 540。用户可以自行设置分辨率。
  @JsonKey(name: 'dimensions')
  final VideoDimensions? dimensions;

  /// 视频编码的帧率(fps)，默认值为 15。详见 FrameRate 。
  @JsonKey(name: 'frameRate')
  final int? frameRate;

  /// 视频编码码率，单位为 Kbps。该参数无需设置，保留默认值 standardBitrate 即可，SDK 会根据你设定的视频分辨率和帧率自动匹配最合适的码率。有关视频分辨率和帧率的对应关系，详见[视频属性](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/video-profile#%E8%A7%86%E9%A2%91%E5%B1%9E%E6%80%A7%E5%8F%82%E8%80%83)。
  ///  standardBitrate (0): (默认) 标准码率模式。
  ///  compatibleBitrate (-1): 适配码率模式。一般情况下，声网建议你不要使用该值。
  @JsonKey(name: 'bitrate')
  final int? bitrate;

  /// 最低编码码率，单位为 Kbps。
  /// SDK 会根据网络状况自动调整视频编码码率。将参数设为高于默认值可强制视频编码器输出高质量图片，但在网络状况不佳情况下可能导致网络丢包并影响视频播放的流畅度造成卡顿。因此如非对画质有特殊需求，声网建议不要修改该参数的值。 该参数仅适用于直播场景。
  @JsonKey(name: 'minBitrate')
  final int? minBitrate;

  /// 视频编码的方向模式，详见 OrientationMode 。
  @JsonKey(name: 'orientationMode')
  final OrientationMode? orientationMode;

  /// 带宽受限时，视频编码降级偏好。详见 DegradationPreference 。 当该参数设置为 maintainFramerate (1) 或者 maintainBalanced (2) 时，需要同时将 orientationMode 设置为 orientationModeAdaptive (0)，否则设置不生效。
  @JsonKey(name: 'degradationPreference')
  final DegradationPreference? degradationPreference;

  /// 发送编码视频时是否开启镜像模式，只影响远端用户看到的视频画面。详见 VideoMirrorModeType 。 默认关闭镜像模式。
  @JsonKey(name: 'mirrorMode')
  final VideoMirrorModeType? mirrorMode;

  /// 视频编码的高级选项。详见 AdvanceOptions 。
  @JsonKey(name: 'advanceOptions')
  final AdvanceOptions? advanceOptions;

  /// @nodoc
  factory VideoEncoderConfiguration.fromJson(Map<String, dynamic> json) =>
      _$VideoEncoderConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoEncoderConfigurationToJson(this);
}

/// 数据流设置。
///
/// 下表展示不同的参数设置下，SDK 的行为： syncWithAudio ordered
/// SDK 行为 false false
/// 接收端接收到数据包后，SDK 立刻触发 onStreamMessage 回调。 true false
/// 如果数据包的延迟在音频延迟的范围内，SDK 会在播放音频的同时触发与该音频包同步的 onStreamMessage 回调。如果数据包的延迟超出了音频延迟，SDK 会在接收到该数据包时立刻触发 onStreamMessage 回调；此情况会造成音频包和数据包的不同步。 false true
/// 如果数据包的延迟在 5 秒以内，SDK 会修正数据包的乱序问题。如果数据包的延迟超出 5 秒，SDK 会丢弃该数据包。 true true
/// 如果数据包的延迟在音频延迟的范围内，SDK 会修正数据包的乱序问题。如果数据包的延迟超出音频延迟，SDK 会丢弃该数据包。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DataStreamConfig implements AgoraSerializable {
  /// @nodoc
  const DataStreamConfig({this.syncWithAudio, this.ordered});

  /// 是否与本地发送的音频流同步。 true : 数据流与音频流同步。该设置适用于歌词同步等特殊场景。 false : 数据流与音频流不同步。该设置适用于需要数据包立刻到达接收端的场景。 设置数据流与音频流同步后，如果数据包的延迟在音频延迟的范围内，SDK 会在播放音频的同时触发与该音频包同步的 onStreamMessage 回调。
  @JsonKey(name: 'syncWithAudio')
  final bool? syncWithAudio;

  /// 是否保证接收到的数据按发送的顺序排列。 true : 保证 SDK 按照发送方发送的顺序输出数据包。 false : 不保证 SDK 按照发送方发送的顺序输出数据包。 当需要数据包立刻到达接收端时，不能将该参数设置为 true 。
  @JsonKey(name: 'ordered')
  final bool? ordered;

  /// @nodoc
  factory DataStreamConfig.fromJson(Map<String, dynamic> json) =>
      _$DataStreamConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataStreamConfigToJson(this);
}

/// 发送视频流的模式。
@JsonEnum(alwaysCreate: true)
enum SimulcastStreamMode {
  /// -1：默认不发送小流，直至收到接收端发起的订阅小流申请时，开始自动发送小流。
  @JsonValue(-1)
  autoSimulcastStream,

  /// 0：始终不发送小流。
  @JsonValue(0)
  disableSimulcastStream,

  /// 1：始终发送小流。
  @JsonValue(1)
  enableSimulcastStream,
}

/// @nodoc
extension SimulcastStreamModeExt on SimulcastStreamMode {
  /// @nodoc
  static SimulcastStreamMode fromValue(int value) {
    return $enumDecode(_$SimulcastStreamModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$SimulcastStreamModeEnumMap[this]!;
  }
}

/// 视频小流的配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SimulcastStreamConfig implements AgoraSerializable {
  /// @nodoc
  const SimulcastStreamConfig({this.dimensions, this.kBitrate, this.framerate});

  /// 视频尺寸。详见 VideoDimensions 。默认值为视频大流的 50%。
  @JsonKey(name: 'dimensions')
  final VideoDimensions? dimensions;

  /// 视频码率 (Kbps)，默认值为 -1。该参数无需设置，SDK 会根据你设定的视频分辨率和帧率自动匹配最合适的码率。
  @JsonKey(name: 'kBitrate')
  final int? kBitrate;

  /// 视频帧率 (fps)。默认值为 5。
  @JsonKey(name: 'framerate')
  final int? framerate;

  /// @nodoc
  factory SimulcastStreamConfig.fromJson(Map<String, dynamic> json) =>
      _$SimulcastStreamConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SimulcastStreamConfigToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SimulcastConfig implements AgoraSerializable {
  /// @nodoc
  const SimulcastConfig({this.configs, this.publishFallbackEnable});

  /// @nodoc
  @JsonKey(name: 'configs')
  final List<StreamLayerConfig>? configs;

  /// @nodoc
  @JsonKey(name: 'publish_fallback_enable')
  final bool? publishFallbackEnable;

  /// @nodoc
  factory SimulcastConfig.fromJson(Map<String, dynamic> json) =>
      _$SimulcastConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SimulcastConfigToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum StreamLayerIndex {
  /// @nodoc
  @JsonValue(0)
  streamLayer1,

  /// @nodoc
  @JsonValue(1)
  streamLayer2,

  /// @nodoc
  @JsonValue(2)
  streamLayer3,

  /// @nodoc
  @JsonValue(3)
  streamLayer4,

  /// @nodoc
  @JsonValue(4)
  streamLayer5,

  /// @nodoc
  @JsonValue(5)
  streamLayer6,

  /// @nodoc
  @JsonValue(6)
  streamLow,

  /// @nodoc
  @JsonValue(7)
  streamLayerCountMax,
}

/// @nodoc
extension StreamLayerIndexExt on StreamLayerIndex {
  /// @nodoc
  static StreamLayerIndex fromValue(int value) {
    return $enumDecode(_$StreamLayerIndexEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$StreamLayerIndexEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class StreamLayerConfig implements AgoraSerializable {
  /// @nodoc
  const StreamLayerConfig({this.dimensions, this.framerate, this.enable});

  /// @nodoc
  @JsonKey(name: 'dimensions')
  final VideoDimensions? dimensions;

  /// @nodoc
  @JsonKey(name: 'framerate')
  final int? framerate;

  /// @nodoc
  @JsonKey(name: 'enable')
  final bool? enable;

  /// @nodoc
  factory StreamLayerConfig.fromJson(Map<String, dynamic> json) =>
      _$StreamLayerConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamLayerConfigToJson(this);
}

/// 目标区域相对于整个屏幕或窗口的位置，如不填，则表示整个屏幕或窗口。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Rectangle implements AgoraSerializable {
  /// @nodoc
  const Rectangle({this.x, this.y, this.width, this.height});

  /// 左上角的横向偏移。
  @JsonKey(name: 'x')
  final int? x;

  /// 左上角的纵向偏移。
  @JsonKey(name: 'y')
  final int? y;

  /// 目标区域的宽度。
  @JsonKey(name: 'width')
  final int? width;

  /// 目标区域的高度。
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  factory Rectangle.fromJson(Map<String, dynamic> json) =>
      _$RectangleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RectangleToJson(this);
}

/// 水印在屏幕中的位置和大小。
///
/// 水印在屏幕中的位置和大小由 xRatio 、 yRatio 和 widthRatio 共同决定：
///  (xRatio, yRatio) 指水印左上角的坐标，决定水印左上角到屏幕左上角的距离。 widthRatio 决定水印的宽度。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkRatio implements AgoraSerializable {
  /// @nodoc
  const WatermarkRatio({this.xRatio, this.yRatio, this.widthRatio});

  /// 水印左上角的 x 坐标。以屏幕左上角为原点，x 坐标为水印左上角相对于原点的横向位移。取值范围为 [0.0,1.0]，默认值为 0。
  @JsonKey(name: 'xRatio')
  final double? xRatio;

  /// 水印左上角的 y 坐标。以屏幕左上角为原点，y 坐标为水印左上角相对于原点的纵向位移。取值范围为 [0.0,1.0]，默认值为 0。
  @JsonKey(name: 'yRatio')
  final double? yRatio;

  /// 水印的宽度。SDK 会根据该参数值计算出等比例的水印高度，确保放大或缩小后的水印图片不失真。取值范围为 [0.0,1.0]，默认值为 0，代表不显示水印。
  @JsonKey(name: 'widthRatio')
  final double? widthRatio;

  /// @nodoc
  factory WatermarkRatio.fromJson(Map<String, dynamic> json) =>
      _$WatermarkRatioFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkRatioToJson(this);
}

/// 配置水印图像。
///
/// 用于设置要添加的水印图像的相关配置项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkOptions implements AgoraSerializable {
  /// @nodoc
  const WatermarkOptions(
      {this.visibleInPreview,
      this.positionInLandscapeMode,
      this.positionInPortraitMode,
      this.watermarkRatio,
      this.mode,
      this.zOrder});

  /// 水印是否在本地预览视图中可见： true : （默认）水印在本地预览视图中可见。 false : 水印在本地预览视图中不可见。
  @JsonKey(name: 'visibleInPreview')
  final bool? visibleInPreview;

  /// 水印的适配模式为 fitModeCoverPosition 时，用于设置横屏模式下水印图片的区域。详见 Rectangle 。
  @JsonKey(name: 'positionInLandscapeMode')
  final Rectangle? positionInLandscapeMode;

  /// 水印的适配模式为 fitModeCoverPosition 时，用于设置竖屏模式下水印图片的区域。详见 Rectangle 。
  @JsonKey(name: 'positionInPortraitMode')
  final Rectangle? positionInPortraitMode;

  /// 水印的适配模式为 fitModeUseImageRatio 时，该参数可设置缩放模式下的水印坐标。详见 WatermarkRatio 。
  @JsonKey(name: 'watermarkRatio')
  final WatermarkRatio? watermarkRatio;

  /// 水印的适配模式。详见 WatermarkFitMode 。
  @JsonKey(name: 'mode')
  final WatermarkFitMode? mode;

  /// 水印图像的图层顺序，默认值为 0。
  @JsonKey(name: 'zOrder')
  final int? zOrder;

  /// @nodoc
  factory WatermarkOptions.fromJson(Map<String, dynamic> json) =>
      _$WatermarkOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkOptionsToJson(this);
}

/// 水印源类型。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum WatermarkSourceType {
  /// （0）：水印源为图像。
  @JsonValue(0)
  image,

  /// （1）：水印源为缓冲区。
  @JsonValue(1)
  buffer,

  /// （2）：水印源为文本字面量。 仅支持在 Linux 平台使用。
  @JsonValue(2)
  literal,

  /// （3）：水印源为时间戳。 仅支持在 Linux 平台使用。
  @JsonValue(3)
  timestamps,
}

/// @nodoc
extension WatermarkSourceTypeExt on WatermarkSourceType {
  /// @nodoc
  static WatermarkSourceType fromValue(int value) {
    return $enumDecode(_$WatermarkSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$WatermarkSourceTypeEnumMap[this]!;
  }
}

/// 用于配置时间戳水印。
///
/// 自从 自 v6.6.2 版本新增。 仅适用于 Linux 平台。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkTimestamp implements AgoraSerializable {
  /// @nodoc
  const WatermarkTimestamp(
      {this.fontSize, this.fontFilePath, this.strokeWidth, this.format});

  /// 时间戳字体的大小。默认值为 10。
  @JsonKey(name: 'fontSize')
  final int? fontSize;

  /// 时间戳字体文件的路径。默认值为 NULL 。字体文件需为 .ttf 格式。如果未设置，SDK 会使用系统默认字体（如果可用）。 如果异步使用，请将路径复制到不会被释放的内存中。
  @JsonKey(name: 'fontFilePath')
  final String? fontFilePath;

  /// 时间戳描边的宽度。默认值为 1。
  @JsonKey(name: 'strokeWidth')
  final int? strokeWidth;

  /// 时间戳的格式。默认值为 %F %X 。格式遵循 C 标准库函数 strftime 的规范，详见 strftime 。 如果异步使用，请将格式字符串复制到不会被释放的内存中。
  @JsonKey(name: 'format')
  final String? format;

  /// @nodoc
  factory WatermarkTimestamp.fromJson(Map<String, dynamic> json) =>
      _$WatermarkTimestampFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkTimestampToJson(this);
}

/// 用于配置文字水印。
///
/// 自从 自 v6.6.2 版本新增。 仅适用于 Linux 平台。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkLiteral implements AgoraSerializable {
  /// @nodoc
  const WatermarkLiteral(
      {this.fontSize, this.strokeWidth, this.wmLiteral, this.fontFilePath});

  /// 文字的字体大小。默认值为 10。
  @JsonKey(name: 'fontSize')
  final int? fontSize;

  /// 文字的描边宽度。默认值为 1。
  @JsonKey(name: 'strokeWidth')
  final int? strokeWidth;

  /// 水印的文字内容。默认值为 NULL 。 如果异步使用，请将字符串复制到不会被释放的内存中。
  @JsonKey(name: 'wmLiteral')
  final String? wmLiteral;

  /// 字体文件的路径。默认值为 NULL 。字体文件应为 .ttf 格式。如果未设置，SDK 会使用系统默认字体（如果可用）。 如果异步使用，请将字符串复制到不会被释放的内存中。
  @JsonKey(name: 'fontFilePath')
  final String? fontFilePath;

  /// @nodoc
  factory WatermarkLiteral.fromJson(Map<String, dynamic> json) =>
      _$WatermarkLiteralFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkLiteralToJson(this);
}

/// 用于配置水印图像的格式、尺寸和像素缓冲区。
///
/// 自从 自 v6.6.2 版本新增。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkBuffer implements AgoraSerializable {
  /// @nodoc
  const WatermarkBuffer(
      {this.width, this.height, this.length, this.format, this.buffer});

  /// 水印图像的宽度，单位为像素。
  @JsonKey(name: 'width')
  final int? width;

  /// 水印图像的高度，单位为像素。
  @JsonKey(name: 'height')
  final int? height;

  /// 水印图像缓冲区的长度，单位为字节。
  @JsonKey(name: 'length')
  final int? length;

  /// 水印图像的像素格式，详见 VideoPixelFormat 。
  @JsonKey(name: 'format')
  final VideoPixelFormat? format;

  /// 水印图像的像素缓冲区数据。
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// @nodoc
  factory WatermarkBuffer.fromJson(Map<String, dynamic> json) =>
      _$WatermarkBufferFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkBufferToJson(this);
}

/// 用于配置水印信息。
///
/// 自从 自 v6.6.2 版本新增。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WatermarkConfig implements AgoraSerializable {
  /// @nodoc
  const WatermarkConfig(
      {this.id,
      this.type,
      this.buffer,
      this.timestamp,
      this.literal,
      this.imageUrl,
      this.options});

  /// 水印的唯一标识符，建议使用 UUID。
  @JsonKey(name: 'id')
  final String? id;

  /// 水印类型，详见 WatermarkSourceType 。
  @JsonKey(name: 'type')
  final WatermarkSourceType? type;

  /// 水印的缓冲区。详见 WatermarkBuffer 。
  @JsonKey(name: 'buffer')
  final WatermarkBuffer? buffer;

  /// 水印的时间戳。 仅支持在 Linux 平台使用。
  @JsonKey(name: 'timestamp')
  final WatermarkTimestamp? timestamp;

  /// 水印的文本内容。 仅支持在 Linux 平台使用。
  @JsonKey(name: 'literal')
  final WatermarkLiteral? literal;

  /// 水印图像文件的 URL，默认值为 NULL 。
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  /// 水印的配置选项。详见 WatermarkOptions 。
  @JsonKey(name: 'options')
  final WatermarkOptions? options;

  /// @nodoc
  factory WatermarkConfig.fromJson(Map<String, dynamic> json) =>
      _$WatermarkConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatermarkConfigToJson(this);
}

/// 多路径数据传输的模式。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum MultipathMode {
  /// （0）：冗余发送模式，相同的数据会通过所有可用路径进行冗余传输。
  @JsonValue(0)
  duplicate,

  /// @nodoc
  @JsonValue(1)
  dynamic,
}

/// @nodoc
extension MultipathModeExt on MultipathMode {
  /// @nodoc
  static MultipathMode fromValue(int value) {
    return $enumDecode(_$MultipathModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MultipathModeEnumMap[this]!;
  }
}

/// 多路径传输使用的网络路径类型。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum MultipathType {
  /// （0）：局域网（LAN）路径。
  @JsonValue(0)
  lan,

  /// （1）：Wi-Fi 路径。
  @JsonValue(1)
  wifi,

  /// （2）：移动网络路径。
  @JsonValue(2)
  mobile,

  /// （99）：未知或未指定的网络路径。
  @JsonValue(99)
  unknown,
}

/// @nodoc
extension MultipathTypeExt on MultipathType {
  /// @nodoc
  static MultipathType fromValue(int value) {
    return $enumDecode(_$MultipathTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MultipathTypeEnumMap[this]!;
  }
}

/// 用于获取特定网络路径的统计数据。
///
/// 自从 自 v6.6.2 版本新增。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PathStats implements AgoraSerializable {
  /// @nodoc
  const PathStats({this.type, this.txKBitRate, this.rxKBitRate});

  /// 网络路径的类型。详见 MultipathType 。
  @JsonKey(name: 'type')
  final MultipathType? type;

  /// 该路径的传输码率，单位为 Kbps。
  @JsonKey(name: 'txKBitRate')
  final int? txKBitRate;

  /// 该路径的接收码率，单位为 Kbps。
  @JsonKey(name: 'rxKBitRate')
  final int? rxKBitRate;

  /// @nodoc
  factory PathStats.fromJson(Map<String, dynamic> json) =>
      _$PathStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PathStatsToJson(this);
}

/// 用于汇总多路径传输中各网络路径的统计数据。
///
/// 自从 自 v6.6.2 版本新增。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MultipathStats implements AgoraSerializable {
  /// @nodoc
  const MultipathStats(
      {this.lanTxBytes,
      this.lanRxBytes,
      this.wifiTxBytes,
      this.wifiRxBytes,
      this.mobileTxBytes,
      this.mobileRxBytes,
      this.activePathNum,
      this.pathStats});

  /// 通过 LAN 路径发送的字节总数。
  @JsonKey(name: 'lanTxBytes')
  final int? lanTxBytes;

  /// 通过 LAN 路径接收的字节总数。
  @JsonKey(name: 'lanRxBytes')
  final int? lanRxBytes;

  /// 通过 Wi-Fi 路径发送的字节总数。
  @JsonKey(name: 'wifiTxBytes')
  final int? wifiTxBytes;

  /// 通过 Wi-Fi 路径接收的字节总数。
  @JsonKey(name: 'wifiRxBytes')
  final int? wifiRxBytes;

  /// 通过移动网络路径发送的字节总数。
  @JsonKey(name: 'mobileTxBytes')
  final int? mobileTxBytes;

  /// 通过移动网络路径接收的字节总数。
  @JsonKey(name: 'mobileRxBytes')
  final int? mobileRxBytes;

  /// 当前活跃的传输路径数量。
  @JsonKey(name: 'activePathNum')
  final int? activePathNum;

  /// 每个活跃传输路径的统计信息数组。详见 PathStats 。
  @JsonKey(name: 'pathStats')
  final List<PathStats>? pathStats;

  /// @nodoc
  factory MultipathStats.fromJson(Map<String, dynamic> json) =>
      _$MultipathStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MultipathStatsToJson(this);
}

/// 通话相关的统计信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RtcStats implements AgoraSerializable {
  /// @nodoc
  const RtcStats(
      {this.duration,
      this.txBytes,
      this.rxBytes,
      this.txAudioBytes,
      this.txVideoBytes,
      this.rxAudioBytes,
      this.rxVideoBytes,
      this.txKBitRate,
      this.rxKBitRate,
      this.rxAudioKBitRate,
      this.txAudioKBitRate,
      this.rxVideoKBitRate,
      this.txVideoKBitRate,
      this.lastmileDelay,
      this.userCount,
      this.cpuAppUsage,
      this.cpuTotalUsage,
      this.gatewayRtt,
      this.memoryAppUsageRatio,
      this.memoryTotalUsageRatio,
      this.memoryAppUsageInKbytes,
      this.connectTimeMs,
      this.firstAudioPacketDuration,
      this.firstVideoPacketDuration,
      this.firstVideoKeyFramePacketDuration,
      this.packetsBeforeFirstKeyFramePacket,
      this.firstAudioPacketDurationAfterUnmute,
      this.firstVideoPacketDurationAfterUnmute,
      this.firstVideoKeyFramePacketDurationAfterUnmute,
      this.firstVideoKeyFrameDecodedDurationAfterUnmute,
      this.firstVideoKeyFrameRenderedDurationAfterUnmute,
      this.txPacketLossRate,
      this.rxPacketLossRate,
      this.lanAccelerateState});

  /// 本地用户通话时长（秒），累计值。
  @JsonKey(name: 'duration')
  final int? duration;

  /// 发送字节数 (bytes)。
  @JsonKey(name: 'txBytes')
  final int? txBytes;

  /// 接收字节数 (bytes)。
  @JsonKey(name: 'rxBytes')
  final int? rxBytes;

  /// 发送音频字节数 (bytes)，累计值。
  @JsonKey(name: 'txAudioBytes')
  final int? txAudioBytes;

  /// 发送视频字节数 (bytes)，累计值。
  @JsonKey(name: 'txVideoBytes')
  final int? txVideoBytes;

  /// 接收音频字节数 (bytes)，累计值。
  @JsonKey(name: 'rxAudioBytes')
  final int? rxAudioBytes;

  /// 接收视频字节数 (bytes)，累计值。
  @JsonKey(name: 'rxVideoBytes')
  final int? rxVideoBytes;

  /// 发送码率 (Kbps)。
  @JsonKey(name: 'txKBitRate')
  final int? txKBitRate;

  /// 接收码率 (Kbps)。
  @JsonKey(name: 'rxKBitRate')
  final int? rxKBitRate;

  /// 音频接收码率 (Kbps)。
  @JsonKey(name: 'rxAudioKBitRate')
  final int? rxAudioKBitRate;

  /// 音频包的发送码率 (Kbps)。
  @JsonKey(name: 'txAudioKBitRate')
  final int? txAudioKBitRate;

  /// 视频接收码率 (Kbps)。
  @JsonKey(name: 'rxVideoKBitRate')
  final int? rxVideoKBitRate;

  /// 视频发送码率 (Kbps)。
  @JsonKey(name: 'txVideoKBitRate')
  final int? txVideoKBitRate;

  /// 客户端-接入服务器延时 (毫秒)。
  @JsonKey(name: 'lastmileDelay')
  final int? lastmileDelay;

  /// 当前频道内的用户人数。
  @JsonKey(name: 'userCount')
  final int? userCount;

  /// 当前 App 的 CPU 使用率 (%)。 onLeaveChannel 回调中报告的 cpuAppUsage 恒为 0。
  ///  自 Android 8.1 起，因系统限制，你可能无法通过该属性获取 CPU 使用率。
  @JsonKey(name: 'cpuAppUsage')
  final double? cpuAppUsage;

  /// 当前系统的 CPU 使用率 (%)。
  /// 对于 Windows 平台，在多核环境中，该成员指多核 CPU 的平均使用率。 计算方式为 (100 - 任务管理中显示的系统空闲进程 CPU)/100。 onLeaveChannel 回调中报告的 cpuTotalUsage 恒为 0。
  @JsonKey(name: 'cpuTotalUsage')
  final double? cpuTotalUsage;

  /// 客户端到本地路由器的往返时延 (ms)。 该属性默认在 iOS 14 之前的设备上开启，在 iOS 14 及之后的设备上关闭。
  ///
  ///  如需在 iOS 14 及之后的设备上启用该属性，请[联系技术支持](https://ticket.shengwang.cn/)。
  /// 在 Android 平台上，如需获取 gatewayRtt ，请确保已在项目 AndroidManifest.xml 文件的 </application> 后面添加 android.permission.ACCESS_WIFI_STATE 权限。
  @JsonKey(name: 'gatewayRtt')
  final int? gatewayRtt;

  /// 当前 App 的内存占比 (%)。 该值仅作参考。受系统限制可能无法获取。
  @JsonKey(name: 'memoryAppUsageRatio')
  final double? memoryAppUsageRatio;

  /// 当前系统的内存占比 (%)。 该值仅作参考。受系统限制可能无法获取。
  @JsonKey(name: 'memoryTotalUsageRatio')
  final double? memoryTotalUsageRatio;

  /// 当前 App 的内存大小 (KB)。 该值仅作参考。受系统限制可能无法获取。
  @JsonKey(name: 'memoryAppUsageInKbytes')
  final int? memoryAppUsageInKbytes;

  /// 从开始建立连接到成功连接的时间（毫秒）。如报告 0，则表示无效。
  @JsonKey(name: 'connectTimeMs')
  final int? connectTimeMs;

  /// @nodoc
  @JsonKey(name: 'firstAudioPacketDuration')
  final int? firstAudioPacketDuration;

  /// @nodoc
  @JsonKey(name: 'firstVideoPacketDuration')
  final int? firstVideoPacketDuration;

  /// @nodoc
  @JsonKey(name: 'firstVideoKeyFramePacketDuration')
  final int? firstVideoKeyFramePacketDuration;

  /// @nodoc
  @JsonKey(name: 'packetsBeforeFirstKeyFramePacket')
  final int? packetsBeforeFirstKeyFramePacket;

  /// @nodoc
  @JsonKey(name: 'firstAudioPacketDurationAfterUnmute')
  final int? firstAudioPacketDurationAfterUnmute;

  /// @nodoc
  @JsonKey(name: 'firstVideoPacketDurationAfterUnmute')
  final int? firstVideoPacketDurationAfterUnmute;

  /// @nodoc
  @JsonKey(name: 'firstVideoKeyFramePacketDurationAfterUnmute')
  final int? firstVideoKeyFramePacketDurationAfterUnmute;

  /// @nodoc
  @JsonKey(name: 'firstVideoKeyFrameDecodedDurationAfterUnmute')
  final int? firstVideoKeyFrameDecodedDurationAfterUnmute;

  /// @nodoc
  @JsonKey(name: 'firstVideoKeyFrameRenderedDurationAfterUnmute')
  final int? firstVideoKeyFrameRenderedDurationAfterUnmute;

  /// 使用抗丢包技术前，客户端上行发送到服务器丢包率 (%)。
  @JsonKey(name: 'txPacketLossRate')
  final int? txPacketLossRate;

  /// 使用抗丢包技术前，服务器下行发送到客户端丢包率 (%)。
  @JsonKey(name: 'rxPacketLossRate')
  final int? rxPacketLossRate;

  /// @nodoc
  @JsonKey(name: 'lanAccelerateState')
  final int? lanAccelerateState;

  /// @nodoc
  factory RtcStats.fromJson(Map<String, dynamic> json) =>
      _$RtcStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RtcStatsToJson(this);
}

/// 直播场景里的用户角色。
@JsonEnum(alwaysCreate: true)
enum ClientRoleType {
  /// 1: 主播。主播可以发流也可以收流。
  @JsonValue(1)
  clientRoleBroadcaster,

  /// 2:（默认）观众。观众只能收流不能发流。
  @JsonValue(2)
  clientRoleAudience,
}

/// @nodoc
extension ClientRoleTypeExt on ClientRoleType {
  /// @nodoc
  static ClientRoleType fromValue(int value) {
    return $enumDecode(_$ClientRoleTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ClientRoleTypeEnumMap[this]!;
  }
}

/// 自上次统计后本地视频质量的自适应情况（基于目标帧率和目标码率）。
@JsonEnum(alwaysCreate: true)
enum QualityAdaptIndication {
  /// 0：本地视频质量不变。
  @JsonValue(0)
  adaptNone,

  /// 1：因网络带宽增加，本地视频质量改善。
  @JsonValue(1)
  adaptUpBandwidth,

  /// 2：因网络带宽减少，本地视频质量变差。
  @JsonValue(2)
  adaptDownBandwidth,
}

/// @nodoc
extension QualityAdaptIndicationExt on QualityAdaptIndication {
  /// @nodoc
  static QualityAdaptIndication fromValue(int value) {
    return $enumDecode(_$QualityAdaptIndicationEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$QualityAdaptIndicationEnumMap[this]!;
  }
}

/// 直播频道中观众的延时级别。该枚举仅在用户角色设为 clientRoleAudience 时才生效。
@JsonEnum(alwaysCreate: true)
enum AudienceLatencyLevelType {
  /// 1: 低延时。
  @JsonValue(1)
  audienceLatencyLevelLowLatency,

  /// 2:（默认）超低延时。
  @JsonValue(2)
  audienceLatencyLevelUltraLowLatency,
}

/// @nodoc
extension AudienceLatencyLevelTypeExt on AudienceLatencyLevelType {
  /// @nodoc
  static AudienceLatencyLevelType fromValue(int value) {
    return $enumDecode(_$AudienceLatencyLevelTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudienceLatencyLevelTypeEnumMap[this]!;
  }
}

/// 用户角色属性设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClientRoleOptions implements AgoraSerializable {
  /// @nodoc
  const ClientRoleOptions({this.audienceLatencyLevel});

  /// 观众端延时级别。详见 AudienceLatencyLevelType 。
  @JsonKey(name: 'audienceLatencyLevel')
  final AudienceLatencyLevelType? audienceLatencyLevel;

  /// @nodoc
  factory ClientRoleOptions.fromJson(Map<String, dynamic> json) =>
      _$ClientRoleOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClientRoleOptionsToJson(this);
}

/// 接收远端音频时，本地用户的主观体验质量。
@JsonEnum(alwaysCreate: true)
enum ExperienceQualityType {
  /// 0: 主观体验质量较好。
  @JsonValue(0)
  experienceQualityGood,

  /// 1: 主观体验质量较差。
  @JsonValue(1)
  experienceQualityBad,
}

/// @nodoc
extension ExperienceQualityTypeExt on ExperienceQualityType {
  /// @nodoc
  static ExperienceQualityType fromValue(int value) {
    return $enumDecode(_$ExperienceQualityTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ExperienceQualityTypeEnumMap[this]!;
  }
}

/// 接收远端音频时，本地用户主观体验质量较差的原因。
@JsonEnum(alwaysCreate: true)
enum ExperiencePoorReason {
  /// 0: 无原因，说明主观体验质量较好。
  @JsonValue(0)
  experienceReasonNone,

  /// 1: 远端用户的网络较差。
  @JsonValue(1)
  remoteNetworkQualityPoor,

  /// 2: 本地用户的网络较差。
  @JsonValue(2)
  localNetworkQualityPoor,

  /// 4: 本地用户的 Wi-FI 或者移动数据网络信号弱。
  @JsonValue(4)
  wirelessSignalPoor,

  /// 8: 本地用户同时开启 Wi-Fi 和蓝牙，二者信号互相干扰，导致音频传输质量下降。
  @JsonValue(8)
  wifiBluetoothCoexist,
}

/// @nodoc
extension ExperiencePoorReasonExt on ExperiencePoorReason {
  /// @nodoc
  static ExperiencePoorReason fromValue(int value) {
    return $enumDecode(_$ExperiencePoorReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ExperiencePoorReasonEnumMap[this]!;
  }
}

/// AI 降噪的模式。
@JsonEnum(alwaysCreate: true)
enum AudioAinsMode {
  /// 0：（默认）均衡降噪模式；如果你希望实现对噪声抑制和延时都较为均衡的降噪效果，可选择该模式。
  @JsonValue(0)
  ainsModeBalanced,

  /// 1：强降噪模式；适用于对噪声抑制性能要求较高的场景，如户外直播。该模式可以更大程度地减少噪声，但同时可能会对语音造成一定损伤。
  @JsonValue(1)
  ainsModeAggressive,

  /// 2：低延时强降噪模式。该模式的降噪延时比弱降噪和强降噪模式大约低一半，适用于对降噪及低延时要求较高的场景，如实时合唱。
  @JsonValue(2)
  ainsModeUltralowlatency,
}

/// @nodoc
extension AudioAinsModeExt on AudioAinsMode {
  /// @nodoc
  static AudioAinsMode fromValue(int value) {
    return $enumDecode(_$AudioAinsModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioAinsModeEnumMap[this]!;
  }
}

/// 音频编码属性。
@JsonEnum(alwaysCreate: true)
enum AudioProfileType {
  /// 0: 默认值。
  ///  直播场景下：48 kHz 采样率，音乐编码，单声道，编码码率最大值为 64 Kbps。
  ///  通信场景下：
  ///  Windows 平台：16 kHz 采样率，语音编码，单声道，编码码率最大值为 16 Kbps。
  ///  Android、macOS、iOS 平台：32 kHz 采样率，语音编码，单声道，编码码率最大值为 18 Kbps。
  @JsonValue(0)
  audioProfileDefault,

  /// 1: 指定 32 kHz 采样率，语音编码，单声道，编码码率最大值为 18 Kbps。
  @JsonValue(1)
  audioProfileSpeechStandard,

  /// 2: 指定 48 kHz 采样率，音乐编码，单声道，编码码率最大值为 64 Kbps。
  @JsonValue(2)
  audioProfileMusicStandard,

  /// 3: 指定 48 kHz 采样率，音乐编码，双声道，编码码率最大值为 80 Kbps。
  /// 如需实现立体声，你还需要调用 setAdvancedAudioOptions 并在 AdvancedAudioOptions 中设置 audioProcessingChannels 为 audioProcessingStereo 。
  @JsonValue(3)
  audioProfileMusicStandardStereo,

  /// 4: 指定 48 kHz 采样率，音乐编码，单声道，编码码率最大值为 96 Kbps。
  @JsonValue(4)
  audioProfileMusicHighQuality,

  /// 5: 指定 48 kHz 采样率，音乐编码，双声道，编码码率最大值为 128 Kbps。
  /// 如需实现立体声，你还需要调用 setAdvancedAudioOptions 并在 AdvancedAudioOptions 中设置 audioProcessingChannels 为 audioProcessingStereo 。
  @JsonValue(5)
  audioProfileMusicHighQualityStereo,

  /// 6: 指定 16 kHz 采样率，语音编码，单声道，应用回声消除算法 AEC。
  @JsonValue(6)
  audioProfileIot,

  /// 枚举值边界。
  @JsonValue(7)
  audioProfileNum,
}

/// @nodoc
extension AudioProfileTypeExt on AudioProfileType {
  /// @nodoc
  static AudioProfileType fromValue(int value) {
    return $enumDecode(_$AudioProfileTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioProfileTypeEnumMap[this]!;
  }
}

/// 音频场景。
@JsonEnum(alwaysCreate: true)
enum AudioScenarioType {
  /// 0: （默认）自动场景，根据用户角色和音频路由自动匹配合适的音质。
  @JsonValue(0)
  audioScenarioDefault,

  /// 3: 高音质场景，适用于音乐为主的场景。例如：乐器陪练。
  @JsonValue(3)
  audioScenarioGameStreaming,

  /// 5: 聊天室场景，适用于用户需要频繁上下麦的场景。例如：教育场景。
  @JsonValue(5)
  audioScenarioChatroom,

  /// 7: 合唱场景。适用于网络条件良好，要求极低延时的实时合唱场景。
  @JsonValue(7)
  audioScenarioChorus,

  /// 8: 会议场景，适用于人声为主的多人会议。
  @JsonValue(8)
  audioScenarioMeeting,

  /// @nodoc
  @JsonValue(9)
  audioScenarioAiServer,

  /// 10: AI 对话场景，仅适用于与[声网对话式 AI 引擎](https://doc.shengwang.cn/doc/convoai/restful/landing-page)创建的智能体互动的场景。
  @JsonValue(10)
  audioScenarioAiClient,

  /// 枚举的数量。
  @JsonValue(11)
  audioScenarioNum,
}

/// @nodoc
extension AudioScenarioTypeExt on AudioScenarioType {
  /// @nodoc
  static AudioScenarioType fromValue(int value) {
    return $enumDecode(_$AudioScenarioTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioScenarioTypeEnumMap[this]!;
  }
}

/// 视频帧格式。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoFormat implements AgoraSerializable {
  /// @nodoc
  const VideoFormat({this.width, this.height, this.fps});

  /// 视频帧的宽度（px）。默认值为 960。
  @JsonKey(name: 'width')
  final int? width;

  /// 视频帧的高度（px）。默认值为 540.
  @JsonKey(name: 'height')
  final int? height;

  /// 视频帧的帧率。默认值为 15。
  @JsonKey(name: 'fps')
  final int? fps;

  /// @nodoc
  factory VideoFormat.fromJson(Map<String, dynamic> json) =>
      _$VideoFormatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoFormatToJson(this);
}

/// 屏幕共享的内容类型。
@JsonEnum(alwaysCreate: true)
enum VideoContentHint {
  /// （默认）无指定的内容类型。
  @JsonValue(0)
  contentHintNone,

  /// 内容类型为动画。当共享的内容是视频、电影或视频游戏时，推荐选择该内容类型。
  @JsonValue(1)
  contentHintMotion,

  /// 内容类型为细节。当共享的内容是图片或文字时，推荐选择该内容类型。
  @JsonValue(2)
  contentHintDetails,
}

/// @nodoc
extension VideoContentHintExt on VideoContentHint {
  /// @nodoc
  static VideoContentHint fromValue(int value) {
    return $enumDecode(_$VideoContentHintEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoContentHintEnumMap[this]!;
  }
}

/// 屏幕共享的场景。
@JsonEnum(alwaysCreate: true)
enum ScreenScenarioType {
  /// 1:（默认）文档。该场景下，优先保障共享的画质，并降低了接收端看到共享视频的延时。如果你共享文档、幻灯片、表格，可以设置该场景。
  @JsonValue(1)
  screenScenarioDocument,

  /// 2: 游戏。该场景下，优先保障共享的流畅性。如果你共享游戏，可以设置该场景。
  @JsonValue(2)
  screenScenarioGaming,

  /// 3: 视频。该场景下，优先保障共享的流畅性。如果你共享电影、视频直播，可以设置该场景。
  @JsonValue(3)
  screenScenarioVideo,

  /// 4: 远程控制。该场景下，优先保障共享的画质，并降低了接收端看到共享视频的延时。如果你共享被远程控制的设备桌面，可以设置该场景。
  @JsonValue(4)
  screenScenarioRdc,
}

/// @nodoc
extension ScreenScenarioTypeExt on ScreenScenarioType {
  /// @nodoc
  static ScreenScenarioType fromValue(int value) {
    return $enumDecode(_$ScreenScenarioTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ScreenScenarioTypeEnumMap[this]!;
  }
}

/// 视频业务场景类型。
@JsonEnum(alwaysCreate: true)
enum VideoApplicationScenarioType {
  /// 0: (默认) 通用场景。
  @JsonValue(0)
  applicationScenarioGeneral,

  /// 1: 会议场景。
  @JsonValue(1)
  applicationScenarioMeeting,

  /// 2: 1v1 视频通话
  @JsonValue(2)
  applicationScenario1v1,

  /// 3: 秀场直播
  @JsonValue(3)
  applicationScenarioLiveshow,
}

/// @nodoc
extension VideoApplicationScenarioTypeExt on VideoApplicationScenarioType {
  /// @nodoc
  static VideoApplicationScenarioType fromValue(int value) {
    return $enumDecode(_$VideoApplicationScenarioTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoApplicationScenarioTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum VideoQoePreferenceType {
  /// @nodoc
  @JsonValue(1)
  videoQoePreferenceBalance,

  /// @nodoc
  @JsonValue(2)
  videoQoePreferenceDelayFirst,

  /// @nodoc
  @JsonValue(3)
  videoQoePreferencePictureQualityFirst,

  /// @nodoc
  @JsonValue(4)
  videoQoePreferenceFluencyFirst,
}

/// @nodoc
extension VideoQoePreferenceTypeExt on VideoQoePreferenceType {
  /// @nodoc
  static VideoQoePreferenceType fromValue(int value) {
    return $enumDecode(_$VideoQoePreferenceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoQoePreferenceTypeEnumMap[this]!;
  }
}

/// 本地采集的画质亮度级别。
@JsonEnum(alwaysCreate: true)
enum CaptureBrightnessLevelType {
  /// -1: SDK 未检测出本地采集的画质亮度级别。请等待几秒，通过下一次回调的 captureBrightnessLevel 获取亮度级别。
  @JsonValue(-1)
  captureBrightnessLevelInvalid,

  /// 0: 本地采集的画质亮度正常。
  @JsonValue(0)
  captureBrightnessLevelNormal,

  /// 1: 本地采集的画质亮度偏亮。
  @JsonValue(1)
  captureBrightnessLevelBright,

  /// 2: 本地采集的画质亮度偏暗。
  @JsonValue(2)
  captureBrightnessLevelDark,
}

/// @nodoc
extension CaptureBrightnessLevelTypeExt on CaptureBrightnessLevelType {
  /// @nodoc
  static CaptureBrightnessLevelType fromValue(int value) {
    return $enumDecode(_$CaptureBrightnessLevelTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CaptureBrightnessLevelTypeEnumMap[this]!;
  }
}

/// 摄像头防抖模式。
///
/// 摄像头的防抖效果按照 1 < 2 <3 的顺序依次增强，时延也会相应增大。
@JsonEnum(alwaysCreate: true)
enum CameraStabilizationMode {
  /// -1：（默认）摄像头防抖模式关闭。
  @JsonValue(-1)
  cameraStabilizationModeOff,

  /// 0：摄像头自动防抖，系统会根据摄像头的状态自动选择一种防抖模式。但是在该模式下的时延较大，建议你不要使用该枚举。
  @JsonValue(0)
  cameraStabilizationModeAuto,

  /// 1：（推荐）摄像头 1 级防抖。
  @JsonValue(1)
  cameraStabilizationModeLevel1,

  /// 2：摄像头 2 级防抖。
  @JsonValue(2)
  cameraStabilizationModeLevel2,

  /// 3：摄像头 3 级防抖。
  @JsonValue(3)
  cameraStabilizationModeLevel3,

  /// @nodoc
  @JsonValue(3)
  cameraStabilizationModeMaxLevel,
}

/// @nodoc
extension CameraStabilizationModeExt on CameraStabilizationMode {
  /// @nodoc
  static CameraStabilizationMode fromValue(int value) {
    return $enumDecode(_$CameraStabilizationModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraStabilizationModeEnumMap[this]!;
  }
}

/// 本地音频状态。
@JsonEnum(alwaysCreate: true)
enum LocalAudioStreamState {
  /// 0: 本地音频默认初始状态。
  @JsonValue(0)
  localAudioStreamStateStopped,

  /// 1: 本地音频采集设备启动成功。
  @JsonValue(1)
  localAudioStreamStateRecording,

  /// 2: 本地音频首帧编码成功。
  @JsonValue(2)
  localAudioStreamStateEncoding,

  /// 3: 本地音频启动失败。
  @JsonValue(3)
  localAudioStreamStateFailed,
}

/// @nodoc
extension LocalAudioStreamStateExt on LocalAudioStreamState {
  /// @nodoc
  static LocalAudioStreamState fromValue(int value) {
    return $enumDecode(_$LocalAudioStreamStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalAudioStreamStateEnumMap[this]!;
  }
}

/// 本地音频状态改变原因。
@JsonEnum(alwaysCreate: true)
enum LocalAudioStreamReason {
  /// 0：本地音频状态正常。
  @JsonValue(0)
  localAudioStreamReasonOk,

  /// 1：本地音频出错原因不明确。建议提示用户尝试重新加入频道。
  @JsonValue(1)
  localAudioStreamReasonFailure,

  /// 2：没有权限启动本地音频采集设备。请提示用户开启权限。 弃用：该枚举已废弃。请改用 onPermissionError 回调中的 recordAudio 。
  @JsonValue(2)
  localAudioStreamReasonDeviceNoPermission,

  /// 3：（仅适用于 Android 和 iOS）本地音频采集设备已经在使用中。请提示用户检查麦克风是否被其他应用占用。麦克风空闲约 5 秒后本地音频采集会自动恢复，你也可以在麦克风空闲后尝试重新加入频道。
  @JsonValue(3)
  localAudioStreamReasonDeviceBusy,

  /// 4：本地音频采集失败。
  @JsonValue(4)
  localAudioStreamReasonRecordFailure,

  /// 5：本地音频编码失败。
  @JsonValue(5)
  localAudioStreamReasonEncodeFailure,

  /// 6：（仅适用于 Windows 和 macOS）无本地音频采集设备。请提示用户在设备的控制面板中检查麦克风是否与设备连接正常，检查麦克风是否正常工作。
  @JsonValue(6)
  localAudioStreamReasonNoRecordingDevice,

  /// 7：（仅适用于 Windows 和 macOS）无本地音频播放设备。请提示用户在设备的控制面板中检查扬声器是否与设备连接正常，检查扬声器是否正常工作。
  @JsonValue(7)
  localAudioStreamReasonNoPlayoutDevice,

  /// 8:（仅适用于 Android 和 iOS）本地音频采集被系统来电、智能助手、闹钟中断。如需恢复本地音频采集，请用户中止电话、智能助手、闹钟。
  @JsonValue(8)
  localAudioStreamReasonInterrupted,

  /// 9：（仅适用于 Windows）本地音频采集设备的 ID 无效。请提示用户检查音频采集设备 ID。
  @JsonValue(9)
  localAudioStreamReasonRecordInvalidId,

  /// 10：（仅适用于 Windows）本地音频播放设备的 ID 无效。请提示用户检查音频播放设备 ID。
  @JsonValue(10)
  localAudioStreamReasonPlayoutInvalidId,
}

/// @nodoc
extension LocalAudioStreamReasonExt on LocalAudioStreamReason {
  /// @nodoc
  static LocalAudioStreamReason fromValue(int value) {
    return $enumDecode(_$LocalAudioStreamReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalAudioStreamReasonEnumMap[this]!;
  }
}

/// 本地视频状态。
@JsonEnum(alwaysCreate: true)
enum LocalVideoStreamState {
  /// 0: 本地视频默认初始状态。
  @JsonValue(0)
  localVideoStreamStateStopped,

  /// 1: 本地视频采集设备启动成功。
  @JsonValue(1)
  localVideoStreamStateCapturing,

  /// 2: 本地视频首帧编码成功。
  @JsonValue(2)
  localVideoStreamStateEncoding,

  /// 3: 本地视频启动失败。
  @JsonValue(3)
  localVideoStreamStateFailed,
}

/// @nodoc
extension LocalVideoStreamStateExt on LocalVideoStreamState {
  /// @nodoc
  static LocalVideoStreamState fromValue(int value) {
    return $enumDecode(_$LocalVideoStreamStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalVideoStreamStateEnumMap[this]!;
  }
}

/// 本地视频事件类型。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum LocalVideoEventType {
  /// （1）：屏幕采集窗口被隐藏，仅适用于 Android 平台。
  @JsonValue(1)
  localVideoEventTypeScreenCaptureWindowHidden,

  /// （2）：屏幕采集窗口从隐藏状态恢复，仅适用于 Android 平台。
  @JsonValue(2)
  localVideoEventTypeScreenCaptureWindowRecoverFromHidden,

  /// （3）：屏幕采集被用户停止，仅适用于 Android 平台。
  @JsonValue(3)
  localVideoEventTypeScreenCaptureStoppedByUser,

  /// （4）：屏幕采集过程中发生系统内部错误，仅适用于 Android 平台。
  @JsonValue(4)
  localVideoEventTypeScreenCaptureSystemInternalError,
}

/// @nodoc
extension LocalVideoEventTypeExt on LocalVideoEventType {
  /// @nodoc
  static LocalVideoEventType fromValue(int value) {
    return $enumDecode(_$LocalVideoEventTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalVideoEventTypeEnumMap[this]!;
  }
}

/// 本地视频状态改变原因。
@JsonEnum(alwaysCreate: true)
enum LocalVideoStreamReason {
  /// 0：本地视频状态正常。
  @JsonValue(0)
  localVideoStreamReasonOk,

  /// 1：出错原因不明确。
  @JsonValue(1)
  localVideoStreamReasonFailure,

  /// 2：没有权限启动本地视频采集设备。请提示用户开启设备权限后再重新加入频道。 弃用：该枚举已废弃。请改用 onPermissionError 回调中的 camera 。
  @JsonValue(2)
  localVideoStreamReasonDeviceNoPermission,

  /// 3：本地视频采集设备正在使用中。请提示用户检查摄像头是否被其他 App 占用，或者尝试重新加入频道。
  @JsonValue(3)
  localVideoStreamReasonDeviceBusy,

  /// 4：本地视频采集失败。请提示用户检查视频采集设备是否正常工作，检查摄像头是否被其他 App 占用，或者尝试重新加入频道。
  @JsonValue(4)
  localVideoStreamReasonCaptureFailure,

  /// 5：本地视频编码失败。
  @JsonValue(5)
  localVideoStreamReasonCodecNotSupport,

  /// 6：（仅适用于 iOS）App 处于后台。请提示用户 App 处于后台时，无法正常进行视频采集。
  @JsonValue(6)
  localVideoStreamReasonCaptureInbackground,

  /// 7：（仅适用于 iOS）当前 App 窗口处于侧拉、分屏、画中画模式，且其他 App 正占用摄像头。请提示用户当 App 窗口处于侧拉、分屏、画中画模式，且其他 App 正占用摄像头时，无法正常进行视频采集。
  @JsonValue(7)
  localVideoStreamReasonCaptureMultipleForegroundApps,

  /// 8：找不到本地视频采集设备。需检查摄像头是否与设备正常连接、摄像头是否正常工作，或者尝试重新加入频道。
  @JsonValue(8)
  localVideoStreamReasonDeviceNotFound,

  /// 9：（仅适用于 macOS 和 Windows）当前正在使用的视频采集设备已经断开连接（例如，被拔出）。
  @JsonValue(9)
  localVideoStreamReasonDeviceDisconnected,

  /// 10：（仅适用于 macOS 和 Windows）SDK 无法在视频设备列表中找到该视频设备。请检查视频设备 ID 是否有效。
  @JsonValue(10)
  localVideoStreamReasonDeviceInvalidId,

  /// 14:（仅适用于 Android）视频采集中断。可能的原因是：
  ///  摄像头被其他 App 占用。请提示用户检查摄像头是否被其他 App 占用。
  ///  当前 App 已被切换到后台。可以使用前台服务通知操作系统，确保 App 在切换到后台时仍可采集视频。详见[为什么部分 Android 版本应用锁屏或切后台后采集音视频无效？](https://doc.shengwang.cn/faq/quality-issues/android-background)。
  @JsonValue(14)
  localVideoStreamReasonDeviceInterrupt,

  /// 15:（仅适用于 Android）视频采集设备出错。请提示用户关闭并重新启动摄像头以恢复功能，如果该操作不能解决问题，请检查摄像头是否出现硬件故障。
  @JsonValue(15)
  localVideoStreamReasonDeviceFatalError,

  /// 101：由于系统压力过大，导致当前视频采集设备不可用。
  @JsonValue(101)
  localVideoStreamReasonDeviceSystemPressure,

  /// 11：（仅适用于 macOS 和 Windows）调用 startScreenCaptureByWindowId 方法共享窗口时，共享窗口处于最小化的状态。SDK 无法共享被最小化的窗口。请提示用户将共享窗口取消最小化。
  @JsonValue(11)
  localVideoStreamReasonScreenCaptureWindowMinimized,

  /// 12：（仅适用于 macOS 和 Windows）通过窗口 ID 共享的窗口已关闭，或通过窗口 ID 共享的全屏窗口已退出全屏。退出全屏模式后，远端用户将无法看到共享的窗口。为避免远端用户看到黑屏，建议你立即结束本次共享。
  /// 报告该错误码的常见场景：
  ///  本地用户关闭共享的窗口。
  ///  本地用户先播放映幻灯片，然后共享放映中的幻灯片。结束放映时，SDK 会报告该错误码。
  ///  本地用户先全屏观看网页视频或网页文档，然后共享网页视频或网页文档。结束全屏时，SDK 会报告该错误码。
  @JsonValue(12)
  localVideoStreamReasonScreenCaptureWindowClosed,

  /// 13:（仅适用于 Windows）待共享的窗口被其他窗口遮挡住，被遮挡住的部分在共享时会被 SDK 涂黑。
  @JsonValue(13)
  localVideoStreamReasonScreenCaptureWindowOccluded,

  /// @nodoc
  @JsonValue(20)
  localVideoStreamReasonScreenCaptureWindowNotSupported,

  /// 21：（仅适用于 Windows 和 Android）当前采集的窗口无数据。
  @JsonValue(21)
  localVideoStreamReasonScreenCaptureFailure,

  /// 22：（仅适用于 Windows 和 macOS）不具备采集屏幕的权限。
  @JsonValue(22)
  localVideoStreamReasonScreenCaptureNoPermission,

  /// 24：（仅适用于 Windows）屏幕共享过程中发生意外错误（可能由于窗口屏蔽失败），导致屏幕共享策略降级，但屏幕共享过程本身没有受到影响。 屏幕共享过程中，由于设备本身驱动等问题导致屏蔽指定窗口失败时，SDK 也会报告该事件并自动回退到共享整个屏幕。如果你的应用场景需要屏蔽特定窗口以保护隐私，建议监听此事件并在事件触发时添加额外的隐私保护机制。
  @JsonValue(24)
  localVideoStreamReasonScreenCaptureAutoFallback,

  /// 25：（仅适用于 Windows）当前屏幕采集的窗口处于隐藏状态，并且在当前屏幕上不可见。
  @JsonValue(25)
  localVideoStreamReasonScreenCaptureWindowHidden,

  /// 26：（仅适用于 Windows）进行屏幕采集的窗口已经从隐藏状态中恢复。
  @JsonValue(26)
  localVideoStreamReasonScreenCaptureWindowRecoverFromHidden,

  /// 27：（仅适用于 macOS 和 Windows）进行屏幕采集的窗口已经从最小化状态恢复正常。
  @JsonValue(27)
  localVideoStreamReasonScreenCaptureWindowRecoverFromMinimized,

  /// 28：（仅适用于 Windows）屏幕采集已暂停。报告该错误码的常见场景：当前屏幕可能已切换到安全桌面，例如 UAC 对话框或者 Winlogon 桌面。
  @JsonValue(28)
  localVideoStreamReasonScreenCapturePaused,

  /// 29：（仅适用于 Windows）屏幕采集已从暂停状态中恢复。
  @JsonValue(29)
  localVideoStreamReasonScreenCaptureResumed,

  /// 30：（仅适用于 Windows 和 macOS）进行屏幕采集的显示器已断开连接。当收到该状态时，请提示用户当前屏幕共享已暂停并重启屏幕共享。
  @JsonValue(30)
  localVideoStreamReasonScreenCaptureDisplayDisconnected,

  /// @nodoc
  @JsonValue(31)
  localVideoStreamReasonScreenCaptureStoppedByUser,

  /// @nodoc
  @JsonValue(32)
  localVideoStreamReasonScreenCaptureInterruptedByOther,

  /// @nodoc
  @JsonValue(33)
  localVideoStreamReasonScreenCaptureStoppedByCall,

  /// @nodoc
  @JsonValue(34)
  localVideoStreamReasonScreenCaptureExcludeWindowFailed,
}

/// @nodoc
extension LocalVideoStreamReasonExt on LocalVideoStreamReason {
  /// @nodoc
  static LocalVideoStreamReason fromValue(int value) {
    return $enumDecode(_$LocalVideoStreamReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalVideoStreamReasonEnumMap[this]!;
  }
}

/// 远端音频流状态。
@JsonEnum(alwaysCreate: true)
enum RemoteAudioState {
  /// 0: 远端音频默认初始状态。在 remoteAudioReasonLocalMuted 、 remoteAudioReasonRemoteMuted 或 remoteAudioReasonRemoteOffline 的情况下，会报告该状态。
  @JsonValue(0)
  remoteAudioStateStopped,

  /// 1: 本地用户已接收远端音频首包。
  @JsonValue(1)
  remoteAudioStateStarting,

  /// 2: 远端音频流正在解码，正常播放。在 remoteAudioReasonNetworkRecovery 、 remoteAudioReasonLocalUnmuted 或 remoteAudioReasonRemoteUnmuted 的情况下，会报告该状态。
  @JsonValue(2)
  remoteAudioStateDecoding,

  /// 3: 远端音频流卡顿。在 remoteAudioReasonNetworkCongestion 的情况下，会报告该状态。
  @JsonValue(3)
  remoteAudioStateFrozen,

  /// 4: 远端音频流播放失败。在 remoteAudioReasonInternal 的情况下，会报告该状态。
  @JsonValue(4)
  remoteAudioStateFailed,
}

/// @nodoc
extension RemoteAudioStateExt on RemoteAudioState {
  /// @nodoc
  static RemoteAudioState fromValue(int value) {
    return $enumDecode(_$RemoteAudioStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteAudioStateEnumMap[this]!;
  }
}

/// 远端音频流状态切换原因。
@JsonEnum(alwaysCreate: true)
enum RemoteAudioStateReason {
  /// 0: 音频状态发生改变时，会报告该原因。
  @JsonValue(0)
  remoteAudioReasonInternal,

  /// 1: 网络阻塞。
  @JsonValue(1)
  remoteAudioReasonNetworkCongestion,

  /// 2: 网络恢复正常。
  @JsonValue(2)
  remoteAudioReasonNetworkRecovery,

  /// 3: 本地用户停止接收远端音频流或本地用户禁用音频模块。
  @JsonValue(3)
  remoteAudioReasonLocalMuted,

  /// 4: 本地用户恢复接收远端音频流或本地用户启动音频模块。
  @JsonValue(4)
  remoteAudioReasonLocalUnmuted,

  /// 5: 远端用户停止发送音频流或远端用户禁用音频模块。
  @JsonValue(5)
  remoteAudioReasonRemoteMuted,

  /// 6: 远端用户恢复发送音频流或远端用户启用音频模块。
  @JsonValue(6)
  remoteAudioReasonRemoteUnmuted,

  /// 7: 远端用户离开频道。
  @JsonValue(7)
  remoteAudioReasonRemoteOffline,

  /// @nodoc
  @JsonValue(8)
  remoteAudioReasonNoPacketReceive,

  /// @nodoc
  @JsonValue(9)
  remoteAudioReasonLocalPlayFailed,
}

/// @nodoc
extension RemoteAudioStateReasonExt on RemoteAudioStateReason {
  /// @nodoc
  static RemoteAudioStateReason fromValue(int value) {
    return $enumDecode(_$RemoteAudioStateReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteAudioStateReasonEnumMap[this]!;
  }
}

/// 远端视频流状态。
@JsonEnum(alwaysCreate: true)
enum RemoteVideoState {
  /// 0: 远端视频默认初始状态。在 remoteVideoStateReasonLocalMuted 、 remoteVideoStateReasonRemoteMuted 或 remoteVideoStateReasonRemoteOffline 的情况下，会报告该状态。
  @JsonValue(0)
  remoteVideoStateStopped,

  /// 1: 本地用户已接收远端视频首包。
  @JsonValue(1)
  remoteVideoStateStarting,

  /// 2: 远端视频流正在解码，正常播放。在 remoteVideoStateReasonNetworkRecovery 、 remoteVideoStateReasonLocalUnmuted 、 remoteVideoStateReasonRemoteUnmuted 或 remoteVideoStateReasonAudioFallbackRecovery 的情况下，会报告该状态。
  @JsonValue(2)
  remoteVideoStateDecoding,

  /// 3: 远端视频流卡顿。在 remoteVideoStateReasonNetworkCongestion 或 remoteVideoStateReasonAudioFallback 的情况下，会报告该状态。
  @JsonValue(3)
  remoteVideoStateFrozen,

  /// 4: 远端视频流播放失败。在 remoteVideoStateReasonInternal 的情况下，会报告该状态。
  @JsonValue(4)
  remoteVideoStateFailed,
}

/// @nodoc
extension RemoteVideoStateExt on RemoteVideoState {
  /// @nodoc
  static RemoteVideoState fromValue(int value) {
    return $enumDecode(_$RemoteVideoStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteVideoStateEnumMap[this]!;
  }
}

/// 远端视频流状态切换原因。
@JsonEnum(alwaysCreate: true)
enum RemoteVideoStateReason {
  /// 0: 视频状态发生改变时，会报告该原因。
  @JsonValue(0)
  remoteVideoStateReasonInternal,

  /// 1: 网络阻塞。
  @JsonValue(1)
  remoteVideoStateReasonNetworkCongestion,

  /// 2: 网络恢复正常。
  @JsonValue(2)
  remoteVideoStateReasonNetworkRecovery,

  /// 3: 本地用户停止接收远端视频流或本地用户禁用视频模块。
  @JsonValue(3)
  remoteVideoStateReasonLocalMuted,

  /// 4: 本地用户恢复接收远端视频流或本地用户启动视频模块。
  @JsonValue(4)
  remoteVideoStateReasonLocalUnmuted,

  /// 5: 远端用户停止发送视频流或远端用户禁用视频模块。
  @JsonValue(5)
  remoteVideoStateReasonRemoteMuted,

  /// 6: 远端用户恢复发送视频流或远端用户启用视频模块。
  @JsonValue(6)
  remoteVideoStateReasonRemoteUnmuted,

  /// 7: 远端用户离开频道。
  @JsonValue(7)
  remoteVideoStateReasonRemoteOffline,

  /// 8: 弱网情况下，远端音视频流回退为音频流。
  @JsonValue(8)
  remoteVideoStateReasonAudioFallback,

  /// 9: 网络情况改善时，远端音频流恢复为音视频流。
  @JsonValue(9)
  remoteVideoStateReasonAudioFallbackRecovery,

  /// @nodoc
  @JsonValue(10)
  remoteVideoStateReasonVideoStreamTypeChangeToLow,

  /// @nodoc
  @JsonValue(11)
  remoteVideoStateReasonVideoStreamTypeChangeToHigh,

  /// 12：(仅适用于 iOS) 远端用户的 App 已切换到后台。
  @JsonValue(12)
  remoteVideoStateReasonSdkInBackground,

  /// 13：本地的视频解码器不支持对收到的远端视频流进行解码。
  @JsonValue(13)
  remoteVideoStateReasonCodecNotSupport,
}

/// @nodoc
extension RemoteVideoStateReasonExt on RemoteVideoStateReason {
  /// @nodoc
  static RemoteVideoStateReason fromValue(int value) {
    return $enumDecode(_$RemoteVideoStateReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteVideoStateReasonEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum RemoteUserState {
  /// @nodoc
  @JsonValue((1 << 0))
  userStateMuteAudio,

  /// @nodoc
  @JsonValue((1 << 1))
  userStateMuteVideo,

  /// @nodoc
  @JsonValue((1 << 4))
  userStateEnableVideo,

  /// @nodoc
  @JsonValue((1 << 8))
  userStateEnableLocalVideo,
}

/// @nodoc
extension RemoteUserStateExt on RemoteUserState {
  /// @nodoc
  static RemoteUserState fromValue(int value) {
    return $enumDecode(_$RemoteUserStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteUserStateEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoTrackInfo implements AgoraSerializable {
  /// @nodoc
  const VideoTrackInfo(
      {this.isLocal,
      this.ownerUid,
      this.trackId,
      this.channelId,
      this.codecType,
      this.encodedFrameOnly,
      this.sourceType,
      this.observationPosition});

  /// @nodoc
  @JsonKey(name: 'isLocal')
  final bool? isLocal;

  /// @nodoc
  @JsonKey(name: 'ownerUid')
  final int? ownerUid;

  /// @nodoc
  @JsonKey(name: 'trackId')
  final int? trackId;

  /// @nodoc
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// @nodoc
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// @nodoc
  @JsonKey(name: 'encodedFrameOnly')
  final bool? encodedFrameOnly;

  /// @nodoc
  @JsonKey(name: 'sourceType')
  final VideoSourceType? sourceType;

  /// @nodoc
  @JsonKey(name: 'observationPosition')
  final int? observationPosition;

  /// @nodoc
  factory VideoTrackInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoTrackInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoTrackInfoToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum RemoteVideoDownscaleLevel {
  /// @nodoc
  @JsonValue(0)
  remoteVideoDownscaleLevelNone,

  /// @nodoc
  @JsonValue(1)
  remoteVideoDownscaleLevel1,

  /// @nodoc
  @JsonValue(2)
  remoteVideoDownscaleLevel2,

  /// @nodoc
  @JsonValue(3)
  remoteVideoDownscaleLevel3,

  /// @nodoc
  @JsonValue(4)
  remoteVideoDownscaleLevel4,
}

/// @nodoc
extension RemoteVideoDownscaleLevelExt on RemoteVideoDownscaleLevel {
  /// @nodoc
  static RemoteVideoDownscaleLevel fromValue(int value) {
    return $enumDecode(_$RemoteVideoDownscaleLevelEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RemoteVideoDownscaleLevelEnumMap[this]!;
  }
}

/// 用户音量信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioVolumeInfo implements AgoraSerializable {
  /// @nodoc
  const AudioVolumeInfo({this.uid, this.volume, this.vad, this.voicePitch});

  /// 用户 ID。
  ///  在本地用户的回调中， uid 为 0。
  ///  在远端用户的回调中， uid 为瞬时音量最高的远端用户（最多 3 位）的 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 用户的音量，取值范围为 [0,255]。如果用户将自己静音（将 muteLocalAudioStream 设为 true ），但开启了音频采集， volume 的值表示本地采集信号的音量。
  @JsonKey(name: 'volume')
  final int? volume;

  /// vad 无法报告远端用户的人声状态。对于远端用户， vad 的值始终为 1。
  ///  如需使用此参数，请在调用 enableAudioVolumeIndication 时设置 reportVad 为 true 。 本地用户的人声状态。
  ///  0：本地无人声。
  ///  1：本地有人声。
  @JsonKey(name: 'vad')
  final int? vad;

  /// 本地用户的人声音调（Hz）。取值范围为 [0.0,4000.0]。 voicePitch 无法报告远端用户的人声音调。对于远端用户， voicePitch 的值始终为 0.0。
  @JsonKey(name: 'voicePitch')
  final double? voicePitch;

  /// @nodoc
  factory AudioVolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioVolumeInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioVolumeInfoToJson(this);
}

/// 音频设备信息。
///
/// 该类仅适用于 Android 平台。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DeviceInfo implements AgoraSerializable {
  /// @nodoc
  const DeviceInfo({this.isLowLatencyAudioSupported});

  /// 是否支持极低延时音频采集和播放： true : 支持 false : 不支持
  @JsonKey(name: 'isLowLatencyAudioSupported')
  final bool? isLowLatencyAudioSupported;

  /// @nodoc
  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Packet implements AgoraSerializable {
  /// @nodoc
  const Packet({this.buffer, this.size});

  /// @nodoc
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// @nodoc
  @JsonKey(name: 'size')
  final int? size;

  /// @nodoc
  factory Packet.fromJson(Map<String, dynamic> json) => _$PacketFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PacketToJson(this);
}

/// 推流输出音频的采样率。
@JsonEnum(alwaysCreate: true)
enum AudioSampleRateType {
  /// 32000: 32 kHz
  @JsonValue(32000)
  audioSampleRate32000,

  /// 44100: 44.1 kHz
  @JsonValue(44100)
  audioSampleRate44100,

  /// 48000: （默认）48 kHz
  @JsonValue(48000)
  audioSampleRate48000,
}

/// @nodoc
extension AudioSampleRateTypeExt on AudioSampleRateType {
  /// @nodoc
  static AudioSampleRateType fromValue(int value) {
    return $enumDecode(_$AudioSampleRateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioSampleRateTypeEnumMap[this]!;
  }
}

/// 转码输出视频流的编解码类型。
@JsonEnum(alwaysCreate: true)
enum VideoCodecTypeForStream {
  /// 1：（默认）H.264。
  @JsonValue(1)
  videoCodecH264ForStream,

  /// 2：H.265。
  @JsonValue(2)
  videoCodecH265ForStream,
}

/// @nodoc
extension VideoCodecTypeForStreamExt on VideoCodecTypeForStream {
  /// @nodoc
  static VideoCodecTypeForStream fromValue(int value) {
    return $enumDecode(_$VideoCodecTypeForStreamEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoCodecTypeForStreamEnumMap[this]!;
  }
}

/// 旁路推流输出视频的编解码规格。
@JsonEnum(alwaysCreate: true)
enum VideoCodecProfileType {
  /// 66: Baseline 级别的视频编码规格，一般用于低阶或需要额外容错的应用，比如视频通话、手机视频等。
  @JsonValue(66)
  videoCodecProfileBaseline,

  /// 77: Main 级别的视频编码规格，一般用于主流消费类电子产品，如 MP4、便携的视频播放器、PSP、iPad 等。
  @JsonValue(77)
  videoCodecProfileMain,

  /// 100: （默认）High 级别的视频编码规格，一般用于广播、视频碟片存储、高清电视。
  @JsonValue(100)
  videoCodecProfileHigh,
}

/// @nodoc
extension VideoCodecProfileTypeExt on VideoCodecProfileType {
  /// @nodoc
  static VideoCodecProfileType fromValue(int value) {
    return $enumDecode(_$VideoCodecProfileTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoCodecProfileTypeEnumMap[this]!;
  }
}

/// 推流输出音频的编解码规格，默认为 LC-AAC。
@JsonEnum(alwaysCreate: true)
enum AudioCodecProfileType {
  /// 0: （默认）LC-AAC 规格。
  @JsonValue(0)
  audioCodecProfileLcAac,

  /// 1: HE-AAC 规格。
  @JsonValue(1)
  audioCodecProfileHeAac,

  /// 2: HE-AAC v2 规格。
  @JsonValue(2)
  audioCodecProfileHeAacV2,
}

/// @nodoc
extension AudioCodecProfileTypeExt on AudioCodecProfileType {
  /// @nodoc
  static AudioCodecProfileType fromValue(int value) {
    return $enumDecode(_$AudioCodecProfileTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioCodecProfileTypeEnumMap[this]!;
  }
}

/// 本地音频统计数据。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LocalAudioStats implements AgoraSerializable {
  /// @nodoc
  const LocalAudioStats(
      {this.numChannels,
      this.sentSampleRate,
      this.sentBitrate,
      this.internalCodec,
      this.txPacketLossRate,
      this.audioDeviceDelay,
      this.audioPlayoutDelay,
      this.earMonitorDelay,
      this.aecEstimatedDelay});

  /// 声道数。
  @JsonKey(name: 'numChannels')
  final int? numChannels;

  /// 发送本地音频的采样率，单位为 Hz。
  @JsonKey(name: 'sentSampleRate')
  final int? sentSampleRate;

  /// 发送本地音频的码率平均值，单位为 Kbps。
  @JsonKey(name: 'sentBitrate')
  final int? sentBitrate;

  /// 内部的 payload 类型。
  @JsonKey(name: 'internalCodec')
  final int? internalCodec;

  /// 弱网对抗前本端到声网边缘服务器的丢包率 (%)。
  @JsonKey(name: 'txPacketLossRate')
  final int? txPacketLossRate;

  /// 播放或录制音频时，音频设备模块的延迟 (ms)。
  @JsonKey(name: 'audioDeviceDelay')
  final int? audioDeviceDelay;

  /// @nodoc
  @JsonKey(name: 'audioPlayoutDelay')
  final int? audioPlayoutDelay;

  /// 耳返延迟 (ms)，即声音从麦克风输入到耳机输出的延迟。
  @JsonKey(name: 'earMonitorDelay')
  final int? earMonitorDelay;

  /// 回声消除延迟 (ms)，即回声消除 (Acoustic Echo Cancellation, AEC) 模块测算出音频在本地播放前与被本地采集后的信号延迟。
  @JsonKey(name: 'aecEstimatedDelay')
  final int? aecEstimatedDelay;

  /// @nodoc
  factory LocalAudioStats.fromJson(Map<String, dynamic> json) =>
      _$LocalAudioStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocalAudioStatsToJson(this);
}

/// 推流状态。
@JsonEnum(alwaysCreate: true)
enum RtmpStreamPublishState {
  /// 0：推流未开始或已结束。
  @JsonValue(0)
  rtmpStreamPublishStateIdle,

  /// 1：正在连接推流服务器和 CDN 服务器。
  @JsonValue(1)
  rtmpStreamPublishStateConnecting,

  /// 2：推流正在进行。成功推流后，会返回该状态。
  @JsonValue(2)
  rtmpStreamPublishStateRunning,

  /// 3：正在恢复推流。当 CDN 出现异常，或推流短暂中断时，SDK 会自动尝试恢复推流，并返回该状态。
  ///  如成功恢复推流，则进入状态 rtmpStreamPublishStateRunning(2)。
  ///  如服务器出错或 60 秒内未成功恢复，则进入状态 rtmpStreamPublishStateFailure(4)。如果觉得 60 秒太长，也可以主动尝试重连。
  @JsonValue(3)
  rtmpStreamPublishStateRecovering,

  /// 4：推流失败。失败后，你可以通过返回的错误码排查错误原因。
  @JsonValue(4)
  rtmpStreamPublishStateFailure,

  /// 5：SDK 正在与推流服务器和 CDN 服务器断开连接。当你调用 stopRtmpStream 方法正常结束推流时，SDK 会依次报告推流状态为 rtmpStreamPublishStateDisconnecting 、 rtmpStreamPublishStateIdle 。
  @JsonValue(5)
  rtmpStreamPublishStateDisconnecting,
}

/// @nodoc
extension RtmpStreamPublishStateExt on RtmpStreamPublishState {
  /// @nodoc
  static RtmpStreamPublishState fromValue(int value) {
    return $enumDecode(_$RtmpStreamPublishStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RtmpStreamPublishStateEnumMap[this]!;
  }
}

/// 推流状态改变的原因。
@JsonEnum(alwaysCreate: true)
enum RtmpStreamPublishReason {
  /// 0：推流成功。
  @JsonValue(0)
  rtmpStreamPublishReasonOk,

  /// 1：参数无效。请检查输入参数是否正确。
  @JsonValue(1)
  rtmpStreamPublishReasonInvalidArgument,

  /// 2：推流已加密，不能推流。
  @JsonValue(2)
  rtmpStreamPublishReasonEncryptedStreamNotAllowed,

  /// 3：推流超时未成功。
  @JsonValue(3)
  rtmpStreamPublishReasonConnectionTimeout,

  /// 4：推流服务器出现错误。
  @JsonValue(4)
  rtmpStreamPublishReasonInternalServerError,

  /// 5：CDN 服务器出现错误。
  @JsonValue(5)
  rtmpStreamPublishReasonRtmpServerError,

  /// 6：推流请求过于频繁。
  @JsonValue(6)
  rtmpStreamPublishReasonTooOften,

  /// 7：单个主播的推流地址数目达到上限 10。请删掉一些不用的推流地址再增加推流地址。
  @JsonValue(7)
  rtmpStreamPublishReasonReachLimit,

  /// 8：主播操作不属于自己的流。例如更新其他主播的流参数、停止其他主播的流。请检查 App 逻辑。
  @JsonValue(8)
  rtmpStreamPublishReasonNotAuthorized,

  /// 9：服务器未找到这个流。
  @JsonValue(9)
  rtmpStreamPublishReasonStreamNotFound,

  /// 10：推流地址格式有错误。请检查推流地址格式是否正确。
  @JsonValue(10)
  rtmpStreamPublishReasonFormatNotSupported,

  /// 11：用户角色不是主播，该用户无法使用推流功能。请检查你的应用代码逻辑。
  @JsonValue(11)
  rtmpStreamPublishReasonNotBroadcaster,

  /// 13：非转码推流情况下，调用了 updateRtmpTranscoding 方法更新转码属性。请检查你的应用代码逻辑。
  @JsonValue(13)
  rtmpStreamPublishReasonTranscodingNoMixStream,

  /// 14：主播的网络出错。
  @JsonValue(14)
  rtmpStreamPublishReasonNetDown,

  /// @nodoc
  @JsonValue(15)
  rtmpStreamPublishReasonInvalidAppid,

  /// 16：你的项目没有使用推流服务的权限。
  @JsonValue(16)
  rtmpStreamPublishReasonInvalidPrivilege,

  /// 100：推流已正常结束。当你结束推流后，SDK 会返回该值。
  @JsonValue(100)
  rtmpStreamUnpublishReasonOk,
}

/// @nodoc
extension RtmpStreamPublishReasonExt on RtmpStreamPublishReason {
  /// @nodoc
  static RtmpStreamPublishReason fromValue(int value) {
    return $enumDecode(_$RtmpStreamPublishReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RtmpStreamPublishReasonEnumMap[this]!;
  }
}

/// 旁路推流时发生的事件。
@JsonEnum(alwaysCreate: true)
enum RtmpStreamingEvent {
  /// 1: 旁路推流时，添加背景图或水印出错。
  @JsonValue(1)
  rtmpStreamingEventFailedLoadImage,

  /// 2: 该推流 URL 已用于推流。如果你想开始新的推流，请使用新的推流 URL。
  @JsonValue(2)
  rtmpStreamingEventUrlAlreadyInUse,

  /// 3: 功能不支持。
  @JsonValue(3)
  rtmpStreamingEventAdvancedFeatureNotSupport,

  /// 4: 预留参数。
  @JsonValue(4)
  rtmpStreamingEventRequestTooOften,
}

/// @nodoc
extension RtmpStreamingEventExt on RtmpStreamingEvent {
  /// @nodoc
  static RtmpStreamingEvent fromValue(int value) {
    return $enumDecode(_$RtmpStreamingEventEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RtmpStreamingEventEnumMap[this]!;
  }
}

/// 图像属性。
///
/// 用于设置直播视频的水印和背景图片的属性。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RtcImage implements AgoraSerializable {
  /// @nodoc
  const RtcImage(
      {this.url,
      this.x,
      this.y,
      this.width,
      this.height,
      this.zOrder,
      this.alpha});

  /// 直播视频上图片的 HTTP/HTTPS 地址。字符长度不得超过 1024 字节。
  @JsonKey(name: 'url')
  final String? url;

  /// 图片在视频画面上的 x 坐标 (px)，以输出视频画面的左上角为原点。
  @JsonKey(name: 'x')
  final int? x;

  /// 图片在视频画面上的 y 坐标 (px)，以输出视频画面的左上角为原点。
  @JsonKey(name: 'y')
  final int? y;

  /// 图片在视频画面上的宽度 (px)。
  @JsonKey(name: 'width')
  final int? width;

  /// 图片在视频画面上的高度 (px)。
  @JsonKey(name: 'height')
  final int? height;

  /// 水印或背景图的图层编号。使用水印数组添加单张或多张水印时，必须向 zOrder 传值，取值范围为 [1,255]，否则 SDK 会报错。其余情况， zOrder 可选传值，取值范围为 [0,255]，0 为默认值。0 代表图层的最下层，255 代表图层的最上层。
  @JsonKey(name: 'zOrder')
  final int? zOrder;

  /// 水印或背景图片的透明度。取值范围为 [0.0,1.0]：
  ///  0.0: 完全透明。
  ///  1.0:（默认）完全不透明。
  @JsonKey(name: 'alpha')
  final double? alpha;

  /// @nodoc
  factory RtcImage.fromJson(Map<String, dynamic> json) =>
      _$RtcImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RtcImageToJson(this);
}

/// 转码推流的高级功能配置。
///
/// 如需使用转码推流高级功能，请[联系销售](https://www.shengwang.cn/contact-sales/)。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LiveStreamAdvancedFeature implements AgoraSerializable {
  /// @nodoc
  const LiveStreamAdvancedFeature({this.featureName, this.opened});

  /// 转码推流高级功能的名称，包含 LBHQ（低码率的高清视频功能） 和 VEO（优化的视频编码器功能）。
  @JsonKey(name: 'featureName')
  final String? featureName;

  /// 是否启用转码推流的高级功能： true ：开启转码推流的高级功能。 false ：（默认）关闭转码推流的高级功能。
  @JsonKey(name: 'opened')
  final bool? opened;

  /// @nodoc
  factory LiveStreamAdvancedFeature.fromJson(Map<String, dynamic> json) =>
      _$LiveStreamAdvancedFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LiveStreamAdvancedFeatureToJson(this);
}

/// 网络连接状态。
@JsonEnum(alwaysCreate: true)
enum ConnectionStateType {
  /// 1: 网络连接断开。该状态表示 SDK 处于:
  ///  调用 joinChannel 加入频道前的初始化阶段。
  ///  或调用 leaveChannel 后的离开频道阶段。
  @JsonValue(1)
  connectionStateDisconnected,

  /// 2: 建立网络连接中。该状态表示 SDK 在调用 joinChannel 后正在与指定的频道建立连接。
  ///  如果成功加入频道，App 会收到 onConnectionStateChanged 回调，通知当前网络状态变成 connectionStateConnected。
  ///  建立连接后，SDK 还会初始化媒体，一切就绪后会回调 onJoinChannelSuccess 。
  @JsonValue(2)
  connectionStateConnecting,

  /// 3: 网络已连接。该状态表示用户已经加入频道，可以在频道内发布或订阅媒体流。如果因网络断开或切换而导致 SDK 与频道的连接中断，SDK 会自动重连，此时 App 会收到 onConnectionStateChanged 回调，通知当前网络状态变成 connectionStateReconnecting。
  @JsonValue(3)
  connectionStateConnected,

  /// 4: 重新建立网络连接中。该状态表示 SDK 之前曾加入过频道，但因网络等原因连接中断了，此时 SDK 会自动尝试重新接入频道。
  ///  如果 SDK 无法在 10 秒内重新加入频道，则 onConnectionLost 会被触发，SDK 会一直保持在 connectionStateReconnecting 的状态，并不断尝试重新加入频道。
  ///  如果 SDK 在断开连接后，20 分钟内还是没能重新加入频道，则应用程序会收到 onConnectionStateChanged 回调，通知 App 的网络状态进入 connectionStateFailed，SDK 停止尝试重连。
  @JsonValue(4)
  connectionStateReconnecting,

  /// 5: 网络连接失败。该状态表示 SDK 已不再尝试重新加入频道，需要调用 leaveChannel 离开频道。
  ///  如果用户还想重新加入频道，则需要再次调用 joinChannel 。
  ///  如果 SDK 因服务器端使用 RESTful API 禁止加入频道，则 App 会收到 onConnectionStateChanged 。
  @JsonValue(5)
  connectionStateFailed,
}

/// @nodoc
extension ConnectionStateTypeExt on ConnectionStateType {
  /// @nodoc
  static ConnectionStateType fromValue(int value) {
    return $enumDecode(_$ConnectionStateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ConnectionStateTypeEnumMap[this]!;
  }
}

/// 参与转码合流的每个主播的设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TranscodingUser implements AgoraSerializable {
  /// @nodoc
  const TranscodingUser(
      {this.uid,
      this.x,
      this.y,
      this.width,
      this.height,
      this.zOrder,
      this.alpha,
      this.audioChannel});

  /// 主播的用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 主播视频画面在输出视频画面的 x 坐标 (px)，以输出视频画面的左上角为原点。取值范围为[0,width]，width 为 LiveTranscoding 中设置的 width 。
  @JsonKey(name: 'x')
  final int? x;

  /// 主播视频画面在输出视频画面的 y 坐标 (px)，以输出视频画面的左上角为原点。取值范围为[0,height]，height 为 LiveTranscoding 中设置的 height 。
  @JsonKey(name: 'y')
  final int? y;

  /// 主播视频画面的宽 (px)。
  @JsonKey(name: 'width')
  final int? width;

  /// 主播视频画面的高 (px)。
  @JsonKey(name: 'height')
  final int? height;

  /// 如果取值小于 0 或大于 100，会返回错误 errInvalidArgument 。
  ///  支持将 zOrder 设置为 0。 主播视频画面的图层编号。取值范围为 [0,100]。
  ///  0:（默认）视频画面位于图层的最下层。
  ///  100: 视频画面位于图层的最上层。
  @JsonKey(name: 'zOrder')
  final int? zOrder;

  /// 主播视频画面的透明度。取值范围为 [0.0,1.0]。
  ///  0.0: 完全透明。
  ///  1.0:（默认）完全不透明。
  @JsonKey(name: 'alpha')
  final double? alpha;

  /// 取值不为 0 时，需要使用特殊的播放器。 主播音频在输出音频中占用的声道。默认值为 0，取值范围为 [0,5]： 0 : （推荐）默认混音设置，最多支持双声道，与主播上行音频相关。 1 : 主播音频在输出音频的 FL 声道。如果主播上行音频是多声道，声网服务器会先把多声道混音成单声道。 2 : 主播音频在输出音频的 FC 声道。如果主播上行音频是多声道，声网服务器会先把多声道混音成单声道。 3 : 主播音频在输出音频的 FR 声道。如果主播上行音频是多声道，声网服务器会先把多声道混音成单声道。 4 : 主播音频在输出音频的 BL 声道。如果主播上行音频是多声道，声网服务器会先把多声道混音成单声道。 5 : 主播音频在输出音频的 BR 声道。如果主播上行音频是多声道，声网服务器会先把多声道混音成单声道。 0xFF 或取值大于 5 : 该主播音频静音，声网服务器移除该主播的音频。
  @JsonKey(name: 'audioChannel')
  final int? audioChannel;

  /// @nodoc
  factory TranscodingUser.fromJson(Map<String, dynamic> json) =>
      _$TranscodingUserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranscodingUserToJson(this);
}

/// 旁路推流的转码属性。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LiveTranscoding implements AgoraSerializable {
  /// @nodoc
  const LiveTranscoding(
      {this.width,
      this.height,
      this.videoBitrate,
      this.videoFramerate,
      this.lowLatency,
      this.videoGop,
      this.videoCodecProfile,
      this.backgroundColor,
      this.videoCodecType,
      this.userCount,
      this.transcodingUsers,
      this.transcodingExtraInfo,
      this.metadata,
      this.watermark,
      this.watermarkCount,
      this.backgroundImage,
      this.backgroundImageCount,
      this.audioSampleRate,
      this.audioBitrate,
      this.audioChannels,
      this.audioCodecProfile,
      this.advancedFeatures,
      this.advancedFeatureCount});

  /// 推流视频的总宽度，默认值 360，单位为像素。
  ///  如果推视频流， width 取值范围为 [64,1920]。如果取值低于 64，声网服务器会自动调整为 64； 如果取值高于 1920，声网服务器会自动调整为 1920。
  ///  如果推音频流，请将 width 和 height 设为 0。
  @JsonKey(name: 'width')
  final int? width;

  /// 推流视频的总高度，默认值 640，单位为像素。
  ///  如果推视频流， height 取值范围为 [64,1080]。如果取值低于 64，声网服务器会自动调整为 64； 如果取值高于 1080，声网服务器会自动调整为 1080。
  ///  如果推音频流，请将 width 和 height 设为 0。
  @JsonKey(name: 'height')
  final int? height;

  /// 视频编码码率，单位为 Kbps。该参数无需设置，保留默认值 standardBitrate 即可，SDK 会根据你设定的视频分辨率和帧率自动匹配最合适的码率。有关视频分辨率和帧率的对应关系，详见[视频属性](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/video-profile#%E8%A7%86%E9%A2%91%E5%B1%9E%E6%80%A7%E5%8F%82%E8%80%83)。
  @JsonKey(name: 'videoBitrate')
  final int? videoBitrate;

  /// 用于旁路直播的输出视频的帧率。取值范围是 (0,30]，单位为 fps。15 fps 为默认值。 声网服务器会将高于 30 fps 的帧率统一调整为 30 fps。
  @JsonKey(name: 'videoFramerate')
  final int? videoFramerate;

  /// 弃用不建议使用。 低延时模式 true : 低延时，不保证画质。 false :（默认值）高延时，保证画质。
  @JsonKey(name: 'lowLatency')
  final bool? lowLatency;

  /// 用于旁路直播的输出视频的 GOP (Group of Pictures)。单位为帧。默认值为 30。
  @JsonKey(name: 'videoGop')
  final int? videoGop;

  /// 用于旁路直播的输出视频的编码规格。可以设置为 66、77 或 100，详见 VideoCodecProfileType 。 如果你把这个参数设为其他值，声网服务器会将其调整为默认值。
  @JsonKey(name: 'videoCodecProfile')
  final VideoCodecProfileType? videoCodecProfile;

  /// 用于旁路直播的输出视频的背景色，格式为 RGB 定义下的十六进制整数，不要带 # 号，如 0xFFB6C1 表示浅粉色。默认0x000000，黑色。
  @JsonKey(name: 'backgroundColor')
  final int? backgroundColor;

  /// 用于旁路直播的输出视频的编解码类型。详见 VideoCodecTypeForStream 。
  @JsonKey(name: 'videoCodecType')
  final VideoCodecTypeForStream? videoCodecType;

  /// 参与合图的用户数量，默认 0。取值范围为 [0,17]。
  @JsonKey(name: 'userCount')
  final int? userCount;

  /// 用于管理参与旁路直播的视频转码合图的用户。最多支持 17 人同时参与转码合图。详见 TranscodingUser 。
  @JsonKey(name: 'transcodingUsers')
  final List<TranscodingUser>? transcodingUsers;

  /// 预留参数：用户自定义的发送到旁路推流客户端的信息，用于填充 H264/H265 视频中 SEI 帧内容。长度限制：4096 字节。关于 SEI 的详细信息，详见 [SEI 帧相关问题](https://doc.shengwang.cn/faq/quality-issues/sei)。
  @JsonKey(name: 'transcodingExtraInfo')
  final String? transcodingExtraInfo;

  /// 发送给 CDN 客户端的 metadata。 弃用已废弃，不建议使用。
  @JsonKey(name: 'metadata')
  final String? metadata;

  /// 直播视频上的水印。图片格式需为 PNG。详见 RtcImage 。
  /// 你可以添加一个水印，或使用数组的方式添加多个水印。
  @JsonKey(name: 'watermark')
  final List<RtcImage>? watermark;

  /// 直播视频上的水印的数量。水印和背景图的总数量需大于等于 0 且小于等于 10。该参数与 watermark 搭配使用。
  @JsonKey(name: 'watermarkCount')
  final int? watermarkCount;

  /// 直播视频上的背景图。图片格式需为 PNG。详见 RtcImage 。
  /// 你可以添加一张背景图，或使用数组的方式添加多张背景图。该参数与 backgroundImageCount 搭配使用。
  @JsonKey(name: 'backgroundImage')
  final List<RtcImage>? backgroundImage;

  /// 直播视频上的背景图的数量。水印和背景图的总数量需大于等于 0 且小于等于 10。该参数与 backgroundImage 搭配使用。
  @JsonKey(name: 'backgroundImageCount')
  final int? backgroundImageCount;

  /// 用于旁路推流的输出媒体流的音频采样率 (Hz)，详见 AudioSampleRateType 。
  @JsonKey(name: 'audioSampleRate')
  final AudioSampleRateType? audioSampleRate;

  /// 用于旁路直播的输出音频的码率。单位为 Kbps，默认值为 48，最大值为 128。
  @JsonKey(name: 'audioBitrate')
  final int? audioBitrate;

  /// 用于旁路直播的输出音频的声道数，默认值为 1。取值范围为 [1,5] 中的整型，建议取 1 或 2。3、4、5 需要特殊播放器支持：
  ///  1: （默认）单声道
  ///  2: 双声道
  ///  3: 三声道
  ///  4: 四声道
  ///  5: 五声道
  @JsonKey(name: 'audioChannels')
  final int? audioChannels;

  /// 用于旁路直播输出音频的编码规格。详见 AudioCodecProfileType 。
  @JsonKey(name: 'audioCodecProfile')
  final AudioCodecProfileType? audioCodecProfile;

  /// 转码推流的高级功能。详见 LiveStreamAdvancedFeature 。
  @JsonKey(name: 'advancedFeatures')
  final List<LiveStreamAdvancedFeature>? advancedFeatures;

  /// 开启的高级功能数量。默认值为 0。
  @JsonKey(name: 'advancedFeatureCount')
  final int? advancedFeatureCount;

  /// @nodoc
  factory LiveTranscoding.fromJson(Map<String, dynamic> json) =>
      _$LiveTranscodingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LiveTranscodingToJson(this);
}

/// 参与本地合图的视频流。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TranscodingVideoStream implements AgoraSerializable {
  /// @nodoc
  const TranscodingVideoStream(
      {this.sourceType,
      this.remoteUserUid,
      this.imageUrl,
      this.mediaPlayerId,
      this.x,
      this.y,
      this.width,
      this.height,
      this.zOrder,
      this.alpha,
      this.mirror});

  /// 参与本地合图的视频源类型。详见 VideoSourceType 。
  @JsonKey(name: 'sourceType')
  final VideoSourceType? sourceType;

  /// 远端用户 ID。 请仅在参与本地合图的视频源类型为 videoSourceRemote 时，使用该参数。
  @JsonKey(name: 'remoteUserUid')
  final int? remoteUserUid;

  /// 请仅在参与本地合图的视频源类型为图片时，使用该参数。 本地图片的路径。 示例路径：
  ///  Android: /storage/emulated/0/Pictures/image.png
  ///  iOS: /var/mobile/Containers/Data/Application/<APP-UUID>/Documents/image.png
  ///  macOS: ~/Pictures/image.png
  ///  Windows: C:\\Users\\{username}\\Pictures\\image.png
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  /// （可选）媒体播放器 ID。当你将 sourceType 设置为 videoSourceMediaPlayer 时，需要设置该参数。
  @JsonKey(name: 'mediaPlayerId')
  final int? mediaPlayerId;

  /// 参与本地合图的视频的左上角相对于合图画布左上角（原点）的横向位移。
  @JsonKey(name: 'x')
  final int? x;

  /// 参与本地合图的视频的左上角相对于合图画布左上角（原点）的纵向位移。
  @JsonKey(name: 'y')
  final int? y;

  /// 参与本地合图的视频的宽度 (px)。
  @JsonKey(name: 'width')
  final int? width;

  /// 参与本地合图的视频的高度 (px)。
  @JsonKey(name: 'height')
  final int? height;

  /// 参与本地合图的视频所属的图层的编号。取值范围为 [0,100]。
  ///  0:（默认值）图层在最下层。
  ///  100: 图层在最上层。
  @JsonKey(name: 'zOrder')
  final int? zOrder;

  /// 参与本地合图的视频的透明度。取值范围为 [0.0,1.0]。 0.0 表示透明度为完全透明，1.0 表示透明度为完全不透明。
  @JsonKey(name: 'alpha')
  final double? alpha;

  /// 该参数仅对视频源类型为摄像头的视频生效。 是否对参与本地合图的的视频进行镜像： true : 将参与本地合图的视频进行镜像。 false : （默认值）不将参与本地合图的视频进行镜像。
  @JsonKey(name: 'mirror')
  final bool? mirror;

  /// @nodoc
  factory TranscodingVideoStream.fromJson(Map<String, dynamic> json) =>
      _$TranscodingVideoStreamFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranscodingVideoStreamToJson(this);
}

/// 本地合图的配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LocalTranscoderConfiguration implements AgoraSerializable {
  /// @nodoc
  const LocalTranscoderConfiguration(
      {this.streamCount,
      this.videoInputStreams,
      this.videoOutputConfiguration,
      this.syncWithPrimaryCamera});

  /// 参与本地合图的视频流的数量。
  @JsonKey(name: 'streamCount')
  final int? streamCount;

  /// 参与本地合图的视频流。详见 TranscodingVideoStream 。
  @JsonKey(name: 'videoInputStreams')
  final List<TranscodingVideoStream>? videoInputStreams;

  /// 本地合图后，合图视频的编码配置。详见 VideoEncoderConfiguration 。
  @JsonKey(name: 'videoOutputConfiguration')
  final VideoEncoderConfiguration? videoOutputConfiguration;

  /// @nodoc
  @JsonKey(name: 'syncWithPrimaryCamera')
  final bool? syncWithPrimaryCamera;

  /// @nodoc
  factory LocalTranscoderConfiguration.fromJson(Map<String, dynamic> json) =>
      _$LocalTranscoderConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocalTranscoderConfigurationToJson(this);
}

/// 本地合图错误代码。
@JsonEnum(alwaysCreate: true)
enum VideoTranscoderError {
  /// 1：指定的视频源未开始进行视频采集，你需要为其创建视频轨道并开始视频采集。
  @JsonValue(1)
  vtErrVideoSourceNotReady,

  /// 2：视频源类型无效，你需要重新指定支持的视频源类型。
  @JsonValue(2)
  vtErrInvalidVideoSourceType,

  /// 3：图片路径无效，你需要重新指定正确的图片路径。
  @JsonValue(3)
  vtErrInvalidImagePath,

  /// 4：图片格式无效，需确保图片格式为 PNG、JPEG 或 GIF 中的一种。
  @JsonValue(4)
  vtErrUnsupportImageFormat,

  /// 5：合图后的视频编码分辨率无效。
  @JsonValue(5)
  vtErrInvalidLayout,

  /// 20：内部未知错误。
  @JsonValue(20)
  vtErrInternal,
}

/// @nodoc
extension VideoTranscoderErrorExt on VideoTranscoderError {
  /// @nodoc
  static VideoTranscoderError fromValue(int value) {
    return $enumDecode(_$VideoTranscoderErrorEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoTranscoderErrorEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MixedAudioStream implements AgoraSerializable {
  /// @nodoc
  const MixedAudioStream(
      {this.sourceType, this.remoteUserUid, this.channelId, this.trackId});

  /// @nodoc
  @JsonKey(name: 'sourceType')
  final AudioSourceType? sourceType;

  /// @nodoc
  @JsonKey(name: 'remoteUserUid')
  final int? remoteUserUid;

  /// @nodoc
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// @nodoc
  @JsonKey(name: 'trackId')
  final int? trackId;

  /// @nodoc
  factory MixedAudioStream.fromJson(Map<String, dynamic> json) =>
      _$MixedAudioStreamFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MixedAudioStreamToJson(this);
}

/// 本地音频合流配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LocalAudioMixerConfiguration implements AgoraSerializable {
  /// @nodoc
  const LocalAudioMixerConfiguration(
      {this.streamCount, this.audioInputStreams, this.syncWithLocalMic});

  /// 在本地进行合流的音频流数量。
  @JsonKey(name: 'streamCount')
  final int? streamCount;

  /// 在本地进行合流的音频源。详见 MixedAudioStream 。
  @JsonKey(name: 'audioInputStreams')
  final List<MixedAudioStream>? audioInputStreams;

  /// 合流后的音频流是否使用本地麦克风采集的音频帧时间戳： true ：（默认）使用本地麦克风采集的音频帧时间戳。如果要所有本地采集的音频流保持同步，你可以将参数设置为该值。 false ：不使用本地麦克风采集的音频帧时间戳，SDK 会采用合流的音频帧被构建时的时间戳。
  @JsonKey(name: 'syncWithLocalMic')
  final bool? syncWithLocalMic;

  /// @nodoc
  factory LocalAudioMixerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$LocalAudioMixerConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocalAudioMixerConfigurationToJson(this);
}

/// Last mile 网络探测配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LastmileProbeConfig implements AgoraSerializable {
  /// @nodoc
  const LastmileProbeConfig(
      {this.probeUplink,
      this.probeDownlink,
      this.expectedUplinkBitrate,
      this.expectedDownlinkBitrate});

  /// 是否探测上行网络。有些用户，如直播频道中的普通观众，不需要进行网络探测: true : 探测上行网络。 false : 不探测上行网络。
  @JsonKey(name: 'probeUplink')
  final bool? probeUplink;

  /// 是否探测下行网络： true : 探测下行网络。 false : 不探测下行网络。
  @JsonKey(name: 'probeDownlink')
  final bool? probeDownlink;

  /// 用户期望的最高发送码率，单位为 bps，范围为 [100000,5000000]。建议参考 setVideoEncoderConfiguration 中的码率值设置该参数的值。
  @JsonKey(name: 'expectedUplinkBitrate')
  final int? expectedUplinkBitrate;

  /// 用户期望的最高接收码率，单位为 bps，范围为 [100000,5000000]。
  @JsonKey(name: 'expectedDownlinkBitrate')
  final int? expectedDownlinkBitrate;

  /// @nodoc
  factory LastmileProbeConfig.fromJson(Map<String, dynamic> json) =>
      _$LastmileProbeConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LastmileProbeConfigToJson(this);
}

/// Last mile 质量探测结果的状态。
@JsonEnum(alwaysCreate: true)
enum LastmileProbeResultState {
  /// 1: 表示本次 last mile 质量探测的结果是完整的。
  @JsonValue(1)
  lastmileProbeResultComplete,

  /// 2: 表示本次 last mile 质量探测未进行带宽预测，因此结果不完整。一个可能的原因是测试资源暂时受限。
  @JsonValue(2)
  lastmileProbeResultIncompleteNoBwe,

  /// 3: 未进行 last mile 质量探测。一个可能的原因是网络连接中断。
  @JsonValue(3)
  lastmileProbeResultUnavailable,
}

/// @nodoc
extension LastmileProbeResultStateExt on LastmileProbeResultState {
  /// @nodoc
  static LastmileProbeResultState fromValue(int value) {
    return $enumDecode(_$LastmileProbeResultStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LastmileProbeResultStateEnumMap[this]!;
  }
}

/// 上行或下行 Last mile 网络质量探测结果。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LastmileProbeOneWayResult implements AgoraSerializable {
  /// @nodoc
  const LastmileProbeOneWayResult(
      {this.packetLossRate, this.jitter, this.availableBandwidth});

  /// 丢包率。
  @JsonKey(name: 'packetLossRate')
  final int? packetLossRate;

  /// 网络抖动 (ms)。
  @JsonKey(name: 'jitter')
  final int? jitter;

  /// 可用网络带宽预估 (bps)。
  @JsonKey(name: 'availableBandwidth')
  final int? availableBandwidth;

  /// @nodoc
  factory LastmileProbeOneWayResult.fromJson(Map<String, dynamic> json) =>
      _$LastmileProbeOneWayResultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LastmileProbeOneWayResultToJson(this);
}

/// 上下行 Last mile 网络质量探测结果。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LastmileProbeResult implements AgoraSerializable {
  /// @nodoc
  const LastmileProbeResult(
      {this.state, this.uplinkReport, this.downlinkReport, this.rtt});

  /// Last mile 质量探测结果的状态。详见: LastmileProbeResultState 。
  @JsonKey(name: 'state')
  final LastmileProbeResultState? state;

  /// 上行网络质量报告。详见 LastmileProbeOneWayResult 。
  @JsonKey(name: 'uplinkReport')
  final LastmileProbeOneWayResult? uplinkReport;

  /// 下行网络质量报告。详见 LastmileProbeOneWayResult 。
  @JsonKey(name: 'downlinkReport')
  final LastmileProbeOneWayResult? downlinkReport;

  /// 往返时延 (ms)。
  @JsonKey(name: 'rtt')
  final int? rtt;

  /// @nodoc
  factory LastmileProbeResult.fromJson(Map<String, dynamic> json) =>
      _$LastmileProbeResultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LastmileProbeResultToJson(this);
}

/// 网络连接状态发生变化的原因。
@JsonEnum(alwaysCreate: true)
enum ConnectionChangedReasonType {
  /// 0: 建立网络连接中。
  @JsonValue(0)
  connectionChangedConnecting,

  /// 1: 成功加入频道。
  @JsonValue(1)
  connectionChangedJoinSuccess,

  /// 2: 网络连接中断。
  @JsonValue(2)
  connectionChangedInterrupted,

  /// 3: 网络连接被服务器禁止。例如，当用户被踢出频道时，会返回该状态。
  @JsonValue(3)
  connectionChangedBannedByServer,

  /// 4: 加入频道失败。SDK 在尝试加入频道 20 分钟后仍未能加入频道，会返回该状态并不再尝试重连。请提示用户尝试切换网络后重新加入频道。
  @JsonValue(4)
  connectionChangedJoinFailed,

  /// 5: 离开频道。
  @JsonValue(5)
  connectionChangedLeaveChannel,

  /// 6: App ID 无效。请使用有效的 APP ID 重新加入频道，并确保你使用的 App ID 与在声网控制台生成的一致。
  @JsonValue(6)
  connectionChangedInvalidAppId,

  /// 7: 频道名无效。请更换有效的频道名重新加入频道。有效的频道名为长度在 64 字节以内的字符串。以下为支持的字符集范围（共 89 个字符）:
  @JsonValue(7)
  connectionChangedInvalidChannelName,

  /// 8: Token 无效。一般有以下原因：
  ///  你的项目启用了 App Certificate，但加入频道未使用 Token。
  ///  在调用 joinChannel 加入频道时指定的用户 ID 与生成 Token 时传入的用户 ID 不一致。
  ///  生成的 Token 和加入频道使用的 Token 不一致。 请确保：
  ///  当你的项目启用了 App Certificate 时，使用 Token 加入频道。
  ///  生成 Token 时指定的用户 ID 与加入频道时使用的用户 ID 一致，
  ///  生成的 Token 和加入频道使用的 Token 一致。
  @JsonValue(8)
  connectionChangedInvalidToken,

  /// 9: 当前使用的 Token 已过期。请重新在你的服务端生成 Token，然后用新的 Token 重新加入频道。
  @JsonValue(9)
  connectionChangedTokenExpired,

  /// 10: 此用户被服务器禁止。一般有以下原因：
  ///  用户已进入频道，再次调用加入频道的 API，例如 joinChannel ，会返回此状态。停止调用该方法即可。
  ///  用户在进行通话测试时尝试加入频道。等待通话测试结束后再加入频道即可。
  @JsonValue(10)
  connectionChangedRejectedByServer,

  /// 11: 由于设置了代理服务器，SDK 尝试重连。
  @JsonValue(11)
  connectionChangedSettingProxyServer,

  /// 12: 更新 Token 引起网络连接状态改变。
  @JsonValue(12)
  connectionChangedRenewToken,

  /// 13: 客户端 IP 地址变更。如多次收到该状态码，请提示用户更换网络后尝试重新加入频道。
  @JsonValue(13)
  connectionChangedClientIpAddressChanged,

  /// 14: SDK 和服务器连接保活超时，进入自动重连状态。
  @JsonValue(14)
  connectionChangedKeepAliveTimeout,

  /// 15: 重新加入频道成功。
  @JsonValue(15)
  connectionChangedRejoinSuccess,

  /// 16: SDK 和服务器失去连接。
  @JsonValue(16)
  connectionChangedLost,

  /// 17: 连接状态变化由回声测试引起。
  @JsonValue(17)
  connectionChangedEchoTest,

  /// 18: 本地 IP 地址被用户更改。
  @JsonValue(18)
  connectionChangedClientIpAddressChangedByUser,

  /// 19: 使用相同的 UID 从不同的设备加入同一频道。
  @JsonValue(19)
  connectionChangedSameUidLogin,

  /// 20: 频道内主播人数已达上限。
  @JsonValue(20)
  connectionChangedTooManyBroadcasters,

  /// @nodoc
  @JsonValue(21)
  connectionChangedLicenseValidationFailure,

  /// @nodoc
  @JsonValue(22)
  connectionChangedCertificationVeryfyFailure,

  /// @nodoc
  @JsonValue(23)
  connectionChangedStreamChannelNotAvailable,

  /// @nodoc
  @JsonValue(24)
  connectionChangedInconsistentAppid,
}

/// @nodoc
extension ConnectionChangedReasonTypeExt on ConnectionChangedReasonType {
  /// @nodoc
  static ConnectionChangedReasonType fromValue(int value) {
    return $enumDecode(_$ConnectionChangedReasonTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ConnectionChangedReasonTypeEnumMap[this]!;
  }
}

/// 切换用户角色失败的原因。
@JsonEnum(alwaysCreate: true)
enum ClientRoleChangeFailedReason {
  /// 1: 频道内主播人数达到上限。 该枚举仅在开启 128 人功能后报告。主播人数的上限根据开启 128 人功能时实际配置的人数而定。
  @JsonValue(1)
  clientRoleChangeFailedTooManyBroadcasters,

  /// 2: 请求被服务端拒绝。建议提示用户重新尝试切换用户角色。
  @JsonValue(2)
  clientRoleChangeFailedNotAuthorized,

  /// 3: 请求超时。建议提示用户检查网络连接状况后重新尝试切换用户角色。 废弃：该枚举值自 v4.4.0 起废弃，不建议使用。
  @JsonValue(3)
  clientRoleChangeFailedRequestTimeOut,

  /// 4: 网络连接断开。可根据 onConnectionStateChanged 报告的 reason ，排查网络连接失败的具体原因。 废弃：该枚举值自 v4.4.0 起废弃，不建议使用。
  @JsonValue(4)
  clientRoleChangeFailedConnectionFailed,
}

/// @nodoc
extension ClientRoleChangeFailedReasonExt on ClientRoleChangeFailedReason {
  /// @nodoc
  static ClientRoleChangeFailedReason fromValue(int value) {
    return $enumDecode(_$ClientRoleChangeFailedReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ClientRoleChangeFailedReasonEnumMap[this]!;
  }
}

/// 网络连接类型。
@JsonEnum(alwaysCreate: true)
enum NetworkType {
  /// -1: 网络连接类型未知。
  @JsonValue(-1)
  networkTypeUnknown,

  /// 0: 网络连接已断开。
  @JsonValue(0)
  networkTypeDisconnected,

  /// 1: 网络类型为 LAN。
  @JsonValue(1)
  networkTypeLan,

  /// 2: 网络类型为 Wi-Fi（包含热点）。
  @JsonValue(2)
  networkTypeWifi,

  /// 3: 网络类型为 2G 移动网络。
  @JsonValue(3)
  networkTypeMobile2g,

  /// 4: 网络类型为 3G 移动网络。
  @JsonValue(4)
  networkTypeMobile3g,

  /// 5: 网络类型为 4G 移动网络。
  @JsonValue(5)
  networkTypeMobile4g,

  /// 6: 网络类型为 5G 移动网络。
  @JsonValue(6)
  networkTypeMobile5g,
}

/// @nodoc
extension NetworkTypeExt on NetworkType {
  /// @nodoc
  static NetworkType fromValue(int value) {
    return $enumDecode(_$NetworkTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$NetworkTypeEnumMap[this]!;
  }
}

/// 视图设置模式。
@JsonEnum(alwaysCreate: true)
enum VideoViewSetupMode {
  /// 0：(默认) 清除已添加的所有视图、替换为新的视图。
  @JsonValue(0)
  videoViewSetupReplace,

  /// 1：增加一个视图。
  @JsonValue(1)
  videoViewSetupAdd,

  /// 2：删除一个视图。 当你不再需要使用某个视图时，建议及时设置 setupMode 为 videoViewSetupRemove 删除视图，否则可能会导致渲染资源泄漏。
  @JsonValue(2)
  videoViewSetupRemove,
}

/// @nodoc
extension VideoViewSetupModeExt on VideoViewSetupMode {
  /// @nodoc
  static VideoViewSetupMode fromValue(int value) {
    return $enumDecode(_$VideoViewSetupModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoViewSetupModeEnumMap[this]!;
  }
}

/// 视频画布对象的属性。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoCanvas implements AgoraSerializable {
  /// @nodoc
  const VideoCanvas(
      {this.uid,
      this.subviewUid,
      this.view,
      this.backgroundColor,
      this.renderMode,
      this.mirrorMode,
      this.setupMode,
      this.sourceType,
      this.mediaPlayerId,
      this.cropArea,
      this.enableAlphaMask,
      this.position});

  /// 对于 Android 和 iOS 平台，当视频源为合图视频流 (videoSourceTranscoded) 时，该参数表示发布合图视频流的用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 发布某一路合图子视频流的用户 ID。
  @JsonKey(name: 'subviewUid')
  final int? subviewUid;

  /// 视频显示窗口。 在一个 VideoCanvas 中，你只能选择 view 或 surfaceTexture 其中一个进行设置，如果同时设置，只有 view 中的设置会生效。
  @JsonKey(name: 'view', readValue: readIntPtr)
  final int? view;

  /// 视频画布的背景颜色，格式为 RGBA。默认值为 0x00000000，代表黑色。
  @JsonKey(name: 'backgroundColor')
  final int? backgroundColor;

  /// 视频渲染模式，详见 RenderModeType 。
  @JsonKey(name: 'renderMode')
  final RenderModeType? renderMode;

  /// 视图镜像模式，详见 VideoMirrorModeType 。
  ///  本地视图镜像模式：如果你使用前置摄像头，默认启动本地视图镜像模式；如果你使用后置摄像头，默认关闭本地视图镜像模式。
  ///  远端用户视图镜像模式：默认关闭远端用户的镜像模式。
  @JsonKey(name: 'mirrorMode')
  final VideoMirrorModeType? mirrorMode;

  /// 视图设置模式。详见 VideoViewSetupMode 。
  @JsonKey(name: 'setupMode')
  final VideoViewSetupMode? setupMode;

  /// 视频源的类型，详见 VideoSourceType 。
  @JsonKey(name: 'sourceType')
  final VideoSourceType? sourceType;

  /// 媒体播放器 ID。可通过 getMediaPlayerId 获取。
  @JsonKey(name: 'mediaPlayerId')
  final int? mediaPlayerId;

  /// （可选）视频帧的展示区域，详见 Rectangle 。其中， width 和 height 表示该区域的视频像素宽度和高度。默认值为空值 (宽或高为 0)，表示展示实际分辨率的视频帧。
  @JsonKey(name: 'cropArea')
  final Rectangle? cropArea;

  /// 仅当发送端开启 Alpha 传输功能时，接收端才能渲染 Alpha 通道的信息。
  ///  如需开启 Alpha 传输功能，请[联系技术支持](https://ticket.shengwang.cn/)。 （可选）是否开启 Alpha 遮罩渲染： true ：开启 Alpha 遮罩渲染。 false ：（默认）关闭 Alpha 遮罩渲染。 Alpha 遮罩渲染可以创建具有透明效果的图像，还可以提取视频中的人像。与其他方法结合使用时，可以实现人像画中画、添加水印等效果。
  @JsonKey(name: 'enableAlphaMask')
  final bool? enableAlphaMask;

  /// 视频帧在视频链路中的位置。详见 VideoModulePosition 。
  @JsonKey(name: 'position')
  final VideoModulePosition? position;

  /// @nodoc
  factory VideoCanvas.fromJson(Map<String, dynamic> json) =>
      _$VideoCanvasFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoCanvasToJson(this);
}

/// 美颜选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BeautyOptions implements AgoraSerializable {
  /// @nodoc
  const BeautyOptions(
      {this.lighteningContrastLevel,
      this.lighteningLevel,
      this.smoothnessLevel,
      this.rednessLevel,
      this.sharpnessLevel});

  /// 对比度，常与 lighteningLevel 搭配使用。取值越大，明暗对比程度越大。详见 LighteningContrastLevel 。
  @JsonKey(name: 'lighteningContrastLevel')
  final LighteningContrastLevel? lighteningContrastLevel;

  /// 美白程度，取值范围为 [0.0,1.0]，其中 0.0 表示原始亮度，默认值为 0.0。取值越大，美白程度越大。
  @JsonKey(name: 'lighteningLevel')
  final double? lighteningLevel;

  /// 磨皮程度，取值范围为 [0.0,1.0]，其中 0.0 表示原始磨皮程度，默认值为 0.0。取值越大，磨皮程度越大。
  @JsonKey(name: 'smoothnessLevel')
  final double? smoothnessLevel;

  /// 红润度，取值范围为 [0.0,1.0]，其中 0.0 表示原始红润度，默认值为 0.0。取值越大，红润程度越大。
  @JsonKey(name: 'rednessLevel')
  final double? rednessLevel;

  /// 锐化程度，取值范围为 [0.0,1.0]，其中 0.0 表示原始锐度，默认值为 0.0。取值越大，锐化程度越大。
  @JsonKey(name: 'sharpnessLevel')
  final double? sharpnessLevel;

  /// @nodoc
  factory BeautyOptions.fromJson(Map<String, dynamic> json) =>
      _$BeautyOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BeautyOptionsToJson(this);
}

/// 亮度明暗对比度。
@JsonEnum(alwaysCreate: true)
enum LighteningContrastLevel {
  /// 0：低对比度。
  @JsonValue(0)
  lighteningContrastLow,

  /// 1：正常对比度。
  @JsonValue(1)
  lighteningContrastNormal,

  /// 2：高对比度。
  @JsonValue(2)
  lighteningContrastHigh,
}

/// @nodoc
extension LighteningContrastLevelExt on LighteningContrastLevel {
  /// @nodoc
  static LighteningContrastLevel fromValue(int value) {
    return $enumDecode(_$LighteningContrastLevelEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LighteningContrastLevelEnumMap[this]!;
  }
}

/// 滤镜效果选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FaceShapeAreaOptions implements AgoraSerializable {
  /// @nodoc
  const FaceShapeAreaOptions({this.shapeArea, this.shapeIntensity});

  /// 美型部位，详见 FaceShapeArea 。
  @JsonKey(name: 'shapeArea')
  final FaceShapeArea? shapeArea;

  /// 修饰力度。各部位的修饰力度定义（包括修饰的方向、范围、预设值等）有所不同，详见 FaceShapeArea 。
  @JsonKey(name: 'shapeIntensity')
  final int? shapeIntensity;

  /// @nodoc
  factory FaceShapeAreaOptions.fromJson(Map<String, dynamic> json) =>
      _$FaceShapeAreaOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FaceShapeAreaOptionsToJson(this);
}

/// 选择需要调整的具体美型区域。
///
/// 自从 自 v4.4.0 版本新增。
@JsonEnum(alwaysCreate: true)
enum FaceShapeArea {
  /// （-1）：默认值，表示无效区域，美型效果不生效。
  @JsonValue(-1)
  faceShapeAreaNone,

  /// （100）：头部区域，用于实现小头效果。取值范围为 [0, 100]，默认值为 50。数值越大，调整越明显。
  @JsonValue(100)
  faceShapeAreaHeadscale,

  /// （101）：额头区域，用于调整发际线高度。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(101)
  faceShapeAreaForehead,

  /// （102）：脸部轮廓区域，用于实现瘦脸效果。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(102)
  faceShapeAreaFacecontour,

  /// （103）：脸部长度区域，用于拉长脸部。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(103)
  faceShapeAreaFacelength,

  /// （104）：脸部宽度区域，用于实现窄脸效果。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(104)
  faceShapeAreaFacewidth,

  /// （105）：颧骨区域，用于调整颧骨宽度。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(105)
  faceShapeAreaCheekbone,

  /// （106）：面颊区域，用于调整面颊宽度。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(106)
  faceShapeAreaCheek,

  /// （107）：下颌骨区域，用于调整下颌骨宽度。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(107)
  faceShapeAreaMandible,

  /// （108）：下巴区域，用于调整下巴长度。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(108)
  faceShapeAreaChin,

  /// （200）：眼睛区域，用于实现大眼效果。取值范围为 [0, 100]，默认值为 50。数值越大，调整越明显。
  @JsonValue(200)
  faceShapeAreaEyescale,

  /// （201）：眼距区域，用于调整两眼间距。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(201)
  faceShapeAreaEyedistance,

  /// （202）：眼睛位置区域，用于调整眼睛整体位置。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(202)
  faceShapeAreaEyeposition,

  /// （203）：下眼睑区域，用于调整下眼睑形态。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(203)
  faceShapeAreaLowereyelid,

  /// （204）：瞳孔区域，用于调整瞳孔大小。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(204)
  faceShapeAreaEyepupils,

  /// （205）：内眼角区域，用于调整内眼角形态。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(205)
  faceShapeAreaEyeinnercorner,

  /// （206）：外眼角区域，用于调整外眼角形态。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(206)
  faceShapeAreaEyeoutercorner,

  /// （300）：鼻子长度区域，用于拉长鼻子。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(300)
  faceShapeAreaNoselength,

  /// （301）：鼻子宽度区域，用于实现瘦鼻效果。取值范围为 [0, 100]，默认值为 0。数值越大，瘦鼻效果越明显。
  @JsonValue(301)
  faceShapeAreaNosewidth,

  /// （302）：鼻翼区域，用于调整鼻翼宽度。取值范围为 [0, 100]，默认值为 10。数值越大，调整越明显。
  @JsonValue(302)
  faceShapeAreaNosewing,

  /// （303）：鼻根区域，用于调整鼻根高度。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(303)
  faceShapeAreaNoseroot,

  /// （304）：鼻梁区域，用于调整鼻梁高度。取值范围为 [0, 100]，默认值为 50。数值越大，调整越明显。
  @JsonValue(304)
  faceShapeAreaNosebridge,

  /// （305）：鼻尖区域，用于调整鼻尖形态。取值范围为 [0, 100]，默认值为 50。数值越大，调整越明显。
  @JsonValue(305)
  faceShapeAreaNosetip,

  /// （306）：整体鼻子区域，用于统一调整鼻部形态。取值范围为 [-100, 100]，默认值为 50。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(306)
  faceShapeAreaNosegeneral,

  /// （400）：嘴巴区域，用于实现大嘴效果。取值范围为 [-100, 100]，默认值为 20。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(400)
  faceShapeAreaMouthscale,

  /// （401）：嘴巴位置区域，用于调整嘴巴整体位置。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(401)
  faceShapeAreaMouthposition,

  /// （402）：嘴角微笑区域，用于调整嘴角上扬程度。取值范围为 [0, 1]，默认值为 0。数值越大，调整越明显。
  @JsonValue(402)
  faceShapeAreaMouthsmile,

  /// （403）：唇形区域，用于调整唇部形态。取值范围为 [0, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(403)
  faceShapeAreaMouthlip,

  /// （500）：眉毛位置区域，用于调整眉毛整体位置。取值范围为 [-100, 100]，默认值为 0。绝对值越大，调整越明显，负值表示相反方向。
  @JsonValue(500)
  faceShapeAreaEyebrowposition,

  /// （501）：眉毛粗细区域，用于调整眉毛粗细。取值范围为 [-100, 100]，默认值为 0。数值越大，调整越明显。
  @JsonValue(501)
  faceShapeAreaEyebrowthickness,
}

/// @nodoc
extension FaceShapeAreaExt on FaceShapeArea {
  /// @nodoc
  static FaceShapeArea fromValue(int value) {
    return $enumDecode(_$FaceShapeAreaEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FaceShapeAreaEnumMap[this]!;
  }
}

/// 美型风格选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FaceShapeBeautyOptions implements AgoraSerializable {
  /// @nodoc
  const FaceShapeBeautyOptions({this.shapeStyle, this.styleIntensity});

  /// 美型风格，详见 FaceShapeBeautyStyle 。
  @JsonKey(name: 'shapeStyle')
  final FaceShapeBeautyStyle? shapeStyle;

  /// 美型风格强度，取值范围为 [0,100]，其中默认值为 0.0，表示无美型效果。取值越大，修饰部位的改变越明显。
  @JsonKey(name: 'styleIntensity')
  final int? styleIntensity;

  /// @nodoc
  factory FaceShapeBeautyOptions.fromJson(Map<String, dynamic> json) =>
      _$FaceShapeBeautyOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FaceShapeBeautyOptionsToJson(this);
}

/// 美型风格妆特效选项。
///
/// 自从 自 v4.4.0 版本新增。
@JsonEnum(alwaysCreate: true)
enum FaceShapeBeautyStyle {
  /// （0）：（默认）女性风格妆特效。
  @JsonValue(0)
  faceShapeBeautyStyleFemale,

  /// （1）：男性风格妆特效。
  @JsonValue(1)
  faceShapeBeautyStyleMale,

  /// （2）：自然风格妆特效，仅对面部特征进行最小调整。
  @JsonValue(2)
  faceShapeBeautyStyleNatural,
}

/// @nodoc
extension FaceShapeBeautyStyleExt on FaceShapeBeautyStyle {
  /// @nodoc
  static FaceShapeBeautyStyle fromValue(int value) {
    return $enumDecode(_$FaceShapeBeautyStyleEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FaceShapeBeautyStyleEnumMap[this]!;
  }
}

/// 滤镜效果选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FilterEffectOptions implements AgoraSerializable {
  /// @nodoc
  const FilterEffectOptions({this.path, this.strength});

  /// 3D 立方体贴图文件的本地绝对路径，该文件用于实现自定义滤镜效果。引用的 .cube 文件必须严格遵循立方体查找表（Cube LUT）规范，否则滤镜效果无法生效。以下为 .cube 文件的示例： LUT_3D_SIZE 32
  /// 0.0039215689 0 0.0039215682
  /// 0.0086021447 0.0037950677 0
  /// ...
  /// 0.0728652592 0.0039215689 0
  ///  立方体贴图文件首行的 LUT_3D_SIZE 标识符表示三维查找表的尺寸，滤镜效果的 LUT 尺寸目前仅支持设为 32。
  ///  SDK 提供了一个内置的 built_in_whiten_filter.cube 文件，传入该文件的绝对路径可实现美白滤镜效果。
  @JsonKey(name: 'path')
  final String? path;

  /// 滤镜效果强度，取值范围为 [0.0,1.0]，其中 0.0 表示无滤镜效果，默认值为 0.5。取值越大，滤镜效果越强。
  @JsonKey(name: 'strength')
  final double? strength;

  /// @nodoc
  factory FilterEffectOptions.fromJson(Map<String, dynamic> json) =>
      _$FilterEffectOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FilterEffectOptionsToJson(this);
}

/// 暗光增强选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LowlightEnhanceOptions implements AgoraSerializable {
  /// @nodoc
  const LowlightEnhanceOptions({this.mode, this.level});

  /// 暗光增强模式。详见 LowLightEnhanceMode 。
  @JsonKey(name: 'mode')
  final LowLightEnhanceMode? mode;

  /// 暗光增强等级。详见 LowLightEnhanceLevel 。
  @JsonKey(name: 'level')
  final LowLightEnhanceLevel? level;

  /// @nodoc
  factory LowlightEnhanceOptions.fromJson(Map<String, dynamic> json) =>
      _$LowlightEnhanceOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LowlightEnhanceOptionsToJson(this);
}

/// 暗光增强模式。
@JsonEnum(alwaysCreate: true)
enum LowLightEnhanceMode {
  /// 0:（默认）自动模式。SDK 会根据环境光亮度自动开启或关闭暗光增强功能，以适时补光和防止过曝。
  @JsonValue(0)
  lowLightEnhanceAuto,

  /// 1：手动模式。用户需手动开启或关闭暗光增强功能。
  @JsonValue(1)
  lowLightEnhanceManual,
}

/// @nodoc
extension LowLightEnhanceModeExt on LowLightEnhanceMode {
  /// @nodoc
  static LowLightEnhanceMode fromValue(int value) {
    return $enumDecode(_$LowLightEnhanceModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LowLightEnhanceModeEnumMap[this]!;
  }
}

/// 暗光增强等级。
@JsonEnum(alwaysCreate: true)
enum LowLightEnhanceLevel {
  /// 0:（默认）优先画质的暗光增强，会处理视频图像的亮度、细节、噪声，消耗的性能适中，处理速度适中，综合画质最优。
  @JsonValue(0)
  lowLightEnhanceLevelHighQuality,

  /// 1：优先性能的暗光增强，会处理视频图像的亮度、细节，消耗的性能较少，处理速度较快。
  @JsonValue(1)
  lowLightEnhanceLevelFast,
}

/// @nodoc
extension LowLightEnhanceLevelExt on LowLightEnhanceLevel {
  /// @nodoc
  static LowLightEnhanceLevel fromValue(int value) {
    return $enumDecode(_$LowLightEnhanceLevelEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LowLightEnhanceLevelEnumMap[this]!;
  }
}

/// 视频降噪选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoDenoiserOptions implements AgoraSerializable {
  /// @nodoc
  const VideoDenoiserOptions({this.mode, this.level});

  /// 视频降噪模式。
  @JsonKey(name: 'mode')
  final VideoDenoiserMode? mode;

  /// 视频降噪等级。
  @JsonKey(name: 'level')
  final VideoDenoiserLevel? level;

  /// @nodoc
  factory VideoDenoiserOptions.fromJson(Map<String, dynamic> json) =>
      _$VideoDenoiserOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoDenoiserOptionsToJson(this);
}

/// 视频降噪模式。
@JsonEnum(alwaysCreate: true)
enum VideoDenoiserMode {
  /// 0:（默认）自动模式。SDK 会根据环境光亮度自动开启或关闭视频降噪功能。
  @JsonValue(0)
  videoDenoiserAuto,

  /// 1：手动模式。用户需手动开启或关闭视频降噪功能。
  @JsonValue(1)
  videoDenoiserManual,
}

/// @nodoc
extension VideoDenoiserModeExt on VideoDenoiserMode {
  /// @nodoc
  static VideoDenoiserMode fromValue(int value) {
    return $enumDecode(_$VideoDenoiserModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoDenoiserModeEnumMap[this]!;
  }
}

/// 视频降噪等级。
@JsonEnum(alwaysCreate: true)
enum VideoDenoiserLevel {
  /// 0:（默认）优先画质的视频降噪。是在性能消耗和视频降噪效果中取平衡的等级。性能消耗适中，视频降噪速度适中，综合画质最优。
  @JsonValue(0)
  videoDenoiserLevelHighQuality,

  /// 1：优先性能的视频降噪。是在性能消耗和视频降噪效果中侧重于节省性能的等级。性能消耗较少，视频降噪速度较快。为避免处理后的视频有明显的拖影效果，建议你在摄像头固定的情况下使用该设置。
  @JsonValue(1)
  videoDenoiserLevelFast,
}

/// @nodoc
extension VideoDenoiserLevelExt on VideoDenoiserLevel {
  /// @nodoc
  static VideoDenoiserLevel fromValue(int value) {
    return $enumDecode(_$VideoDenoiserLevelEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoDenoiserLevelEnumMap[this]!;
  }
}

/// 色彩增强选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ColorEnhanceOptions implements AgoraSerializable {
  /// @nodoc
  const ColorEnhanceOptions({this.strengthLevel, this.skinProtectLevel});

  /// 色彩增强程度。取值范围为 [0.0,1.0]。 0.0 表示不对视频进行色彩增强。取值越大，色彩增强的程度越大。默认值为 0.5 。
  @JsonKey(name: 'strengthLevel')
  final double? strengthLevel;

  /// 肤色保护程度。取值范围为 [0.0,1.0]。 0.0 表示不对肤色进行保护。取值越大，肤色保护的程度越大。默认值为 1.0 。
  ///  当色彩增强程度较大时，人像肤色会明显失真，你需要设置肤色保护程度；
  ///  肤色保护程度较大时，色彩增强效果会略微降低。 因此，为获取最佳的色彩增强效果，建议你动态调节 strengthLevel 和 skinProtectLevel 以实现最合适的效果。
  @JsonKey(name: 'skinProtectLevel')
  final double? skinProtectLevel;

  /// @nodoc
  factory ColorEnhanceOptions.fromJson(Map<String, dynamic> json) =>
      _$ColorEnhanceOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ColorEnhanceOptionsToJson(this);
}

/// 自定义的背景。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VirtualBackgroundSource implements AgoraSerializable {
  /// @nodoc
  const VirtualBackgroundSource(
      {this.backgroundSourceType, this.color, this.source, this.blurDegree});

  /// 自定义的背景。详见 backgroundSourceType 。
  @JsonKey(name: 'background_source_type')
  final BackgroundSourceType? backgroundSourceType;

  /// 自定义的背景图颜色。格式为 RGB 定义下的十六进制整数，不带 # 号，如 0xFFB6C1 表示浅粉色。 默认值为 0xFFFFFF，表示白色。 取值范围为 [0x000000，0xffffff]。如果取值非法，SDK 会用白色背景图替换原背景图。 该参数仅在自定义背景为以下类型时生效，具体效果如下：
  ///  backgroundColor：背景图为该参数传入颜色的纯色图片。
  ///  backgroundImg：如果 source 中的图片使用了透明背景，则会使用该参数传入的颜色填充透明背景。
  @JsonKey(name: 'color')
  final int? color;

  /// 自定义背景的本地绝对路径。支持 PNG、JPG、MP4、 AVI、 MKV 和 FLV 格式。如果路径无效，SDK 会使用原背景图或 color 指定的纯色背景。 该参数仅在自定义背景图类型为 backgroundImg 或 backgroundVideo 时生效。
  @JsonKey(name: 'source')
  final String? source;

  /// 自定义背景图的模糊程度。 该参数仅在自定义背景图类型为 backgroundBlur 时生效。
  @JsonKey(name: 'blur_degree')
  final BackgroundBlurDegree? blurDegree;

  /// @nodoc
  factory VirtualBackgroundSource.fromJson(Map<String, dynamic> json) =>
      _$VirtualBackgroundSourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VirtualBackgroundSourceToJson(this);
}

/// 自定义的背景。
@JsonEnum(alwaysCreate: true)
enum BackgroundSourceType {
  /// 0: 将背景处理为 Alpha 数据，不作替换，仅分割人像和背景。设置后，你可以调用 startLocalVideoTranscoder ，实现人像画中画的效果。
  @JsonValue(0)
  backgroundNone,

  /// 1:（默认）背景为纯色。
  @JsonValue(1)
  backgroundColor,

  /// 2: 背景为 PNG、JPG 格式的图片。
  @JsonValue(2)
  backgroundImg,

  /// 3: 背景为虚化处理后的背景。
  @JsonValue(3)
  backgroundBlur,

  /// 4: 背景为 MP4、AVI、MKV、FLV 等格式的本地视频。
  @JsonValue(4)
  backgroundVideo,
}

/// @nodoc
extension BackgroundSourceTypeExt on BackgroundSourceType {
  /// @nodoc
  static BackgroundSourceType fromValue(int value) {
    return $enumDecode(_$BackgroundSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$BackgroundSourceTypeEnumMap[this]!;
  }
}

/// 自定义背景图的虚化程度。
@JsonEnum(alwaysCreate: true)
enum BackgroundBlurDegree {
  /// 1: 自定义背景图的虚化程度为低。用户差不多能看清背景。
  @JsonValue(1)
  blurDegreeLow,

  /// 2: 自定义背景图的虚化程度为中。用户较难看清背景。
  @JsonValue(2)
  blurDegreeMedium,

  /// 3:（默认）自定义背景图的虚化程度为高。用户很难看清背景。
  @JsonValue(3)
  blurDegreeHigh,
}

/// @nodoc
extension BackgroundBlurDegreeExt on BackgroundBlurDegree {
  /// @nodoc
  static BackgroundBlurDegree fromValue(int value) {
    return $enumDecode(_$BackgroundBlurDegreeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$BackgroundBlurDegreeEnumMap[this]!;
  }
}

/// 背景图像的处理属性。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SegmentationProperty implements AgoraSerializable {
  /// @nodoc
  const SegmentationProperty(
      {this.modelType, this.greenCapacity, this.screenColorType});

  /// 进行背景处理的算法。详见 SegModelType 。
  @JsonKey(name: 'modelType')
  final SegModelType? modelType;

  /// 对画面中背景颜色识别的精度范围。取值范围为 [0,1]，默认值为 0.5。取值越大，代表可识别的纯色范围越大。当该参数取值过大时，人像边缘和人像范围内的纯色也会被识别。建议你根据实际效果动态调整该参数的值。 该参数仅在 modelType 设置为 segModelGreen 时生效。
  @JsonKey(name: 'greenCapacity')
  final double? greenCapacity;

  /// 屏幕颜色类型。详见 ScreenColorType 。
  @JsonKey(name: 'screenColorType')
  final ScreenColorType? screenColorType;

  /// @nodoc
  factory SegmentationProperty.fromJson(Map<String, dynamic> json) =>
      _$SegmentationPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SegmentationPropertyToJson(this);
}

/// 进行背景处理的算法。
@JsonEnum(alwaysCreate: true)
enum SegModelType {
  /// 1: (默认) 适用于所有场景下的背景处理算法。
  @JsonValue(1)
  segModelAi,

  /// 2: 仅适用于绿幕背景下的背景处理算法。
  @JsonValue(2)
  segModelGreen,
}

/// @nodoc
extension SegModelTypeExt on SegModelType {
  /// @nodoc
  static SegModelType fromValue(int value) {
    return $enumDecode(_$SegModelTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$SegModelTypeEnumMap[this]!;
  }
}

/// 屏幕颜色类型。
@JsonEnum(alwaysCreate: true)
enum ScreenColorType {
  /// （0）：自动选择屏幕颜色。
  @JsonValue(0)
  screenColorAuto,

  /// （1）：绿色屏幕颜色。
  @JsonValue(1)
  screenColorGreen,

  /// （2）：蓝色屏幕颜色。
  @JsonValue(2)
  screenColorBlue,
}

/// @nodoc
extension ScreenColorTypeExt on ScreenColorType {
  /// @nodoc
  static ScreenColorType fromValue(int value) {
    return $enumDecode(_$ScreenColorTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ScreenColorTypeEnumMap[this]!;
  }
}

/// 自定义音频采集轨道的类型。
@JsonEnum(alwaysCreate: true)
enum AudioTrackType {
  /// @nodoc
  @JsonValue(-1)
  audioTrackInvalid,

  /// 0：可混流的音频轨道。支持与其他音频流 (例如：麦克风采集的音频流) 混音后，再在本地播放或发布到频道中。与非混流的音频轨道相比，延迟更高。
  @JsonValue(0)
  audioTrackMixable,

  /// 1：非混流的音频轨道。会替代麦克风采集，且不支持与其他音频流混音。与可混流的音频轨道相比，延迟更低。 如指定 audioTrackDirect ，则必须在调用 joinChannel 加入频道时，将 ChannelMediaOptions 中的 publishMicrophoneTrack 设为 false ，否则加入频道失败并返回错误码 -2.
  @JsonValue(1)
  audioTrackDirect,
}

/// @nodoc
extension AudioTrackTypeExt on AudioTrackType {
  /// @nodoc
  static AudioTrackType fromValue(int value) {
    return $enumDecode(_$AudioTrackTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioTrackTypeEnumMap[this]!;
  }
}

/// 自定义音频轨道的配置选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioTrackConfig implements AgoraSerializable {
  /// @nodoc
  const AudioTrackConfig(
      {this.enableLocalPlayback, this.enableAudioProcessing});

  /// 是否启用本地音频播放： true ：(默认) 启用本地音频播放。 false ：不启用本地音频播放。
  @JsonKey(name: 'enableLocalPlayback')
  final bool? enableLocalPlayback;

  /// 该参数设置仅对 audioTrackDirect 类型的自定义音频采集轨道生效。 是否启用音频处理模块： true ：启用音频处理模块，应用回声消除 (AEC)、降噪 (ANS) 和自动增益控制 (AGC) 效果。 false ：（默认）不启用音频处理模块。
  @JsonKey(name: 'enableAudioProcessing')
  final bool? enableAudioProcessing;

  /// @nodoc
  factory AudioTrackConfig.fromJson(Map<String, dynamic> json) =>
      _$AudioTrackConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioTrackConfigToJson(this);
}

/// 预设的美声效果选项。
@JsonEnum(alwaysCreate: true)
enum VoiceBeautifierPreset {
  /// 原声，即关闭美声效果。
  @JsonValue(0x00000000)
  voiceBeautifierOff,

  /// 磁性（男）。 该设置仅对男声有效，请勿用于设置女声，否则音频会失真。
  @JsonValue(0x01010100)
  chatBeautifierMagnetic,

  /// 清新（女）。 该设置仅对女声有效，请勿用于设置男声，否则音频会失真。
  @JsonValue(0x01010200)
  chatBeautifierFresh,

  /// 活力（女）。 该设置仅对女声有效，请勿用于设置男声，否则音频会失真。
  @JsonValue(0x01010300)
  chatBeautifierVitality,

  /// 歌唱美声。
  ///  如果调用 setVoiceBeautifierPreset (singingBeautifier)，你可以美化男声并添加歌声在小房间的混响效果。请勿用于设置女声，否则音频会失真。
  ///  如果调用 setVoiceBeautifierParameters (singingBeautifier, param1, param2)，你可以美化男声或女声并添加混响效果。
  @JsonValue(0x01020100)
  singingBeautifier,

  /// 浑厚。
  @JsonValue(0x01030100)
  timbreTransformationVigorous,

  /// 低沉。
  @JsonValue(0x01030200)
  timbreTransformationDeep,

  /// 圆润。
  @JsonValue(0x01030300)
  timbreTransformationMellow,

  /// 假音。
  @JsonValue(0x01030400)
  timbreTransformationFalsetto,

  /// 饱满。
  @JsonValue(0x01030500)
  timbreTransformationFull,

  /// 清澈。
  @JsonValue(0x01030600)
  timbreTransformationClear,

  /// 高亢。
  @JsonValue(0x01030700)
  timbreTransformationResounding,

  /// 嘹亮。
  @JsonValue(0x01030800)
  timbreTransformationRinging,

  /// 超高音质，即让音频更清晰、细节更丰富。
  ///  为达到更好的效果，建议在调用 setVoiceBeautifierPreset 前将 setAudioProfile2 的 profile 参数设置为 audioProfileMusicHighQuality (4) 或 audioProfileMusicHighQualityStereo (5)，且 scenario 参数设置为 audioScenarioGameStreaming (3)。
  ///  如果用户的音频采集设备可以高度还原音频细节，建议你不要开启超高音质，否则 SDK 会过度还原音频细节，达不到预期效果。
  @JsonValue(0x01040100)
  ultraHighQualityVoice,
}

/// @nodoc
extension VoiceBeautifierPresetExt on VoiceBeautifierPreset {
  /// @nodoc
  static VoiceBeautifierPreset fromValue(int value) {
    return $enumDecode(_$VoiceBeautifierPresetEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VoiceBeautifierPresetEnumMap[this]!;
  }
}

/// 预设的音效选项。
///
/// setAudioProfile profile
/// 预设音效 profile
///  roomAcousticsVirtualStereo
///  roomAcoustics3dVoice
///  roomAcousticsVirtualSurroundSound audioProfileMusicHighQualityStereo 或 audioProfileMusicStandardStereo 其他预设音效（除 audioEffectOff 以外） audioProfileMusicHighQuality 或 audioProfileMusicHighQualityStereo
@JsonEnum(alwaysCreate: true)
enum AudioEffectPreset {
  /// 原声，即关闭人声音效。
  @JsonValue(0x00000000)
  audioEffectOff,

  /// KTV。
  @JsonValue(0x02010100)
  roomAcousticsKtv,

  /// 演唱会。
  @JsonValue(0x02010200)
  roomAcousticsVocalConcert,

  /// 录音棚。
  @JsonValue(0x02010300)
  roomAcousticsStudio,

  /// 留声机。
  @JsonValue(0x02010400)
  roomAcousticsPhonograph,

  /// 虚拟立体声，即 SDK 将单声道的音频渲染出双声道的音效。
  @JsonValue(0x02010500)
  roomAcousticsVirtualStereo,

  /// 空旷。
  @JsonValue(0x02010600)
  roomAcousticsSpacial,

  /// 空灵。
  @JsonValue(0x02010700)
  roomAcousticsEthereal,

  /// 3D 人声，即 SDK 将音频渲染出在用户周围环绕的效果。环绕周期默认为 10 秒。设置该音效后，你还可以调用 setAudioEffectParameters 修改环绕周期。 启用 3D 人声后，用户需要使用支持双声道的音频播放设备才能听到预期效果。
  @JsonValue(0x02010800)
  roomAcoustics3dVoice,

  /// 虚拟环绕声，即 SDK 在双声道的基础上产生仿真的环绕声场，从而营造出具有环绕感的音效。 启用虚拟环绕声后，用户需要使用支持双声道的音频播放设备才能听到预期效果。
  @JsonValue(0x02010900)
  roomAcousticsVirtualSurroundSound,

  /// 合唱。声网推荐你在合唱场景下使用，使人声更具空间立体感。
  @JsonValue(0x02010D00)
  roomAcousticsChorus,

  /// 大叔。 建议用于处理男声，否则无法达到预期效果。
  @JsonValue(0x02020100)
  voiceChangerEffectUncle,

  /// 老年男性。 建议用于处理男声，否则无法达到预期效果。
  @JsonValue(0x02020200)
  voiceChangerEffectOldman,

  /// 男孩。 建议用于处理男声，否则无法达到预期效果。
  @JsonValue(0x02020300)
  voiceChangerEffectBoy,

  /// 少女。 建议用于处理女声，否则无法达到预期效果。
  @JsonValue(0x02020400)
  voiceChangerEffectSister,

  /// 女孩。 建议用于处理女声，否则无法达到预期效果。
  @JsonValue(0x02020500)
  voiceChangerEffectGirl,

  /// 猪八戒。
  @JsonValue(0x02020600)
  voiceChangerEffectPigking,

  /// 绿巨人。
  @JsonValue(0x02020700)
  voiceChangerEffectHulk,

  /// R&B。
  @JsonValue(0x02030100)
  styleTransformationRnb,

  /// 流行。
  @JsonValue(0x02030200)
  styleTransformationPopular,

  /// 电音，即 SDK 以主音音高为 C 的自然大调为基础修正音频的实际音高。设置该音效后，你还可以调用 setAudioEffectParameters 调整修音的基础调式和主音音高。
  @JsonValue(0x02040100)
  pitchCorrection,
}

/// @nodoc
extension AudioEffectPresetExt on AudioEffectPreset {
  /// @nodoc
  static AudioEffectPreset fromValue(int value) {
    return $enumDecode(_$AudioEffectPresetEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioEffectPresetEnumMap[this]!;
  }
}

/// 预设的变声效果选项。
@JsonEnum(alwaysCreate: true)
enum VoiceConversionPreset {
  /// 原声，即关闭变声效果。
  @JsonValue(0x00000000)
  voiceConversionOff,

  /// 中性。为避免音频失真，请确保仅对女声设置该效果。
  @JsonValue(0x03010100)
  voiceChangerNeutral,

  /// 甜美。为避免音频失真，请确保仅对女声设置该效果。
  @JsonValue(0x03010200)
  voiceChangerSweet,

  /// 稳重。为避免音频失真，请确保仅对男声设置该效果。
  @JsonValue(0x03010300)
  voiceChangerSolid,

  /// 低沉。为避免音频失真，请确保仅对男声设置该效果。
  @JsonValue(0x03010400)
  voiceChangerBass,

  /// @nodoc
  @JsonValue(0x03010500)
  voiceChangerCartoon,

  /// @nodoc
  @JsonValue(0x03010600)
  voiceChangerChildlike,

  /// @nodoc
  @JsonValue(0x03010700)
  voiceChangerPhoneOperator,

  /// @nodoc
  @JsonValue(0x03010800)
  voiceChangerMonster,

  /// @nodoc
  @JsonValue(0x03010900)
  voiceChangerTransformers,

  /// @nodoc
  @JsonValue(0x03010A00)
  voiceChangerGroot,

  /// @nodoc
  @JsonValue(0x03010B00)
  voiceChangerDarthVader,

  /// @nodoc
  @JsonValue(0x03010C00)
  voiceChangerIronLady,

  /// @nodoc
  @JsonValue(0x03010D00)
  voiceChangerShinChan,

  /// @nodoc
  @JsonValue(0x03010E00)
  voiceChangerGirlishMan,

  /// @nodoc
  @JsonValue(0x03010F00)
  voiceChangerChipmunk,
}

/// @nodoc
extension VoiceConversionPresetExt on VoiceConversionPreset {
  /// @nodoc
  static VoiceConversionPreset fromValue(int value) {
    return $enumDecode(_$VoiceConversionPresetEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VoiceConversionPresetEnumMap[this]!;
  }
}

/// 预设的耳机均衡器类型。
@JsonEnum(alwaysCreate: true)
enum HeadphoneEqualizerPreset {
  /// 关闭耳机均衡器，收听原始音频。
  @JsonValue(0x00000000)
  headphoneEqualizerOff,

  /// 使用头戴式耳机的均衡器。
  @JsonValue(0x04000001)
  headphoneEqualizerOverear,

  /// 使用入耳式耳机的均衡器。
  @JsonValue(0x04000002)
  headphoneEqualizerInear,
}

/// @nodoc
extension HeadphoneEqualizerPresetExt on HeadphoneEqualizerPreset {
  /// @nodoc
  static HeadphoneEqualizerPreset fromValue(int value) {
    return $enumDecode(_$HeadphoneEqualizerPresetEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$HeadphoneEqualizerPresetEnumMap[this]!;
  }
}

/// AI 调音器音效类型。
@JsonEnum(alwaysCreate: true)
enum VoiceAiTunerType {
  /// 0：大叔音。低沉而有磁性的男声。
  @JsonValue(0)
  voiceAiTunerMatureMale,

  /// 1：清新男音。清新而略带甜美的男声。
  @JsonValue(1)
  voiceAiTunerFreshMale,

  /// 2：御姐音。深沉而富有魅力的女声。
  @JsonValue(2)
  voiceAiTunerElegantFemale,

  /// 3：萝莉音。高亢而可爱的女声。
  @JsonValue(3)
  voiceAiTunerSweetFemale,

  /// 4：暖男歌声。温暖而悠扬的男声。
  @JsonValue(4)
  voiceAiTunerWarmMaleSinging,

  /// 5：温柔女歌声。柔和而细腻的女声。
  @JsonValue(5)
  voiceAiTunerGentleFemaleSinging,

  /// 6：烟嗓叔音歌声。独特的沙哑男声。
  @JsonValue(6)
  voiceAiTunerHuskyMaleSinging,

  /// 7：温暖御姐歌声。温暖而成熟的女声。
  @JsonValue(7)
  voiceAiTunerWarmElegantFemaleSinging,

  /// 8：力量男歌声。强劲而有力的男声。
  @JsonValue(8)
  voiceAiTunerPowerfulMaleSinging,

  /// 9：梦幻女歌声。梦幻而柔美的女声。
  @JsonValue(9)
  voiceAiTunerDreamyFemaleSinging,
}

/// @nodoc
extension VoiceAiTunerTypeExt on VoiceAiTunerType {
  /// @nodoc
  static VoiceAiTunerType fromValue(int value) {
    return $enumDecode(_$VoiceAiTunerTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VoiceAiTunerTypeEnumMap[this]!;
  }
}

/// 共享屏幕流的音频配置。
///
/// 仅适用于 captureAudio 为 true 的场景。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenAudioParameters implements AgoraSerializable {
  /// @nodoc
  const ScreenAudioParameters(
      {this.sampleRate,
      this.channels,
      this.captureSignalVolume,
      this.excludeCurrentProcessAudio});

  /// 音频采样率 (Hz)。默认值为 16000。
  @JsonKey(name: 'sampleRate')
  final int? sampleRate;

  /// 声道数。默认值为 2，表示双声道。
  @JsonKey(name: 'channels')
  final int? channels;

  /// 采集的系统音量。取值范围为 [0,100]。默认值为 100。
  @JsonKey(name: 'captureSignalVolume')
  final int? captureSignalVolume;

  /// @nodoc
  @JsonKey(name: 'excludeCurrentProcessAudio')
  final bool? excludeCurrentProcessAudio;

  /// @nodoc
  factory ScreenAudioParameters.fromJson(Map<String, dynamic> json) =>
      _$ScreenAudioParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenAudioParametersToJson(this);
}

/// 屏幕共享的参数配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenCaptureParameters implements AgoraSerializable {
  /// @nodoc
  const ScreenCaptureParameters(
      {this.captureAudio,
      this.audioParams,
      this.dimensions,
      this.frameRate,
      this.bitrate,
      this.captureMouseCursor,
      this.windowFocus,
      this.excludeWindowList,
      this.excludeWindowCount,
      this.highLightWidth,
      this.highLightColor,
      this.enableHighLight});

  /// @nodoc
  @JsonKey(name: 'captureAudio')
  final bool? captureAudio;

  /// @nodoc
  @JsonKey(name: 'audioParams')
  final ScreenAudioParameters? audioParams;

  /// 在共享文档的场景（screenScenarioDocument）下设置编码分辨率时，选择以下两种方式其中之一。
  ///  如果你需要最优的画质，建议将编码分辨率设置为与采集分辨率相同。
  ///  如果你希望在画质、带宽和系统性能之间达到相对平衡，则：
  ///  当采集分辨率大于 1920 × 1080 时，建议编码分辨率不低于 1920 × 1080。
  ///  当采集分辨率低于 1920 × 1080 时，建议编码分辨率不低于 1280 × 720。 屏幕共享流的视频编码分辨率。详见 VideoDimensions 。默认值为 1920 × 1080，即 2073600 像素。该像素值为计费标准。 当共享的屏幕分辨率宽高比与该值设置不一致时，SDK 按如下策略进行编码。假设 dimensions 设为 1920 × 1080：
  ///  如果屏幕分辨率小于 dimensions ，如 1000 × 1000，SDK 直接按 1000 × 1000 进行编码。
  ///  如果屏幕分辨率大于 dimensions ，如 2000 × 1500，SDK 按屏幕分辨率的宽高比，即 4:3，取 dimensions 以内的最大分辨率进行编码，即 1440 × 1080。
  @JsonKey(name: 'dimensions')
  final VideoDimensions? dimensions;

  /// 共享视频的帧率。单位为 fps；默认值为 5，建议不要超过 15。
  @JsonKey(name: 'frameRate')
  final int? frameRate;

  /// 共享视频的码率。单位为 Kbps；默认值为 0，表示 SDK 根据当前共享屏幕的分辨率计算出一个合理的值。
  @JsonKey(name: 'bitrate')
  final int? bitrate;

  /// 受 macOS 系统限制，在共享屏幕时将该参数设置为 false 无效（共享窗口时无影响）。 是否采集鼠标用于屏幕共享： true :（默认）采集鼠标。 false : 不采集鼠标。
  @JsonKey(name: 'captureMouseCursor')
  final bool? captureMouseCursor;

  /// 由于 macOS 系统限制，设置该成员将窗口前置时，如果当前的应用存在多个窗口，只会将主窗口前置。 调用 startScreenCaptureByWindowId 方法共享窗口时，是否将该窗口前置： true : 前置窗口。 false :（默认）不前置窗口。
  @JsonKey(name: 'windowFocus')
  final bool? windowFocus;

  /// 待屏蔽窗口的 ID 列表。调用 startScreenCaptureByDisplayId 开启屏幕共享时，你可以通过该参数屏蔽指定的窗口。你可以在调用 updateScreenCaptureParameters 更新屏幕共享的配置参数时，通过该参数动态屏蔽指定的窗口。
  @JsonKey(name: 'excludeWindowList', readValue: readIntPtrList)
  final List<int>? excludeWindowList;

  /// 待屏蔽窗口的数量。 在 Windows 平台上，该参数最大值不超过 24，如果超过该值，则屏蔽窗口功能失效。
  @JsonKey(name: 'excludeWindowCount')
  final int? excludeWindowCount;

  /// (仅适用于 macOS 和 Windows)描边的宽度 (px)。默认值为 5，取值范围为 (0,50]。 该参数仅在 highLighted 设置为 true 时生效。
  @JsonKey(name: 'highLightWidth')
  final int? highLightWidth;

  /// (仅适用于 macOS 和 Windows)
  ///  在 Windows 平台上，指描边的 ARGB 颜色。默认值为 0xFF8CBF26。
  ///  在 macOS 平台上， COLOR_CLASS 指 NSColor 。
  @JsonKey(name: 'highLightColor')
  final int? highLightColor;

  /// 当你在共享窗口或屏幕的部分区域时，如果将该参数设置为 true ，SDK 会对整个窗口或屏幕进行描边。 (仅适用于 macOS 和 Windows)是否对共享的窗口或屏幕进行描边： true : 描边。 false : （默认）不描边。
  @JsonKey(name: 'enableHighLight')
  final bool? enableHighLight;

  /// @nodoc
  factory ScreenCaptureParameters.fromJson(Map<String, dynamic> json) =>
      _$ScreenCaptureParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenCaptureParametersToJson(this);
}

/// 录音音质。
@JsonEnum(alwaysCreate: true)
enum AudioRecordingQualityType {
  /// 0: 低音质。采样率为 32 kHz，录制 10 分钟的文件大小为 1.2 M 左右。
  @JsonValue(0)
  audioRecordingQualityLow,

  /// 1: 中音质。采样率为 32 kHz，录制 10 分钟的文件大小为 2 M 左右。
  @JsonValue(1)
  audioRecordingQualityMedium,

  /// 2: 高音质。采样率为 32 kHz，录制 10 分钟的文件大小为 3.75 M 左右。
  @JsonValue(2)
  audioRecordingQualityHigh,

  /// 3: 超高音质。采样率为 32 KHz，录制 10 分钟的文件大小约为 7.5 M 左右。
  @JsonValue(3)
  audioRecordingQualityUltraHigh,
}

/// @nodoc
extension AudioRecordingQualityTypeExt on AudioRecordingQualityType {
  /// @nodoc
  static AudioRecordingQualityType fromValue(int value) {
    return $enumDecode(_$AudioRecordingQualityTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioRecordingQualityTypeEnumMap[this]!;
  }
}

/// 录音内容。在 startAudioRecording 中设置。
@JsonEnum(alwaysCreate: true)
enum AudioFileRecordingType {
  /// 1: 仅录制本地用户的音频。
  @JsonValue(1)
  audioFileRecordingMic,

  /// 2: 仅录制所有远端用户的音频。
  @JsonValue(2)
  audioFileRecordingPlayback,

  /// 3: 录制本地和所有远端用户混音后的音频。
  @JsonValue(3)
  audioFileRecordingMixed,
}

/// @nodoc
extension AudioFileRecordingTypeExt on AudioFileRecordingType {
  /// @nodoc
  static AudioFileRecordingType fromValue(int value) {
    return $enumDecode(_$AudioFileRecordingTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioFileRecordingTypeEnumMap[this]!;
  }
}

/// 音频编码内容。
@JsonEnum(alwaysCreate: true)
enum AudioEncodedFrameObserverPosition {
  /// 1: 仅编码本地用户的音频。
  @JsonValue(1)
  audioEncodedFrameObserverPositionRecord,

  /// 2: 仅编码所有远端用户的音频。
  @JsonValue(2)
  audioEncodedFrameObserverPositionPlayback,

  /// 3: 编码本地和所有远端用户混音后的音频。
  @JsonValue(3)
  audioEncodedFrameObserverPositionMixed,
}

extension AudioEncodedFrameObserverPositionExt
    on AudioEncodedFrameObserverPosition {
  /// @nodoc
  static AudioEncodedFrameObserverPosition fromValue(int value) {
    return $enumDecode(_$AudioEncodedFrameObserverPositionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioEncodedFrameObserverPositionEnumMap[this]!;
  }
}

/// 录音配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioRecordingConfiguration implements AgoraSerializable {
  /// @nodoc
  const AudioRecordingConfiguration(
      {this.filePath,
      this.encode,
      this.sampleRate,
      this.fileRecordingType,
      this.quality,
      this.recordingChannel});

  /// 录音文件在本地保存的绝对路径，需精确到文件名及格式。例如： C:\music\audio.aac 。 请确保你指定的路径存在并且可写。
  @JsonKey(name: 'filePath')
  final String? filePath;

  /// 设置是否编码音频数据： true : 将音频数据用 AAC 编码。 false :（默认）不编码音频数据，直接保存录制的音频数据。
  @JsonKey(name: 'encode')
  final bool? encode;

  /// 如果把该参数设为 44100 或 48000，为保证录音效果，建议录制 WAV 文件或 quality 为 audioRecordingQualityMedium 或 audioRecordingQualityHigh 的 AAC 文件。 录音采样率（Hz）。
  ///  16000
  ///  32000 （默认）
  ///  44100
  ///  48000
  @JsonKey(name: 'sampleRate')
  final int? sampleRate;

  /// 录音内容。详见 AudioFileRecordingType 。
  @JsonKey(name: 'fileRecordingType')
  final AudioFileRecordingType? fileRecordingType;

  /// 录音音质。详见 audiorecordingqualitytype 。 该参数仅适用于 AAC 文件。
  @JsonKey(name: 'quality')
  final AudioRecordingQualityType? quality;

  /// 实际录制的音频声道与你采集的音频声道有关：
  ///  如果采集的音频为单声道， recordingChannel 设为 2 ， 则录制的音频为经过单声道数据拷贝后的双声道数据，而不是立体声。
  ///  如果采集的音频为双声道， recordingChannel 设为 1 ，则录制的音频为经过双声道数据混合后的单声道数据。 此外，集成方案也会影响最终录制的音频声道。因此，如果你希望录制立体声，请[联系技术支持](https://ticket.shengwang.cn/)协助。 录制的音频声道。目前支持如下取值：
  ///  1:（默认）单声道。
  ///  2: 双声道。
  @JsonKey(name: 'recordingChannel')
  final int? recordingChannel;

  /// @nodoc
  factory AudioRecordingConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AudioRecordingConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioRecordingConfigurationToJson(this);
}

/// 编码后音频的观测器设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioEncodedFrameObserverConfig implements AgoraSerializable {
  /// @nodoc
  const AudioEncodedFrameObserverConfig({this.postionType, this.encodingType});

  /// 音频编码内容。详见 AudioEncodedFrameObserverPosition 。
  @JsonKey(name: 'postionType')
  final AudioEncodedFrameObserverPosition? postionType;

  /// 音频编码类型。详见 AudioEncodingType 。
  @JsonKey(name: 'encodingType')
  final AudioEncodingType? encodingType;

  /// @nodoc
  factory AudioEncodedFrameObserverConfig.fromJson(Map<String, dynamic> json) =>
      _$AudioEncodedFrameObserverConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AudioEncodedFrameObserverConfigToJson(this);
}

/// 编码后音频的观测器。
class AudioEncodedFrameObserver {
  /// @nodoc
  const AudioEncodedFrameObserver({
    this.onRecordAudioEncodedFrame,
    this.onPlaybackAudioEncodedFrame,
    this.onMixedAudioEncodedFrame,
  });

  /// 获取本地用户的音频编码数据。
  ///
  /// 调用 registerAudioEncodedFrameObserver 并将音频编码内容设为 audioEncodedFrameObserverPositionRecord 后，你可以通过该回调获取本地用户的音频编码数据。
  ///
  /// * [frameBuffer] 音频 buffer。
  /// * [length] 音频数据长度，单位为字节。
  /// * [audioEncodedFrameInfo] 编码后音频的信息。详见 EncodedAudioFrameInfo 。
  final void Function(Uint8List frameBuffer, int length,
      EncodedAudioFrameInfo audioEncodedFrameInfo)? onRecordAudioEncodedFrame;

  /// 获取所有远端用户的音频编码数据。
  ///
  /// 调用 registerAudioEncodedFrameObserver 并将音频编码内容设为 audioEncodedFrameObserverPositionPlayback 后，你可以通过该回调获取所有远端用户的音频编码数据。
  ///
  /// * [frameBuffer] 音频 buffer。
  /// * [length] 音频数据长度，单位为字节。
  /// * [audioEncodedFrameInfo] 编码后音频的信息。详见 EncodedAudioFrameInfo 。
  final void Function(Uint8List frameBuffer, int length,
      EncodedAudioFrameInfo audioEncodedFrameInfo)? onPlaybackAudioEncodedFrame;

  /// 获取本地和所有远端用户混音后的音频编码数据。
  ///
  /// 调用 registerAudioEncodedFrameObserver 并将音频编码内容设为 audioEncodedFrameObserverPositionMixed 后，你可以通过该回调获取本地和所有远端用户混音、编码后的音频数据。
  ///
  /// * [frameBuffer] 音频 buffer。
  /// * [length] 音频数据长度，单位为字节。
  /// * [audioEncodedFrameInfo] 编码后音频的信息。详见 EncodedAudioFrameInfo 。
  final void Function(Uint8List frameBuffer, int length,
      EncodedAudioFrameInfo audioEncodedFrameInfo)? onMixedAudioEncodedFrame;
}

/// 访问区域，即 SDK 连接的服务器所在的区域。
@JsonEnum(alwaysCreate: true)
enum AreaCode {
  /// 中国大陆。
  @JsonValue(0x00000001)
  areaCodeCn,

  /// 北美区域。
  @JsonValue(0x00000002)
  areaCodeNa,

  /// 欧洲区域。
  @JsonValue(0x00000004)
  areaCodeEu,

  /// 除中国以外的亚洲区域。
  @JsonValue(0x00000008)
  areaCodeAs,

  /// 日本。
  @JsonValue(0x00000010)
  areaCodeJp,

  /// 印度。
  @JsonValue(0x00000020)
  areaCodeIn,

  /// 全球。
  @JsonValue((0xFFFFFFFF))
  areaCodeGlob,
}

/// @nodoc
extension AreaCodeExt on AreaCode {
  /// @nodoc
  static AreaCode fromValue(int value) {
    return $enumDecode(_$AreaCodeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AreaCodeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum AreaCodeEx {
  /// @nodoc
  @JsonValue(0x00000040)
  areaCodeOc,

  /// @nodoc
  @JsonValue(0x00000080)
  areaCodeSa,

  /// @nodoc
  @JsonValue(0x00000100)
  areaCodeAf,

  /// @nodoc
  @JsonValue(0x00000200)
  areaCodeKr,

  /// @nodoc
  @JsonValue(0x00000400)
  areaCodeHkmc,

  /// @nodoc
  @JsonValue(0x00000800)
  areaCodeUs,

  /// @nodoc
  @JsonValue(0x00001000)
  areaCodeRu,

  /// @nodoc
  @JsonValue(0xFFFFFFFE)
  areaCodeOvs,
}

/// @nodoc
extension AreaCodeExExt on AreaCodeEx {
  /// @nodoc
  static AreaCodeEx fromValue(int value) {
    return $enumDecode(_$AreaCodeExEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AreaCodeExEnumMap[this]!;
  }
}

/// 跨频道媒体流转发出错的错误码。
@JsonEnum(alwaysCreate: true)
enum ChannelMediaRelayError {
  /// 0: 一切正常。
  @JsonValue(0)
  relayOk,

  /// 1: 服务器回应出错。
  @JsonValue(1)
  relayErrorServerErrorResponse,

  /// 2: 服务器无回应。
  /// 该错误可能是网络状况不佳导致的。如果在发起跨频道连麦时报告该错误，你可以稍后重试；如果在跨频道连麦过程中报告该错误，你可以调用 leaveChannel 方法离开频道。
  /// 该错误也可能是由于当前的 App ID 未开启跨频道连麦导致的。你可以[联系技术支持](https://ticket.shengwang.cn/)申请开通跨频道连麦。
  @JsonValue(2)
  relayErrorServerNoResponse,

  /// 3: SDK 无法获取服务，可能是因为服务器资源有限导致。
  @JsonValue(3)
  relayErrorNoResourceAvailable,

  /// 4: 发起跨频道转发媒体流请求失败。
  @JsonValue(4)
  relayErrorFailedJoinSrc,

  /// 5: 接受跨频道转发媒体流请求失败。
  @JsonValue(5)
  relayErrorFailedJoinDest,

  /// 6: 服务器接收跨频道转发媒体流失败。
  @JsonValue(6)
  relayErrorFailedPacketReceivedFromSrc,

  /// 7: 服务器发送跨频道转发媒体流失败。
  @JsonValue(7)
  relayErrorFailedPacketSentToDest,

  /// 8: SDK 因网络质量不佳与服务器断开。你可以调用 leaveChannel 方法离开当前频道。
  @JsonValue(8)
  relayErrorServerConnectionLost,

  /// 9: 服务器内部出错。
  @JsonValue(9)
  relayErrorInternalError,

  /// 10: 源频道的 Token 已过期。
  @JsonValue(10)
  relayErrorSrcTokenExpired,

  /// 11: 目标频道的 Token 已过期。
  @JsonValue(11)
  relayErrorDestTokenExpired,
}

/// @nodoc
extension ChannelMediaRelayErrorExt on ChannelMediaRelayError {
  /// @nodoc
  static ChannelMediaRelayError fromValue(int value) {
    return $enumDecode(_$ChannelMediaRelayErrorEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ChannelMediaRelayErrorEnumMap[this]!;
  }
}

/// 跨频道媒体流转发状态码。
@JsonEnum(alwaysCreate: true)
enum ChannelMediaRelayState {
  /// 0: 初始状态。在成功调用 stopChannelMediaRelay 停止跨频道媒体流转发后， onChannelMediaRelayStateChanged 会回调该状态。
  @JsonValue(0)
  relayStateIdle,

  /// 1: SDK 尝试跨频道。
  @JsonValue(1)
  relayStateConnecting,

  /// 2: 源频道主播成功加入目标频道。
  @JsonValue(2)
  relayStateRunning,

  /// 3: 发生异常，详见 onChannelMediaRelayStateChanged 的 code 参数提示的错误信息。
  @JsonValue(3)
  relayStateFailure,
}

/// @nodoc
extension ChannelMediaRelayStateExt on ChannelMediaRelayState {
  /// @nodoc
  static ChannelMediaRelayState fromValue(int value) {
    return $enumDecode(_$ChannelMediaRelayStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ChannelMediaRelayStateEnumMap[this]!;
  }
}

/// 频道媒体信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelMediaInfo implements AgoraSerializable {
  /// @nodoc
  const ChannelMediaInfo({this.uid, this.channelName, this.token});

  /// 用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 频道名。
  @JsonKey(name: 'channelName')
  final String? channelName;

  /// 能加入频道的 Token。
  @JsonKey(name: 'token')
  final String? token;

  /// @nodoc
  factory ChannelMediaInfo.fromJson(Map<String, dynamic> json) =>
      _$ChannelMediaInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChannelMediaInfoToJson(this);
}

/// 跨频道媒体流转发配置信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelMediaRelayConfiguration implements AgoraSerializable {
  /// @nodoc
  const ChannelMediaRelayConfiguration(
      {this.srcInfo, this.destInfos, this.destCount});

  /// 源频道信息 ChannelMediaInfo ，包含如下成员： channelName ：源频道名。默认值为 NULL ，表示 SDK 填充当前的频道名。 token ：能加入源频道的 token 。由你在 srcInfo 中设置的 channelName 和 uid 生成。
  ///  如未启用 App Certificate，可直接将该参数设为默认值 NULL ，表示 SDK 填充 App ID。
  ///  如已启用 App Certificate，则务必填入使用 channelName 和 uid 生成的 token ，且其中的 uid 必须为 0。 uid ：标识源频道中的转发媒体流的 UID。默认值为 0，请勿修改。
  @JsonKey(name: 'srcInfo')
  final ChannelMediaInfo? srcInfo;

  /// 由于目标频道中任意频道的 token 过期会导致所有跨频道推流停止，因此建议你将目标频道的 token 设置为相同的过期时长。 目标频道信息 ChannelMediaInfo ，包含如下成员： channelName ：目标频道的频道名。 token ：能加入目标频道的 token 。由你在 destInfos 中设置的 channelName 和 uid 生成。
  ///  如未启用 App Certificate，可直接将该参数设为默认值 NULL ，表示 SDK 填充 App ID。
  ///  如已启用 App Certificate，则务必填入使用 channelName 和 uid 生成的 token 。 uid ：标识目标频道中的转发媒体流的 UID。取值范围为 0 到 (2 32-1），请确保与目标频道中的所有 UID 不同。默认值为 0，表示 SDK 随机分配一个 UID。
  @JsonKey(name: 'destInfos')
  final List<ChannelMediaInfo>? destInfos;

  /// 目标频道数量，默认值为 0，取值范围为 [0,6]。该参数应与你在 destInfos 中定义的 ChannelMediaInfo 数组的数目一致。
  @JsonKey(name: 'destCount')
  final int? destCount;

  /// @nodoc
  factory ChannelMediaRelayConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ChannelMediaRelayConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChannelMediaRelayConfigurationToJson(this);
}

/// 上行网络信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UplinkNetworkInfo implements AgoraSerializable {
  /// @nodoc
  const UplinkNetworkInfo({this.videoEncoderTargetBitrateBps});

  /// 目标视频编码器的码率 (bps)。
  @JsonKey(name: 'video_encoder_target_bitrate_bps')
  final int? videoEncoderTargetBitrateBps;

  /// @nodoc
  factory UplinkNetworkInfo.fromJson(Map<String, dynamic> json) =>
      _$UplinkNetworkInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UplinkNetworkInfoToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DownlinkNetworkInfo implements AgoraSerializable {
  /// @nodoc
  const DownlinkNetworkInfo(
      {this.lastmileBufferDelayTimeMs,
      this.bandwidthEstimationBps,
      this.totalDownscaleLevelCount,
      this.peerDownlinkInfo,
      this.totalReceivedVideoCount});

  /// @nodoc
  @JsonKey(name: 'lastmile_buffer_delay_time_ms')
  final int? lastmileBufferDelayTimeMs;

  /// @nodoc
  @JsonKey(name: 'bandwidth_estimation_bps')
  final int? bandwidthEstimationBps;

  /// @nodoc
  @JsonKey(name: 'total_downscale_level_count')
  final int? totalDownscaleLevelCount;

  /// @nodoc
  @JsonKey(name: 'peer_downlink_info')
  final List<PeerDownlinkInfo>? peerDownlinkInfo;

  /// @nodoc
  @JsonKey(name: 'total_received_video_count')
  final int? totalReceivedVideoCount;

  /// @nodoc
  factory DownlinkNetworkInfo.fromJson(Map<String, dynamic> json) =>
      _$DownlinkNetworkInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DownlinkNetworkInfoToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PeerDownlinkInfo implements AgoraSerializable {
  /// @nodoc
  const PeerDownlinkInfo(
      {this.userId,
      this.streamType,
      this.currentDownscaleLevel,
      this.expectedBitrateBps});

  /// @nodoc
  @JsonKey(name: 'userId')
  final String? userId;

  /// @nodoc
  @JsonKey(name: 'stream_type')
  final VideoStreamType? streamType;

  /// @nodoc
  @JsonKey(name: 'current_downscale_level')
  final RemoteVideoDownscaleLevel? currentDownscaleLevel;

  /// @nodoc
  @JsonKey(name: 'expected_bitrate_bps')
  final int? expectedBitrateBps;

  /// @nodoc
  factory PeerDownlinkInfo.fromJson(Map<String, dynamic> json) =>
      _$PeerDownlinkInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PeerDownlinkInfoToJson(this);
}

/// 内置加密模式。
///
/// 建议使用 aes128Gcm2 或 aes256Gcm2 加密模式。这两种模式支持使用盐，安全性更高。
@JsonEnum(alwaysCreate: true)
enum EncryptionMode {
  /// 1: 128 位 AES 加密，XTS 模式。
  @JsonValue(1)
  aes128Xts,

  /// 2: 128 位 AES 加密，ECB 模式。
  @JsonValue(2)
  aes128Ecb,

  /// 3: 256 位 AES 加密，XTS 模式。
  @JsonValue(3)
  aes256Xts,

  /// 4: 128 位 SM4 加密，ECB 模式。
  @JsonValue(4)
  sm4128Ecb,

  /// 5: 128 位 AES 加密，GCM 模式。
  @JsonValue(5)
  aes128Gcm,

  /// 6: 256 位 AES 加密，GCM 模式。
  @JsonValue(6)
  aes256Gcm,

  /// 7:（默认）128 位 AES 加密，GCM 模式。该加密模式需要设置盐（ encryptionKdfSalt ）。
  @JsonValue(7)
  aes128Gcm2,

  /// 8: 256 位 AES 加密，GCM 模式。该加密模式需要设置盐（ encryptionKdfSalt ）。
  @JsonValue(8)
  aes256Gcm2,

  /// 枚举值边界。
  @JsonValue(9)
  modeEnd,
}

/// @nodoc
extension EncryptionModeExt on EncryptionMode {
  /// @nodoc
  static EncryptionMode fromValue(int value) {
    return $enumDecode(_$EncryptionModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EncryptionModeEnumMap[this]!;
  }
}

/// 配置内置加密模式和密钥。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EncryptionConfig implements AgoraSerializable {
  /// @nodoc
  const EncryptionConfig(
      {this.encryptionMode,
      this.encryptionKey,
      this.encryptionKdfSalt,
      this.datastreamEncryptionEnabled});

  /// 内置加密模式。详见 EncryptionMode 。建议使用 aes128Gcm2 或 aes256Gcm2 加密模式。这两种模式支持使用盐，安全性更高。
  @JsonKey(name: 'encryptionMode')
  final EncryptionMode? encryptionMode;

  /// 内置加密密钥，字符串类型，长度无限制。建议使用 32 字节的密钥。 如果未指定该参数或将该参数设置为 NULL ，则无法启用内置加密，且 SDK 会返回错误码 -2 。
  @JsonKey(name: 'encryptionKey')
  final String? encryptionKey;

  /// 盐，长度为 32 字节。建议你在服务端使用 OpenSSL 生成盐。 只有在 aes128Gcm2 或 aes256Gcm2 加密模式下，该参数才生效。此时，需确保填入该参数的值不全为 0 。
  @JsonKey(name: 'encryptionKdfSalt', ignore: true)
  final Uint8List? encryptionKdfSalt;

  /// 是否开启数据流加密： true ：开启数据流加密。 false ：（默认）关闭数据流加密。
  @JsonKey(name: 'datastreamEncryptionEnabled')
  final bool? datastreamEncryptionEnabled;

  /// @nodoc
  factory EncryptionConfig.fromJson(Map<String, dynamic> json) =>
      _$EncryptionConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncryptionConfigToJson(this);
}

/// 内置加密的错误类型。
@JsonEnum(alwaysCreate: true)
enum EncryptionErrorType {
  /// 0: 内部原因。
  @JsonValue(0)
  encryptionErrorInternalFailure,

  /// 1: 媒体流解密错误。请确保接收端和发送端使用的加密模式或密钥一致。
  @JsonValue(1)
  encryptionErrorDecryptionFailure,

  /// 2: 媒体流加密错误。
  @JsonValue(2)
  encryptionErrorEncryptionFailure,

  /// 3: 数据流解密错误。请确保接收端和发送端使用的加密模式或密钥一致。
  @JsonValue(3)
  encryptionErrorDatastreamDecryptionFailure,

  /// 4: 数据流加密错误。
  @JsonValue(4)
  encryptionErrorDatastreamEncryptionFailure,
}

/// @nodoc
extension EncryptionErrorTypeExt on EncryptionErrorType {
  /// @nodoc
  static EncryptionErrorType fromValue(int value) {
    return $enumDecode(_$EncryptionErrorTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EncryptionErrorTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum UploadErrorReason {
  /// @nodoc
  @JsonValue(0)
  uploadSuccess,

  /// @nodoc
  @JsonValue(1)
  uploadNetError,

  /// @nodoc
  @JsonValue(2)
  uploadServerError,
}

/// @nodoc
extension UploadErrorReasonExt on UploadErrorReason {
  /// @nodoc
  static UploadErrorReason fromValue(int value) {
    return $enumDecode(_$UploadErrorReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$UploadErrorReasonEnumMap[this]!;
  }
}

/// 调用 renewToken 后的错误码。
///
/// 自从 自 v6.6.0 版本新增。
@JsonEnum(alwaysCreate: true)
enum RenewTokenErrorCode {
  /// （0）：Token 更新成功。
  @JsonValue(0)
  renewTokenSuccess,

  /// （1）：由于未知的服务器错误，Token 更新失败。建议检查用于生成 Token 的参数，重新生成 Token，并重试 renewToken 。
  @JsonValue(1)
  renewTokenFailure,

  /// （2）：由于提供的 Token 已过期，Token 更新失败。建议生成一个过期时间更长的新 Token，并重试 renewToken 。
  @JsonValue(2)
  renewTokenTokenExpired,

  /// （3）：由于提供的 Token 无效，Token 更新失败。常见原因包括：项目在声网控制台启用了 App 证书但加入频道时未使用 Token； joinChannel 中指定的 uid 与生成 Token 时使用的 uid 不一致； joinChannel 中指定的频道名与生成 Token 时使用的频道名不一致。建议检查 Token 的生成流程，重新生成 Token，并重试 renewToken 。
  @JsonValue(3)
  renewTokenInvalidToken,

  /// （4）：由于 Token 中的频道名与当前频道不一致，Token 更新失败。建议检查频道名，重新生成 Token，并重试 renewToken 。
  @JsonValue(4)
  renewTokenInvalidChannelName,

  /// （5）：由于 Token 中的 App ID 与当前 App ID 不一致，Token 更新失败。建议检查 App ID，重新生成 Token，并重试 renewToken 。
  @JsonValue(5)
  renewTokenInconsistentAppid,

  /// （6）：由于发起了新的请求，之前的 Token 更新请求被取消。
  @JsonValue(6)
  renewTokenCanceledByNewRequest,
}

/// @nodoc
extension RenewTokenErrorCodeExt on RenewTokenErrorCode {
  /// @nodoc
  static RenewTokenErrorCode fromValue(int value) {
    return $enumDecode(_$RenewTokenErrorCodeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RenewTokenErrorCodeEnumMap[this]!;
  }
}

/// 设备权限类型。
@JsonEnum(alwaysCreate: true)
enum PermissionType {
  /// 0: 音频采集设备的权限。
  @JsonValue(0)
  recordAudio,

  /// 1: 摄像头权限。
  @JsonValue(1)
  camera,

  /// (仅适用于 Android) 2: 屏幕共享权限。
  @JsonValue(2)
  screenCapture,
}

/// @nodoc
extension PermissionTypeExt on PermissionType {
  /// @nodoc
  static PermissionType fromValue(int value) {
    return $enumDecode(_$PermissionTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PermissionTypeEnumMap[this]!;
  }
}

/// 订阅状态。
@JsonEnum(alwaysCreate: true)
enum StreamSubscribeState {
  /// 0: 加入频道后的初始订阅状态。
  @JsonValue(0)
  subStateIdle,

  /// 1: 订阅失败。可能是因为：
  ///  远端用户：
  ///  调用 muteLocalAudioStream (true) 或 muteLocalVideoStream (true) 停止发送本地媒体流。
  ///  调用 disableAudio 或 disableVideo 关闭本地音频或视频模块。
  ///  调用 enableLocalAudio (false) 或 enableLocalVideo (false) 关闭本地音频或视频采集。
  ///  用户角色为观众。
  ///  本地用户调用以下方法停止接收远端媒体流：
  ///  调用 muteRemoteAudioStream (true)、 muteAllRemoteAudioStreams (true) 停止接收远端音频流。
  ///  调用 muteRemoteVideoStream (true)、 muteAllRemoteVideoStreams (true) 停止接收远端视频流。
  @JsonValue(1)
  subStateNoSubscribed,

  /// 2: 正在订阅。
  @JsonValue(2)
  subStateSubscribing,

  /// 3: 收到了远端流，订阅成功。
  @JsonValue(3)
  subStateSubscribed,
}

/// @nodoc
extension StreamSubscribeStateExt on StreamSubscribeState {
  /// @nodoc
  static StreamSubscribeState fromValue(int value) {
    return $enumDecode(_$StreamSubscribeStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$StreamSubscribeStateEnumMap[this]!;
  }
}

/// 发布状态。
@JsonEnum(alwaysCreate: true)
enum StreamPublishState {
  /// 0: 加入频道后的初始发布状态。
  @JsonValue(0)
  pubStateIdle,

  /// 1: 发布失败。可能是因为：
  ///  本地用户调用 muteLocalAudioStream (true) 或 muteLocalVideoStream (true) 停止发送本地媒体流。
  ///  本地用户调用 disableAudio 或 disableVideo 关闭本地音频或视频模块。
  ///  本地用户调用 enableLocalAudio (false) 或 enableLocalVideo (false) 关闭本地音频或视频采集。
  ///  本地用户角色为观众。
  @JsonValue(1)
  pubStateNoPublished,

  /// 2: 正在发布。
  @JsonValue(2)
  pubStatePublishing,

  /// 3: 发布成功。
  @JsonValue(3)
  pubStatePublished,
}

/// @nodoc
extension StreamPublishStateExt on StreamPublishState {
  /// @nodoc
  static StreamPublishState fromValue(int value) {
    return $enumDecode(_$StreamPublishStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$StreamPublishStateEnumMap[this]!;
  }
}

/// 音视频通话回路测试的配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EchoTestConfiguration implements AgoraSerializable {
  /// @nodoc
  const EchoTestConfiguration(
      {this.view,
      this.enableAudio,
      this.enableVideo,
      this.token,
      this.channelId,
      this.intervalInSeconds});

  /// 用于渲染本地用户视频的视图。该参数仅适用于测试视频设备的场景，请确保 enableVideo 为 true。
  @JsonKey(name: 'view', readValue: readIntPtr)
  final int? view;

  /// 是否开启音频设备： true : (默认) 开启音频设备。如需测试音频设备，请设为 true。 false : 关闭音频设备。
  @JsonKey(name: 'enableAudio')
  final bool? enableAudio;

  /// 是否开启视频设备。暂不支持视频设备检测，请将该参数设为 false 。
  @JsonKey(name: 'enableVideo')
  final bool? enableVideo;

  /// 用于保证音视频通话回路测试安全性的 Token。如果你在控制台未启用 App 证书，则不需要向该参数传值；如果你在控制台已启用 App 证书，则必须向该参数传入 Token，且在你生成 Token 时使用的 uid 必须为 0xFFFFFFFF，使用的频道名必须为标识每个音视频通话回路测试的频道名。服务端生成 Token 的方式请参考[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  @JsonKey(name: 'token')
  final String? token;

  /// 标识每个音视频通话回路测试的频道名。为保证回路测试功能正常，同一个项目（App ID） 的各终端用户在不同设备上做音视频通话回路测试时，传入的标识每个回路测试的频道名不能相同。
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// 设置返回音视频回路测试结果的时间间隔或延迟，取值范围为 [2,10]，单位为秒，默认为 2 秒。
  ///  对于音频回路测试，测试结果会根据你设置的时间间隔返回。
  ///  对于视频回路测试，视频画面会在短时间内显示，之后延迟会逐渐增加，直至达到你设置的延迟。
  @JsonKey(name: 'intervalInSeconds')
  final int? intervalInSeconds;

  /// @nodoc
  factory EchoTestConfiguration.fromJson(Map<String, dynamic> json) =>
      _$EchoTestConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EchoTestConfigurationToJson(this);
}

/// 用户的信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserInfo implements AgoraSerializable {
  /// @nodoc
  const UserInfo({this.uid, this.userAccount});

  /// 用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 用户 Account。长度限制为 MaxUserAccountLengthType 。
  @JsonKey(name: 'userAccount')
  final String? userAccount;

  /// @nodoc
  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}

/// 耳返 Audio filter 类型。
@JsonEnum(alwaysCreate: true)
enum EarMonitoringFilterType {
  /// 1<<0: 不在耳返中添加 Audio filter。
  @JsonValue((1 << 0))
  earMonitoringFilterNone,

  /// 1<<1: 在耳返中添加人声效果 Audio filter。如果你实现了美声、音效等功能，用户可以在耳返中听到添加效果后的声音。
  @JsonValue((1 << 1))
  earMonitoringFilterBuiltInAudioFilters,

  /// 1<<2: 在耳返中添加降噪 Audio filter。
  @JsonValue((1 << 2))
  earMonitoringFilterNoiseSuppression,

  /// 1<<15: 复用发送端已进行过音效处理的 Audio filter。通过复用 Audio filter 降低耳返对 CPU 的占用率，但会增加耳返延迟，适用于需要降低 CPU 消耗且对耳返延迟不敏感的场景。
  @JsonValue((1 << 15))
  earMonitoringFilterReusePostProcessingFilter,
}

/// @nodoc
extension EarMonitoringFilterTypeExt on EarMonitoringFilterType {
  /// @nodoc
  static EarMonitoringFilterType fromValue(int value) {
    return $enumDecode(_$EarMonitoringFilterTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EarMonitoringFilterTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum ThreadPriorityType {
  /// @nodoc
  @JsonValue(0)
  lowest,

  /// @nodoc
  @JsonValue(1)
  low,

  /// @nodoc
  @JsonValue(2)
  normal,

  /// @nodoc
  @JsonValue(3)
  high,

  /// @nodoc
  @JsonValue(4)
  highest,

  /// @nodoc
  @JsonValue(5)
  critical,
}

/// @nodoc
extension ThreadPriorityTypeExt on ThreadPriorityType {
  /// @nodoc
  static ThreadPriorityType fromValue(int value) {
    return $enumDecode(_$ThreadPriorityTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ThreadPriorityTypeEnumMap[this]!;
  }
}

/// 共享屏幕流的视频编码配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenVideoParameters implements AgoraSerializable {
  /// @nodoc
  const ScreenVideoParameters(
      {this.dimensions, this.frameRate, this.bitrate, this.contentHint});

  /// 视频编码的分辨率。默认值为 1280 × 720。
  @JsonKey(name: 'dimensions')
  final VideoDimensions? dimensions;

  /// 视频编码帧率 (fps)。默认值为 15。
  @JsonKey(name: 'frameRate')
  final int? frameRate;

  /// 视频编码码率 (Kbps)。
  @JsonKey(name: 'bitrate')
  final int? bitrate;

  /// 屏幕共享视频的内容类型。
  @JsonKey(name: 'contentHint')
  final VideoContentHint? contentHint;

  /// @nodoc
  factory ScreenVideoParameters.fromJson(Map<String, dynamic> json) =>
      _$ScreenVideoParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenVideoParametersToJson(this);
}

/// 屏幕共享的参数配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenCaptureParameters2 implements AgoraSerializable {
  /// @nodoc
  const ScreenCaptureParameters2(
      {this.captureAudio,
      this.audioParams,
      this.captureVideo,
      this.videoParams});

  /// 受系统限制，采集系统音频仅适用于 Android API 级别为 29 及以上，即 Android 10 及以上。
  ///  为提高屏幕共享时采集系统音频的成功率，请确保你已调用 setAudioScenario 方法并设置音频场景为 audioScenarioGameStreaming 。 屏幕共享时是否采集系统音频： true : 采集系统音频。 false : （默认）不采集系统音频。
  @JsonKey(name: 'captureAudio')
  final bool? captureAudio;

  /// 共享屏幕流的音频配置。详见 ScreenAudioParameters 。 该参数仅在 captureAudio 为 true 时生效。
  @JsonKey(name: 'audioParams')
  final ScreenAudioParameters? audioParams;

  /// 受系统限制，采集屏幕仅适用于 Android API 级别为 21 及以上，即 Android 5 及以上。 屏幕共享时是否采集屏幕： true :（默认）采集屏幕。 false : 不采集屏幕。
  @JsonKey(name: 'captureVideo')
  final bool? captureVideo;

  /// 共享屏幕流的视频编码配置。详见 ScreenVideoParameters 。 该参数仅在 captureVideo 为 true 时生效。
  @JsonKey(name: 'videoParams')
  final ScreenVideoParameters? videoParams;

  /// @nodoc
  factory ScreenCaptureParameters2.fromJson(Map<String, dynamic> json) =>
      _$ScreenCaptureParameters2FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenCaptureParameters2ToJson(this);
}

/// 媒体帧的渲染状态。
@JsonEnum(alwaysCreate: true)
enum MediaTraceEvent {
  /// 0：视频帧已被渲染。
  @JsonValue(0)
  mediaTraceEventVideoRendered,

  /// 1：视频帧已被解码。
  @JsonValue(1)
  mediaTraceEventVideoDecoded,
}

/// @nodoc
extension MediaTraceEventExt on MediaTraceEvent {
  /// @nodoc
  static MediaTraceEvent fromValue(int value) {
    return $enumDecode(_$MediaTraceEventEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaTraceEventEnumMap[this]!;
  }
}

/// 视频帧渲染过程中的指标信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoRenderingTracingInfo implements AgoraSerializable {
  /// @nodoc
  const VideoRenderingTracingInfo(
      {this.elapsedTime,
      this.start2JoinChannel,
      this.join2JoinSuccess,
      this.joinSuccess2RemoteJoined,
      this.remoteJoined2SetView,
      this.remoteJoined2UnmuteVideo,
      this.remoteJoined2PacketReceived});

  /// 从调用 startMediaRenderingTracing 到触发 onVideoRenderingTracingResult 回调的时间间隔 (ms)。建议在加入频道前调用 startMediaRenderingTracing 。
  @JsonKey(name: 'elapsedTime')
  final int? elapsedTime;

  /// 从调用 startMediaRenderingTracing 到调用 joinChannel 的时间间隔 (ms)。负数表示在调用 joinChannel 后调用 startMediaRenderingTracing 。
  @JsonKey(name: 'start2JoinChannel')
  final int? start2JoinChannel;

  /// 从调用 joinChannel1 或 joinChannel 到成功加入频道的时间间隔 (ms)。
  @JsonKey(name: 'join2JoinSuccess')
  final int? join2JoinSuccess;

  /// 如果本地用户在远端用户加入频道后调用 startMediaRenderingTracing ，则该值为 0，无参考意义。
  ///  为提升远端用户出图速度，建议远端用户加入频道中后，本地用户再加入频道，以降低该值。
  ///  如果本地用户成功加入频道前调用 startMediaRenderingTracing ，则该值为从本地用户成功加入频道到远端用户加入频道的时间间隔 (ms)。
  ///  如果本地用户成功加入频道后调用 startMediaRenderingTracing ，则该值为从调用 startMediaRenderingTracing 到远端用户加入频道的时间间隔 (ms)。
  @JsonKey(name: 'joinSuccess2RemoteJoined')
  final int? joinSuccess2RemoteJoined;

  /// 如果本地用户在设置远端视图后再调用 startMediaRenderingTracing ，则该值为 0，无参考意义。
  ///  为提升远端用户出图速度，建议在远端用户加入频道之前设置远端视图，或者远端用户加入频道后立即设置远端视图，以降低该值。
  ///  如果本地用户在远端用户加入频道前调用 startMediaRenderingTracing ，则该值为从远端用户加入频道到本地用户设置远端视图的时间间隔 (ms)。
  ///  如果本地用户在远端用户加入频道后调用 startMediaRenderingTracing ，则该值为从调用 startMediaRenderingTracing 到设置远端视图的时间间隔 (ms)。
  @JsonKey(name: 'remoteJoined2SetView')
  final int? remoteJoined2SetView;

  /// 如果在订阅远端视频流后再调用 startMediaRenderingTracing ，则该值为 0，无参考意义。
  ///  为提升远端用户出图速度，建议在远端用户加入频道后，本地用户立即订阅远端视频流，以降低该值。
  ///  如果本地用户在远端用户加入频道前调用 startMediaRenderingTracing ，则该值为从远端用户加入频道到订阅远端视频流的时间间隔 (ms)。
  ///  如果本地用户在远端用户加入频道后调用 startMediaRenderingTracing ，则该值为从调用 startMediaRenderingTracing 到订阅远端视频流的时间间隔 (ms)。
  @JsonKey(name: 'remoteJoined2UnmuteVideo')
  final int? remoteJoined2UnmuteVideo;

  /// 如果在接收到远端视频流后再调用 startMediaRenderingTracing ，则该值为 0，无参考意义。
  ///  为提升远端用户出图速度，建议在远端用户加入频道后立即发布视频流，本地用户立即订阅远端视频流，以降低该值。
  ///  如果本地用户在远端用户加入频道前调用 startMediaRenderingTracing ，则该值为从远端用户加入频道到本地用户接收到首个远端数据包的时间间隔 (ms)。
  ///  如果本地用户在远端用户加入频道后调用 startMediaRenderingTracing ，则该值为从调用 startMediaRenderingTracing 到接收到首个远端数据包的时间间隔 (ms)。
  @JsonKey(name: 'remoteJoined2PacketReceived')
  final int? remoteJoined2PacketReceived;

  /// @nodoc
  factory VideoRenderingTracingInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoRenderingTracingInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoRenderingTracingInfoToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum ConfigFetchType {
  /// @nodoc
  @JsonValue(1)
  configFetchTypeInitialize,

  /// @nodoc
  @JsonValue(2)
  configFetchTypeJoinChannel,
}

/// @nodoc
extension ConfigFetchTypeExt on ConfigFetchType {
  /// @nodoc
  static ConfigFetchType fromValue(int value) {
    return $enumDecode(_$ConfigFetchTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ConfigFetchTypeEnumMap[this]!;
  }
}

/// 与声网私有媒体服务器的连接模式。
@JsonEnum(alwaysCreate: true)
enum LocalProxyMode {
  /// 0：SDK 优先尝试连接指定的声网私有媒体服务器；如果无法连接到指定的声网私有媒体服务器，则连接声网 SD-RTN™。
  @JsonValue(0)
  connectivityFirst,

  /// 1：SDK 只尝试连接指定的声网私有媒体服务器。
  @JsonValue(1)
  localOnly,
}

/// @nodoc
extension LocalProxyModeExt on LocalProxyMode {
  /// @nodoc
  static LocalProxyMode fromValue(int value) {
    return $enumDecode(_$LocalProxyModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$LocalProxyModeEnumMap[this]!;
  }
}

/// 日志服务器的配置信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LogUploadServerInfo implements AgoraSerializable {
  /// @nodoc
  const LogUploadServerInfo(
      {this.serverDomain, this.serverPath, this.serverPort, this.serverHttps});

  /// 日志服务器的域名。
  @JsonKey(name: 'serverDomain')
  final String? serverDomain;

  /// 日志在服务器上的存储路径。
  @JsonKey(name: 'serverPath')
  final String? serverPath;

  /// 日志服务器的端口。
  @JsonKey(name: 'serverPort')
  final int? serverPort;

  /// 日志服务器是否使用 HTTPS 协议： true : 使用 HTTPS 协议。 false : 使用 HTTP 协议。
  @JsonKey(name: 'serverHttps')
  final bool? serverHttps;

  /// @nodoc
  factory LogUploadServerInfo.fromJson(Map<String, dynamic> json) =>
      _$LogUploadServerInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LogUploadServerInfoToJson(this);
}

/// Local Access Point 的高级选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdvancedConfigInfo implements AgoraSerializable {
  /// @nodoc
  const AdvancedConfigInfo({this.logUploadServer});

  /// 自定义的日志上传服务器。默认情况下，SDK 会将日志上传至声网日志服务器。你可以通过该参数修改日志上传的服务器。详见 LogUploadServerInfo 。
  @JsonKey(name: 'logUploadServer')
  final LogUploadServerInfo? logUploadServer;

  /// @nodoc
  factory AdvancedConfigInfo.fromJson(Map<String, dynamic> json) =>
      _$AdvancedConfigInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdvancedConfigInfoToJson(this);
}

/// Local Access Point 配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LocalAccessPointConfiguration implements AgoraSerializable {
  /// @nodoc
  const LocalAccessPointConfiguration(
      {this.ipList,
      this.ipListSize,
      this.domainList,
      this.domainListSize,
      this.verifyDomainName,
      this.mode,
      this.advancedConfig,
      this.disableAut});

  /// Local Access Point 的对内 IP 地址列表。ipList 和 domainList 必须至少填一个。
  @JsonKey(name: 'ipList')
  final List<String>? ipList;

  /// Local Access Point 对内 IP 地址的数量。该参数的值必须和你填入的 IP 地址的数量一致。
  @JsonKey(name: 'ipListSize')
  final int? ipListSize;

  /// Local Access Point 的域名列表。SDK 会根据你填入的域名解析出 Local Access Point 的 IP 地址。域名解析的超时时间为 10 秒。ipList 和 domainList 必须至少填一个。如果你同时指定 IP 地址和域名，SDK 会将根据域名解析出来的 IP 地址和你指定的 IP 地址合并、去重，然后随机连接一个 IP 来实现负载均衡。
  @JsonKey(name: 'domainList')
  final List<String>? domainList;

  /// Local Access Point 域名的数量。该参数的值必须和你填入的域名的数量一致。
  @JsonKey(name: 'domainListSize')
  final int? domainListSize;

  /// 内网证书验证域名。如果传值为空，则用 SDK 默认的证书验证域名 secure-edge.local 。
  @JsonKey(name: 'verifyDomainName')
  final String? verifyDomainName;

  /// 连接模式。详见 LocalProxyMode 。
  @JsonKey(name: 'mode')
  final LocalProxyMode? mode;

  /// Local Access Point 的高级选项。详见 AdvancedConfigInfo 。
  @JsonKey(name: 'advancedConfig')
  final AdvancedConfigInfo? advancedConfig;

  /// @nodoc
  @JsonKey(name: 'disableAut')
  final bool? disableAut;

  /// @nodoc
  factory LocalAccessPointConfiguration.fromJson(Map<String, dynamic> json) =>
      _$LocalAccessPointConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocalAccessPointConfigurationToJson(this);
}

/// 需录制的视频流类型。
@JsonEnum(alwaysCreate: true)
enum RecorderStreamType {
  /// 0: （默认）频道内的视频流。
  @JsonValue(0)
  rtc,

  /// 1: 加入频道前，在本地预览的视频流。
  @JsonValue(1)
  preview,
}

/// @nodoc
extension RecorderStreamTypeExt on RecorderStreamType {
  /// @nodoc
  static RecorderStreamType fromValue(int value) {
    return $enumDecode(_$RecorderStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RecorderStreamTypeEnumMap[this]!;
  }
}

/// 需录制的音视频流的相关信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RecorderStreamInfo implements AgoraSerializable {
  /// @nodoc
  const RecorderStreamInfo({this.channelId, this.uid, this.type});

  /// 需录制的频道名称。
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// 需录制的用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 需录制的视频流类型，详见 RecorderStreamType 。
  @JsonKey(name: 'type')
  final RecorderStreamType? type;

  /// @nodoc
  factory RecorderStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$RecorderStreamInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecorderStreamInfoToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum RdtStreamType {
  /// @nodoc
  @JsonValue(0)
  rdtStreamCmd,

  /// @nodoc
  @JsonValue(1)
  rdtStreamData,

  /// @nodoc
  @JsonValue(2)
  rdtStreamCount,
}

/// @nodoc
extension RdtStreamTypeExt on RdtStreamType {
  /// @nodoc
  static RdtStreamType fromValue(int value) {
    return $enumDecode(_$RdtStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RdtStreamTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum RdtState {
  /// @nodoc
  @JsonValue(0)
  rdtStateClosed,

  /// @nodoc
  @JsonValue(1)
  rdtStateOpened,

  /// @nodoc
  @JsonValue(2)
  rdtStateBlocked,

  /// @nodoc
  @JsonValue(3)
  rdtStatePending,

  /// @nodoc
  @JsonValue(4)
  rdtStateBroken,
}

/// @nodoc
extension RdtStateExt on RdtState {
  /// @nodoc
  static RdtState fromValue(int value) {
    return $enumDecode(_$RdtStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RdtStateEnumMap[this]!;
  }
}

/// 空间音频参数。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SpatialAudioParams implements AgoraSerializable {
  /// @nodoc
  const SpatialAudioParams(
      {this.speakerAzimuth,
      this.speakerElevation,
      this.speakerDistance,
      this.speakerOrientation,
      this.enableBlur,
      this.enableAirAbsorb,
      this.speakerAttenuation,
      this.enableDoppler});

  /// @nodoc
  @JsonKey(name: 'speaker_azimuth')
  final double? speakerAzimuth;

  /// @nodoc
  @JsonKey(name: 'speaker_elevation')
  final double? speakerElevation;

  /// @nodoc
  @JsonKey(name: 'speaker_distance')
  final double? speakerDistance;

  /// @nodoc
  @JsonKey(name: 'speaker_orientation')
  final int? speakerOrientation;

  /// @nodoc
  @JsonKey(name: 'enable_blur')
  final bool? enableBlur;

  /// @nodoc
  @JsonKey(name: 'enable_air_absorb')
  final bool? enableAirAbsorb;

  /// @nodoc
  @JsonKey(name: 'speaker_attenuation')
  final double? speakerAttenuation;

  /// @nodoc
  @JsonKey(name: 'enable_doppler')
  final bool? enableDoppler;

  /// @nodoc
  factory SpatialAudioParams.fromJson(Map<String, dynamic> json) =>
      _$SpatialAudioParamsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SpatialAudioParamsToJson(this);
}

/// 某一路合图子视频流的布局信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoLayout implements AgoraSerializable {
  /// @nodoc
  const VideoLayout(
      {this.channelId,
      this.uid,
      this.strUid,
      this.x,
      this.y,
      this.width,
      this.height,
      this.videoState});

  /// 合图子视频流所属的频道名。
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// 发布该合图子视频流的用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 预留参数。
  @JsonKey(name: 'strUid')
  final String? strUid;

  /// 合图子视频在合图画布上的 x 坐标 (px)。即合图子视频的左上角相对于合图画布左上角（原点）的横向位移。
  @JsonKey(name: 'x')
  final int? x;

  /// 合图子视频在合图画布上的 y 坐标 (px)。即合图子视频的左上角相对于合图画布左上角（原点）的纵向位移。
  @JsonKey(name: 'y')
  final int? y;

  /// 合图子视频流的宽度 (px)。
  @JsonKey(name: 'width')
  final int? width;

  /// 合图子视频流的高度 (px)
  @JsonKey(name: 'height')
  final int? height;

  /// 合图子视频流在合图画布上的状态。
  ///  0：正常。该视频流已被渲染到合图画布。
  ///  1：占位图。该视频流无视频画面，在合图画布中显示为占位符。
  ///  2：黑色图片。该视频流被黑色图片替代。
  @JsonKey(name: 'videoState')
  final int? videoState;

  /// @nodoc
  factory VideoLayout.fromJson(Map<String, dynamic> json) =>
      _$VideoLayoutFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoLayoutToJson(this);
}
