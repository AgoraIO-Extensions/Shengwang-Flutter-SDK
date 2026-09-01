import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_media_base.g.dart';

/// @nodoc
const invalidTrackId = 0xffffffff;

/// @nodoc
const defaultConnectionId = 0;

/// @nodoc
const dummyConnectionId = 4294967295;

/// 插件上下文信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExtensionContext implements AgoraSerializable {
  /// @nodoc
  const ExtensionContext(
      {this.isValid, this.uid, this.providerName, this.extensionName});

  /// ExtensionContext 中报告的 uid 是否有效： true ： uid 有效。 false ： uid 无效。
  @JsonKey(name: 'isValid')
  final bool? isValid;

  /// 用户 ID。0 代表本地用户，大于 0 代表远端用户。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 提供插件的服务商名称。
  @JsonKey(name: 'providerName')
  final String? providerName;

  /// 插件的名称。
  @JsonKey(name: 'extensionName')
  final String? extensionName;

  /// @nodoc
  factory ExtensionContext.fromJson(Map<String, dynamic> json) =>
      _$ExtensionContextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExtensionContextToJson(this);
}

/// 视频源的类型。
@JsonEnum(alwaysCreate: true)
enum VideoSourceType {
  /// 0：（默认）视频源为第一个摄像头。
  @JsonValue(0)
  videoSourceCameraPrimary,

  /// 0：（默认）视频源为第一个摄像头。
  @JsonValue(0)
  videoSourceCamera,

  /// 1：视频源为第二个摄像头。
  @JsonValue(1)
  videoSourceCameraSecondary,

  /// 2：视频源为第一个屏幕。
  @JsonValue(2)
  videoSourceScreenPrimary,

  /// 2：视频源为第一个屏幕。
  @JsonValue(2)
  videoSourceScreen,

  /// 3：视频源为第二个屏幕。
  @JsonValue(3)
  videoSourceScreenSecondary,

  /// 4：自定义的视频源。
  @JsonValue(4)
  videoSourceCustom,

  /// 5：视频源为媒体播放器。
  @JsonValue(5)
  videoSourceMediaPlayer,

  /// 6：视频源为 PNG 图片。
  @JsonValue(6)
  videoSourceRtcImagePng,

  /// 7：视频源为 JPEG 图片。
  @JsonValue(7)
  videoSourceRtcImageJpeg,

  /// 8：视频源为 GIF 图片。
  @JsonValue(8)
  videoSourceRtcImageGif,

  /// 9：视频源为网络获取的远端视频。
  @JsonValue(9)
  videoSourceRemote,

  /// 10：转码后的视频源。
  @JsonValue(10)
  videoSourceTranscoded,

  /// 11：（仅适用于 Android、Windows 和 macOS）视频源为第三个摄像头。
  @JsonValue(11)
  videoSourceCameraThird,

  /// 12：（仅适用于 Android、Windows 和 macOS）视频源为第四个摄像头。
  @JsonValue(12)
  videoSourceCameraFourth,

  /// 13：（仅适用于 Windows 和 macOS）视频源为第三个屏幕。
  @JsonValue(13)
  videoSourceScreenThird,

  /// 14：（仅适用于 Windows 和 macOS）视频源为第四个屏幕。
  @JsonValue(14)
  videoSourceScreenFourth,

  /// 15：视频源为语音驱动插件处理后的视频。
  @JsonValue(15)
  videoSourceSpeechDriven,

  /// 100：未知的视频源。
  @JsonValue(100)
  videoSourceUnknown,
}

/// @nodoc
extension VideoSourceTypeExt on VideoSourceType {
  /// @nodoc
  static VideoSourceType fromValue(int value) {
    return $enumDecode(_$VideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoSourceTypeEnumMap[this]!;
  }
}

/// 音频源类型。
@JsonEnum(alwaysCreate: true)
enum AudioSourceType {
  /// 0：（默认）麦克风。
  @JsonValue(0)
  audioSourceMicrophone,

  /// 1：自定义采集到的音频流。
  @JsonValue(1)
  audioSourceCustom,

  /// 2：媒体播放器。
  @JsonValue(2)
  audioSourceMediaPlayer,

  /// 3：在屏幕共享时采集的系统音频流。
  @JsonValue(3)
  audioSourceLoopbackRecording,

  /// @nodoc
  @JsonValue(4)
  audioSourceMixedStream,

  /// 5：指定远端用户的音频流。
  @JsonValue(5)
  audioSourceRemoteUser,

  /// 6：当前频道内所有音频流的合流。
  @JsonValue(6)
  audioSourceRemoteChannel,

  /// 100：未知的音频源。
  @JsonValue(100)
  audioSourceUnknown,
}

/// @nodoc
extension AudioSourceTypeExt on AudioSourceType {
  /// @nodoc
  static AudioSourceType fromValue(int value) {
    return $enumDecode(_$AudioSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioSourceTypeEnumMap[this]!;
  }
}

/// 音频路由的类型。
@JsonEnum(alwaysCreate: true)
enum AudioRoute {
  /// -1: 使用默认的音频路由。
  @JsonValue(-1)
  routeDefault,

  /// 0: 音频路由为带麦克风的耳机。
  @JsonValue(0)
  routeHeadset,

  /// 1: 音频路由为听筒。
  @JsonValue(1)
  routeEarpiece,

  /// 2: 音频路由为不带麦克风的耳机。
  @JsonValue(2)
  routeHeadsetnomic,

  /// 3: 音频路由为设备自带的扬声器。
  @JsonValue(3)
  routeSpeakerphone,

  /// 4: 音频路由为外接的扬声器。（仅适用于 iOS 和 macOS）
  @JsonValue(4)
  routeLoudspeaker,

  /// @nodoc
  @JsonValue(5)
  routeBluetoothDeviceHfp,

  /// 6: 音频路由为 USB 外围设备。（仅适用于 macOS）
  @JsonValue(6)
  routeUsb,

  /// 7: 音频路由为 HDMI 外围设备。（仅适用于 macOS）
  @JsonValue(7)
  routeHdmi,

  /// 8: 音频路由为 DisplayPort 外围设备。（仅适用于 macOS）
  @JsonValue(8)
  routeDisplayport,

  /// 9: 音频路由为 Apple AirPlay。（仅适用于 macOS）
  @JsonValue(9)
  routeAirplay,

  /// @nodoc
  @JsonValue(10)
  routeBluetoothDeviceA2dp,
}

/// @nodoc
extension AudioRouteExt on AudioRoute {
  /// @nodoc
  static AudioRoute fromValue(int value) {
    return $enumDecode(_$AudioRouteEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioRouteEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum BytesPerSample {
  /// @nodoc
  @JsonValue(2)
  twoBytesPerSample,
}

/// @nodoc
extension BytesPerSampleExt on BytesPerSample {
  /// @nodoc
  static BytesPerSample fromValue(int value) {
    return $enumDecode(_$BytesPerSampleEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$BytesPerSampleEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioParameters implements AgoraSerializable {
  /// @nodoc
  const AudioParameters({this.sampleRate, this.channels, this.framesPerBuffer});

  /// @nodoc
  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  /// @nodoc
  @JsonKey(name: 'channels')
  final int? channels;

  /// @nodoc
  @JsonKey(name: 'frames_per_buffer')
  final int? framesPerBuffer;

  /// @nodoc
  factory AudioParameters.fromJson(Map<String, dynamic> json) =>
      _$AudioParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioParametersToJson(this);
}

/// 音频数据的使用模式。
@JsonEnum(alwaysCreate: true)
enum RawAudioFrameOpModeType {
  /// 0: (默认) 只读模式，例如: 若用户通过 SDK 采集数据，自己进行旁路推流，则可以选择该模式。
  @JsonValue(0)
  rawAudioFrameOpModeReadOnly,

  /// 2: 读写模式, 例如: 若用户自己有音效处理模块，且想要根据实际需要对数据进行前处理(例如变声)，则可以选择该模式。
  @JsonValue(2)
  rawAudioFrameOpModeReadWrite,
}

/// @nodoc
extension RawAudioFrameOpModeTypeExt on RawAudioFrameOpModeType {
  /// @nodoc
  static RawAudioFrameOpModeType fromValue(int value) {
    return $enumDecode(_$RawAudioFrameOpModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RawAudioFrameOpModeTypeEnumMap[this]!;
  }
}

/// 媒体源类型。
@JsonEnum(alwaysCreate: true)
enum MediaSourceType {
  /// 0: 音频播放设备。
  @JsonValue(0)
  audioPlayoutSource,

  /// 1: 音频采集设备。
  @JsonValue(1)
  audioRecordingSource,

  /// 2: 第一个摄像头
  @JsonValue(2)
  primaryCameraSource,

  /// 3: 第二个摄像头。
  @JsonValue(3)
  secondaryCameraSource,

  /// @nodoc
  @JsonValue(4)
  primaryScreenSource,

  /// @nodoc
  @JsonValue(5)
  secondaryScreenSource,

  /// 6: 自定义采集的视频源。
  @JsonValue(6)
  customVideoSource,

  /// @nodoc
  @JsonValue(7)
  mediaPlayerSource,

  /// @nodoc
  @JsonValue(8)
  rtcImagePngSource,

  /// @nodoc
  @JsonValue(9)
  rtcImageJpegSource,

  /// @nodoc
  @JsonValue(10)
  rtcImageGifSource,

  /// @nodoc
  @JsonValue(11)
  remoteVideoSource,

  /// @nodoc
  @JsonValue(12)
  transcodedVideoSource,

  /// 13: 视频源为语音驱动插件处理后的视频。
  @JsonValue(13)
  speechDrivenVideoSource,

  /// 100: 未知媒体源。
  @JsonValue(100)
  unknownMediaSource,
}

/// @nodoc
extension MediaSourceTypeExt on MediaSourceType {
  /// @nodoc
  static MediaSourceType fromValue(int value) {
    return $enumDecode(_$MediaSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaSourceTypeEnumMap[this]!;
  }
}

/// @nodoc
const kMaxCodecNameLength = 50;

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PacketOptions implements AgoraSerializable {
  /// @nodoc
  const PacketOptions({this.timestamp, this.audioLevelIndication});

  /// @nodoc
  @JsonKey(name: 'timestamp')
  final int? timestamp;

  /// @nodoc
  @JsonKey(name: 'audioLevelIndication')
  final int? audioLevelIndication;

  /// @nodoc
  factory PacketOptions.fromJson(Map<String, dynamic> json) =>
      _$PacketOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PacketOptionsToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioEncodedFrameInfo implements AgoraSerializable {
  /// @nodoc
  const AudioEncodedFrameInfo({this.sendTs, this.codec});

  /// @nodoc
  @JsonKey(name: 'sendTs')
  final int? sendTs;

  /// @nodoc
  @JsonKey(name: 'codec')
  final int? codec;

  /// @nodoc
  factory AudioEncodedFrameInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioEncodedFrameInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioEncodedFrameInfoToJson(this);
}

/// 外部 PCM 格式音频帧的信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioPcmFrame implements AgoraSerializable {
  /// @nodoc
  const AudioPcmFrame(
      {this.captureTimestamp,
      this.samplesPerChannel,
      this.sampleRateHz,
      this.numChannels,
      this.audioTrackNumber,
      this.bytesPerSample,
      this.data,
      this.isStereo});

  /// 音频帧的时间戳 (ms)。
  @JsonKey(name: 'capture_timestamp')
  final int? captureTimestamp;

  /// 每个声道的采样点数。
  @JsonKey(name: 'samples_per_channel_')
  final int? samplesPerChannel;

  /// 音频采样率 (Hz)。
  @JsonKey(name: 'sample_rate_hz_')
  final int? sampleRateHz;

  /// 音频声道数。
  @JsonKey(name: 'num_channels_')
  final int? numChannels;

  /// @nodoc
  @JsonKey(name: 'audio_track_number_')
  final int? audioTrackNumber;

  /// 音频数据的字节数。
  @JsonKey(name: 'bytes_per_sample')
  final BytesPerSample? bytesPerSample;

  /// 音频帧数据。
  @JsonKey(name: 'data_')
  final List<int>? data;

  /// @nodoc
  @JsonKey(name: 'is_stereo_')
  final bool? isStereo;

  /// @nodoc
  factory AudioPcmFrame.fromJson(Map<String, dynamic> json) =>
      _$AudioPcmFrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioPcmFrameToJson(this);
}

/// 声道模式。
@JsonEnum(alwaysCreate: true)
enum AudioDualMonoMode {
  /// 0: 原始模式。
  @JsonValue(0)
  audioDualMonoStereo,

  /// 1: 左声道模式。该模式用左声道的音频替换右声道的音频，即用户只能听到左声道的音频。
  @JsonValue(1)
  audioDualMonoL,

  /// 2: 右声道模式。该模式用右声道的音频替换左声道的音频，即用户只能听到右声道的音频。
  @JsonValue(2)
  audioDualMonoR,

  /// 3: 混合模式。该模式将左右声道的数据叠加，即用户能同时听到左声道和右声道的音频。
  @JsonValue(3)
  audioDualMonoMix,
}

/// @nodoc
extension AudioDualMonoModeExt on AudioDualMonoMode {
  /// @nodoc
  static AudioDualMonoMode fromValue(int value) {
    return $enumDecode(_$AudioDualMonoModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioDualMonoModeEnumMap[this]!;
  }
}

/// 视频像素格式。
@JsonEnum(alwaysCreate: true)
enum VideoPixelFormat {
  /// 0: 原始视频像素格式。
  @JsonValue(0)
  videoPixelDefault,

  /// 1: I420 格式。
  @JsonValue(1)
  videoPixelI420,

  /// @nodoc
  @JsonValue(2)
  videoPixelBgra,

  /// @nodoc
  @JsonValue(3)
  videoPixelNv21,

  /// 4: RGBA 格式。
  @JsonValue(4)
  videoPixelRgba,

  /// @nodoc
  @JsonValue(8)
  videoPixelNv12,

  /// @nodoc
  @JsonValue(10)
  videoTexture2d,

  /// @nodoc
  @JsonValue(11)
  videoTextureOes,

  /// @nodoc
  @JsonValue(12)
  videoCvpixelNv12,

  /// @nodoc
  @JsonValue(13)
  videoCvpixelI420,

  /// @nodoc
  @JsonValue(14)
  videoCvpixelBgra,

  /// @nodoc
  @JsonValue(15)
  videoCvpixelP010,

  /// 16: I422 格式。
  @JsonValue(16)
  videoPixelI422,

  /// 17: ID3D11TEXTURE2D 格式。目前支持的类型有 DXGI_FORMAT_B8G8R8A8_UNORM 、 DXGI_FORMAT_B8G8R8A8_TYPELESS 和 DXGI_FORMAT_NV12 。
  @JsonValue(17)
  videoTextureId3d11texture2d,

  /// @nodoc
  @JsonValue(18)
  videoPixelI010,
}

/// @nodoc
extension VideoPixelFormatExt on VideoPixelFormat {
  /// @nodoc
  static VideoPixelFormat fromValue(int value) {
    return $enumDecode(_$VideoPixelFormatEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoPixelFormatEnumMap[this]!;
  }
}

/// 视频显示模式。
@JsonEnum(alwaysCreate: true)
enum RenderModeType {
  /// 1: 视频尺寸等比缩放。优先保证视窗被填满。因视频尺寸与显示视窗尺寸不一致而多出的视频将被截掉。
  @JsonValue(1)
  renderModeHidden,

  /// 2: 视频尺寸等比缩放。优先保证视频内容全部显示。因视频尺寸与显示视窗尺寸不一致造成的视窗未被填满的区域填充黑色。
  @JsonValue(2)
  renderModeFit,

  /// 3：匹配模式。 弃用：该枚举已废弃，不推荐使用。
  @JsonValue(3)
  renderModeAdaptive,
}

/// @nodoc
extension RenderModeTypeExt on RenderModeType {
  /// @nodoc
  static RenderModeType fromValue(int value) {
    return $enumDecode(_$RenderModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RenderModeTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum CameraVideoSourceType {
  /// @nodoc
  @JsonValue(0)
  cameraSourceFront,

  /// @nodoc
  @JsonValue(1)
  cameraSourceBack,

  /// @nodoc
  @JsonValue(2)
  videoSourceUnspecified,
}

/// @nodoc
extension CameraVideoSourceTypeExt on CameraVideoSourceType {
  /// @nodoc
  static CameraVideoSourceType fromValue(int value) {
    return $enumDecode(_$CameraVideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraVideoSourceTypeEnumMap[this]!;
  }
}

/// @nodoc
abstract class VideoFrameMetaInfo {
  /// @nodoc
  Future<String> getMetaInfoStr(MetaInfoKey key);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum MetaInfoKey {
  /// @nodoc
  @JsonValue(0)
  keyFaceCapture,
}

/// @nodoc
extension MetaInfoKeyExt on MetaInfoKey {
  /// @nodoc
  static MetaInfoKey fromValue(int value) {
    return $enumDecode(_$MetaInfoKeyEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MetaInfoKeyEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ColorSpace implements AgoraSerializable {
  /// @nodoc
  const ColorSpace({this.primaries, this.transfer, this.matrix, this.range});

  /// @nodoc
  @JsonKey(name: 'primaries')
  final PrimaryID? primaries;

  /// @nodoc
  @JsonKey(name: 'transfer')
  final TransferID? transfer;

  /// @nodoc
  @JsonKey(name: 'matrix')
  final MatrixID? matrix;

  /// @nodoc
  @JsonKey(name: 'range')
  final RangeID? range;

  /// @nodoc
  factory ColorSpace.fromJson(Map<String, dynamic> json) =>
      _$ColorSpaceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ColorSpaceToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum PrimaryID {
  /// @nodoc
  @JsonValue(1)
  primaryidBt709,

  /// @nodoc
  @JsonValue(2)
  primaryidUnspecified,

  /// @nodoc
  @JsonValue(4)
  primaryidBt470m,

  /// @nodoc
  @JsonValue(5)
  primaryidBt470bg,

  /// @nodoc
  @JsonValue(6)
  primaryidSmpte170m,

  /// @nodoc
  @JsonValue(7)
  primaryidSmpte240m,

  /// @nodoc
  @JsonValue(8)
  primaryidFilm,

  /// @nodoc
  @JsonValue(9)
  primaryidBt2020,

  /// @nodoc
  @JsonValue(10)
  primaryidSmptest428,

  /// @nodoc
  @JsonValue(11)
  primaryidSmptest431,

  /// @nodoc
  @JsonValue(12)
  primaryidSmptest432,

  /// @nodoc
  @JsonValue(22)
  primaryidJedecp22,
}

/// @nodoc
extension PrimaryIDExt on PrimaryID {
  /// @nodoc
  static PrimaryID fromValue(int value) {
    return $enumDecode(_$PrimaryIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PrimaryIDEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum RangeID {
  /// @nodoc
  @JsonValue(0)
  rangeidInvalid,

  /// @nodoc
  @JsonValue(1)
  rangeidLimited,

  /// @nodoc
  @JsonValue(2)
  rangeidFull,

  /// @nodoc
  @JsonValue(3)
  rangeidDerived,
}

/// @nodoc
extension RangeIDExt on RangeID {
  /// @nodoc
  static RangeID fromValue(int value) {
    return $enumDecode(_$RangeIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RangeIDEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum MatrixID {
  /// @nodoc
  @JsonValue(0)
  matrixidRgb,

  /// @nodoc
  @JsonValue(1)
  matrixidBt709,

  /// @nodoc
  @JsonValue(2)
  matrixidUnspecified,

  /// @nodoc
  @JsonValue(4)
  matrixidFcc,

  /// @nodoc
  @JsonValue(5)
  matrixidBt470bg,

  /// @nodoc
  @JsonValue(6)
  matrixidSmpte170m,

  /// @nodoc
  @JsonValue(7)
  matrixidSmpte240m,

  /// @nodoc
  @JsonValue(8)
  matrixidYcocg,

  /// @nodoc
  @JsonValue(9)
  matrixidBt2020Ncl,

  /// @nodoc
  @JsonValue(10)
  matrixidBt2020Cl,

  /// @nodoc
  @JsonValue(11)
  matrixidSmpte2085,

  /// @nodoc
  @JsonValue(12)
  matrixidCdncls,

  /// @nodoc
  @JsonValue(13)
  matrixidCdcls,

  /// @nodoc
  @JsonValue(14)
  matrixidBt2100Ictcp,
}

/// @nodoc
extension MatrixIDExt on MatrixID {
  /// @nodoc
  static MatrixID fromValue(int value) {
    return $enumDecode(_$MatrixIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MatrixIDEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum TransferID {
  /// @nodoc
  @JsonValue(1)
  transferidBt709,

  /// @nodoc
  @JsonValue(2)
  transferidUnspecified,

  /// @nodoc
  @JsonValue(4)
  transferidGamma22,

  /// @nodoc
  @JsonValue(5)
  transferidGamma28,

  /// @nodoc
  @JsonValue(6)
  transferidSmpte170m,

  /// @nodoc
  @JsonValue(7)
  transferidSmpte240m,

  /// @nodoc
  @JsonValue(8)
  transferidLinear,

  /// @nodoc
  @JsonValue(9)
  transferidLog,

  /// @nodoc
  @JsonValue(10)
  transferidLogSqrt,

  /// @nodoc
  @JsonValue(11)
  transferidIec6196624,

  /// @nodoc
  @JsonValue(12)
  transferidBt1361Ecg,

  /// @nodoc
  @JsonValue(13)
  transferidIec6196621,

  /// @nodoc
  @JsonValue(14)
  transferidBt202010,

  /// @nodoc
  @JsonValue(15)
  transferidBt202012,

  /// @nodoc
  @JsonValue(16)
  transferidSmptest2084,

  /// @nodoc
  @JsonValue(17)
  transferidSmptest428,

  /// @nodoc
  @JsonValue(18)
  transferidAribStdB67,
}

/// @nodoc
extension TransferIDExt on TransferID {
  /// @nodoc
  static TransferID fromValue(int value) {
    return $enumDecode(_$TransferIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$TransferIDEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Hdr10MetadataInfo implements AgoraSerializable {
  /// @nodoc
  const Hdr10MetadataInfo(
      {this.redPrimaryX,
      this.redPrimaryY,
      this.greenPrimaryX,
      this.greenPrimaryY,
      this.bluePrimaryX,
      this.bluePrimaryY,
      this.whitePointX,
      this.whitePointY,
      this.maxMasteringLuminance,
      this.minMasteringLuminance,
      this.maxContentLightLevel,
      this.maxFrameAverageLightLevel});

  /// @nodoc
  @JsonKey(name: 'redPrimaryX')
  final int? redPrimaryX;

  /// @nodoc
  @JsonKey(name: 'redPrimaryY')
  final int? redPrimaryY;

  /// @nodoc
  @JsonKey(name: 'greenPrimaryX')
  final int? greenPrimaryX;

  /// @nodoc
  @JsonKey(name: 'greenPrimaryY')
  final int? greenPrimaryY;

  /// @nodoc
  @JsonKey(name: 'bluePrimaryX')
  final int? bluePrimaryX;

  /// @nodoc
  @JsonKey(name: 'bluePrimaryY')
  final int? bluePrimaryY;

  /// @nodoc
  @JsonKey(name: 'whitePointX')
  final int? whitePointX;

  /// @nodoc
  @JsonKey(name: 'whitePointY')
  final int? whitePointY;

  /// @nodoc
  @JsonKey(name: 'maxMasteringLuminance')
  final int? maxMasteringLuminance;

  /// @nodoc
  @JsonKey(name: 'minMasteringLuminance')
  final int? minMasteringLuminance;

  /// @nodoc
  @JsonKey(name: 'maxContentLightLevel')
  final int? maxContentLightLevel;

  /// @nodoc
  @JsonKey(name: 'maxFrameAverageLightLevel')
  final int? maxFrameAverageLightLevel;

  /// @nodoc
  factory Hdr10MetadataInfo.fromJson(Map<String, dynamic> json) =>
      _$Hdr10MetadataInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$Hdr10MetadataInfoToJson(this);
}

/// alphaBuffer 和视频帧的相对位置。
@JsonEnum(alwaysCreate: true)
enum AlphaStitchMode {
  /// 0：（默认）仅视频帧，即 alphaBuffer 不和视频帧拼接。
  @JsonValue(0)
  noAlphaStitch,

  /// 1： alphaBuffer 位于视频帧的上方。
  @JsonValue(1)
  alphaStitchUp,

  /// 2： alphaBuffer 位于视频帧的下方。
  @JsonValue(2)
  alphaStitchBelow,

  /// 3： alphaBuffer 位于视频帧的左侧。
  @JsonValue(3)
  alphaStitchLeft,

  /// 4： alphaBuffer 位于视频帧的右侧。
  @JsonValue(4)
  alphaStitchRight,
}

/// @nodoc
extension AlphaStitchModeExt on AlphaStitchMode {
  /// @nodoc
  static AlphaStitchMode fromValue(int value) {
    return $enumDecode(_$AlphaStitchModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AlphaStitchModeEnumMap[this]!;
  }
}

/// 外部视频帧。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExternalVideoFrame implements AgoraSerializable {
  /// @nodoc
  const ExternalVideoFrame(
      {this.type,
      this.format,
      this.buffer,
      this.stride,
      this.height,
      this.cropLeft,
      this.cropTop,
      this.cropRight,
      this.cropBottom,
      this.rotation,
      this.timestamp,
      this.eglType,
      this.textureId,
      this.fenceObject,
      this.matrix,
      this.metadataBuffer,
      this.metadataSize,
      this.alphaBuffer,
      this.fillAlphaBuffer,
      this.alphaStitchMode,
      this.d3d11Texture2d,
      this.textureSliceIndex,
      this.hdr10MetadataInfo,
      this.colorSpace});

  /// 视频类型。详见 VideoBufferType 。
  @JsonKey(name: 'type')
  final VideoBufferType? type;

  /// 像素格式。详见 VideoPixelFormat 。
  @JsonKey(name: 'format')
  final VideoPixelFormat? format;

  /// 视频缓冲区。
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// 传入视频帧的行间距，单位为像素而不是字节。对于 Texture，该值指的是 Texture 的宽度。
  @JsonKey(name: 'stride')
  final int? stride;

  /// 传入视频帧的高度。
  @JsonKey(name: 'height')
  final int? height;

  /// 该参数仅适用于原始视频数据。
  @JsonKey(name: 'cropLeft')
  final int? cropLeft;

  /// 该参数仅适用于原始视频数据。
  @JsonKey(name: 'cropTop')
  final int? cropTop;

  /// 该参数仅适用于原始视频数据。
  @JsonKey(name: 'cropRight')
  final int? cropRight;

  /// 该参数仅适用于原始视频数据。
  @JsonKey(name: 'cropBottom')
  final int? cropBottom;

  /// 原始数据相关字段。指定是否对传入的视频组做顺时针旋转操作，可选值为 0， 90， 180， 270。默认为 0。
  @JsonKey(name: 'rotation')
  final int? rotation;

  /// 传入的视频帧的时间戳，以毫秒为单位。不正确的时间戳会导致丢帧或者音视频不同步。
  @JsonKey(name: 'timestamp')
  final int? timestamp;

  /// 该参数仅适用于 Texture 格式的视频数据。指该视频帧的 Texture ID。
  @JsonKey(name: 'eglType')
  final EglContextType? eglType;

  /// 该参数仅适用于 Texture 格式的视频数据。为一个输入的 4x4 变换矩阵，典型值为一个单位矩阵。
  @JsonKey(name: 'textureId')
  final int? textureId;

  /// @nodoc
  @JsonKey(name: 'fenceObject')
  final int? fenceObject;

  /// 该参数仅适用于 Texture 格式的视频数据。为一个输入的 4x4 变换矩阵，典型值为一个单位矩阵。
  @JsonKey(name: 'matrix')
  final List<double>? matrix;

  /// 该参数仅适用于 Texture 格式的视频数据。指 MetaData 的数据缓冲区，默认值为 NULL 。
  @JsonKey(name: 'metadataBuffer', ignore: true)
  final Uint8List? metadataBuffer;

  /// 该参数仅适用于 Texture 格式的视频数据。指 MetaData 的大小，默认值为 0 。
  @JsonKey(name: 'metadataSize')
  final int? metadataSize;

  /// 采用人像分割算法输出的 Alpha 通道数据。该数据跟视频帧的尺寸一致，每个像素点的取值范围为 [0,255]，其中 0 代表背景；255 代表前景（人像）。
  /// 你可以通过设置该参数，实现将视频背景自渲染为各种效果，例如：透明、纯色、图片、视频等。 在自定义视频渲染场景下，需确保传入的视频帧和 alphaBuffer 均为 Full Range 类型；其他类型可能导致 Alpha 数据渲染不正常。
  @JsonKey(name: 'alphaBuffer', ignore: true)
  final Uint8List? alphaBuffer;

  /// 对于 BGRA 或 RGBA 格式的视频数据，你可以任选一种方式设置 Alpha 通道数据：
  ///  通过将该参数设置为 true 自动填写。
  ///  通过 alphaBuffer 参数设置。 该参数仅适用于 BGRA 或 RGBA 格式的视频数据。设置是否提取视频帧中的 Alpha 通道数据并自动填入到 alphaBuffer 中： true ：提取并填充 Alpha 通道数据。 false ：（默认）不提取填充 Alpha 通道数据。
  @JsonKey(name: 'fillAlphaBuffer')
  final bool? fillAlphaBuffer;

  /// 当视频帧中包含 Alpha 通道数据时，设置 alphaBuffer 和视频帧的相对位置。详见 AlphaStitchMode 。
  @JsonKey(name: 'alphaStitchMode')
  final AlphaStitchMode? alphaStitchMode;

  /// 该参数仅适用于 Windows Texture 格式的视频数据。表示一个指向 ID3D11Texture2D 类型对象的指针，该类型对象被视频帧所使用。
  @JsonKey(name: 'd3d11Texture2d', readValue: readIntPtr)
  final int? d3d11Texture2d;

  /// 该参数仅适用于 Windows Texture 格式的视频数据。表示在 ID3D11Texture2D 数组中，被视频帧使用的某一个 ID3D11Texture2D 纹理对象的索引。
  @JsonKey(name: 'textureSliceIndex')
  final int? textureSliceIndex;

  /// @nodoc
  @JsonKey(name: 'hdr10MetadataInfo')
  final Hdr10MetadataInfo? hdr10MetadataInfo;

  /// 视频帧的色彩空间属性，默认情况下会应用 Full Range 和 BT.709 标准配置。你可以根据自定义采集、自定义渲染的业务需求进行自定义设置，详见 [VideoColorSpace](https://developer.mozilla.org/en-US/docs/Web/API/VideoColorSpace)。
  @JsonKey(name: 'colorSpace')
  final ColorSpace? colorSpace;

  /// @nodoc
  factory ExternalVideoFrame.fromJson(Map<String, dynamic> json) =>
      _$ExternalVideoFrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExternalVideoFrameToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum EglContextType {
  /// @nodoc
  @JsonValue(0)
  eglContext10,

  /// @nodoc
  @JsonValue(1)
  eglContext14,
}

/// @nodoc
extension EglContextTypeExt on EglContextType {
  /// @nodoc
  static EglContextType fromValue(int value) {
    return $enumDecode(_$EglContextTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EglContextTypeEnumMap[this]!;
  }
}

/// 视频 buffer 类型。
@JsonEnum(alwaysCreate: true)
enum VideoBufferType {
  /// 1: 类型为原始数据。
  @JsonValue(1)
  videoBufferRawData,

  /// 2: 类型为原始数据。
  @JsonValue(2)
  videoBufferArray,

  /// 3: 类型为 Texture 。
  @JsonValue(3)
  videoBufferTexture,
}

/// @nodoc
extension VideoBufferTypeExt on VideoBufferType {
  /// @nodoc
  static VideoBufferType fromValue(int value) {
    return $enumDecode(_$VideoBufferTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoBufferTypeEnumMap[this]!;
  }
}

/// 视频帧的属性设置。
///
/// 缓冲区给出的是指向指针的指针，该接口不能修改缓冲区的指针，只能修改缓冲区的内容。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoFrame implements AgoraSerializable {
  /// @nodoc
  const VideoFrame(
      {this.type,
      this.width,
      this.height,
      this.yStride,
      this.uStride,
      this.vStride,
      this.yBuffer,
      this.uBuffer,
      this.vBuffer,
      this.rotation,
      this.renderTimeMs,
      this.avsyncType,
      this.metadataBuffer,
      this.metadataSize,
      this.textureId,
      this.matrix,
      this.alphaBuffer,
      this.alphaStitchMode,
      this.pixelBuffer,
      this.metaInfo,
      this.hdr10MetadataInfo,
      this.colorSpace});

  /// 像素格式。详见 VideoPixelFormat 。
  @JsonKey(name: 'type')
  final VideoPixelFormat? type;

  /// 视频像素宽度。
  @JsonKey(name: 'width')
  final int? width;

  /// 视频像素高度。
  @JsonKey(name: 'height')
  final int? height;

  /// 对 YUV 数据，表示 Y 缓冲区的行跨度；对 RGBA 数据，表示总的数据长度。 在处理视频数据时，需根据该参数处理每行像素数据之间的偏移量，否则可能导致图像失真。
  @JsonKey(name: 'yStride')
  final int? yStride;

  /// 对 YUV 数据，表示 U 缓冲区的行跨度；对 RGBA 数据，值为 0。 在处理视频数据时，需根据该参数处理每行像素数据之间的偏移量，否则可能导致图像失真。
  @JsonKey(name: 'uStride')
  final int? uStride;

  /// 对 YUV 数据，表示 V 缓冲区的行跨度；对 RGBA 数据，值为 0。 在处理视频数据时，需根据该参数处理每行像素数据之间的偏移量，否则可能导致图像失真。
  @JsonKey(name: 'vStride')
  final int? vStride;

  /// 对 YUV 数据，表示 Y 缓冲区的指针；对 RGBA 数据，表示数据缓冲区。
  @JsonKey(name: 'yBuffer', ignore: true)
  final Uint8List? yBuffer;

  /// 对 YUV 数据，表示 U 缓冲区的指针；对 RGBA 数据，值为空。
  @JsonKey(name: 'uBuffer', ignore: true)
  final Uint8List? uBuffer;

  /// 对 YUV 数据，表示 V 缓冲区的指针；对 RGBA 数据，值为空。
  @JsonKey(name: 'vBuffer', ignore: true)
  final Uint8List? vBuffer;

  /// 在渲染视频前设置该帧的顺时针旋转角度，目前支持 0 度、90 度、180 度，和 270 度。
  @JsonKey(name: 'rotation')
  final int? rotation;

  /// 视频帧被渲染时的 Unix 时间戳（毫秒）。该时间戳可用于指导渲染视频帧。该参数为必填。
  @JsonKey(name: 'renderTimeMs')
  final int? renderTimeMs;

  /// 保留参数。
  @JsonKey(name: 'avsync_type')
  final int? avsyncType;

  /// 该参数仅适用于 Texture 格式的视频数据。指 MetaData 的数据缓冲区，默认值为 NULL 。
  @JsonKey(name: 'metadata_buffer', ignore: true)
  final Uint8List? metadataBuffer;

  /// 该参数仅适用于 Texture 格式的视频数据。指 MetaData 的大小，默认值为 0 。
  @JsonKey(name: 'metadata_size')
  final int? metadataSize;

  /// 该参数仅适用于 Texture 格式的视频数据。Texture ID。
  @JsonKey(name: 'textureId')
  final int? textureId;

  /// 该参数仅适用于 Texture 格式的视频数据。为一个输入的 4x4 变换矩阵，典型值为一个单位矩阵。
  @JsonKey(name: 'matrix')
  final List<double>? matrix;

  /// 采用人像分割算法输出的 Alpha 通道数据。该数据跟视频帧的尺寸一致，每个像素点的取值范围为 [0,255]，其中 0 代表背景；255 代表前景（人像）。
  /// 你可以通过设置该参数，实现将视频背景自渲染为各种效果，例如：透明、纯色、图片、视频等。
  ///  在自定义视频渲染场景下，需确保传入的视频帧和 alphaBuffer 均为 Full Range 类型；其他类型可能导致 Alpha 数据渲染不正常。
  ///  请务必确保 alphaBuffer 跟视频帧的尺寸 (width × height) 完全一致，否则可能会导致 App 崩溃。
  @JsonKey(name: 'alphaBuffer', ignore: true)
  final Uint8List? alphaBuffer;

  /// 当视频帧中包含 Alpha 通道数据时，设置 alphaBuffer 和视频帧的相对位置。详见 AlphaStitchMode 。
  @JsonKey(name: 'alphaStitchMode')
  final AlphaStitchMode? alphaStitchMode;

  /// @nodoc
  @JsonKey(name: 'pixelBuffer', ignore: true)
  final Uint8List? pixelBuffer;

  /// 视频帧中的元信息。该参数需要[联系技术支持](https://ticket.shengwang.cn/)使用。
  @VideoFrameMetaInfoConverter()
  @JsonKey(name: 'metaInfo')
  final VideoFrameMetaInfo? metaInfo;

  /// @nodoc
  @JsonKey(name: 'hdr10MetadataInfo')
  final Hdr10MetadataInfo? hdr10MetadataInfo;

  /// 视频帧的色彩空间属性，默认情况下会应用 Full Range 和 BT.709 标准配置。你可以根据自定义采集、自定义渲染的业务需求进行自定义设置，详见 [VideoColorSpace](https://developer.mozilla.org/en-US/docs/Web/API/VideoColorSpace)。
  @JsonKey(name: 'colorSpace')
  final ColorSpace? colorSpace;

  /// @nodoc
  factory VideoFrame.fromJson(Map<String, dynamic> json) =>
      _$VideoFrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoFrameToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum MediaPlayerSourceType {
  /// @nodoc
  @JsonValue(0)
  mediaPlayerSourceDefault,

  /// @nodoc
  @JsonValue(1)
  mediaPlayerSourceFullFeatured,

  /// @nodoc
  @JsonValue(2)
  mediaPlayerSourceSimple,
}

/// @nodoc
extension MediaPlayerSourceTypeExt on MediaPlayerSourceType {
  /// @nodoc
  static MediaPlayerSourceType fromValue(int value) {
    return $enumDecode(_$MediaPlayerSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerSourceTypeEnumMap[this]!;
  }
}

/// 视频观测位置。
@JsonEnum(alwaysCreate: true)
enum VideoModulePosition {
  /// 1: 本地采集视频数据并且经过前处理之后的位置，对应 onCaptureVideoFrame 回调。此处观测到的视频具备视频前处理的效果，可通过开启美颜、虚拟背景或水印等方式验证。
  @JsonValue(1 << 0)
  positionPostCapturer,

  /// 2: 接收远端发送的视频在渲染前的位置，对应 onRenderVideoFrame 回调。
  @JsonValue(1 << 1)
  positionPreRenderer,

  /// 4: 本地视频编码前的位置，对应 onPreEncodeVideoFrame 回调。此处观测到的视频具备视频前处理和编码前处理的效果：
  ///  对于视频前处理效果，可通过开启美颜、虚拟背景或水印等方式验证。
  ///  对于编码前处理效果，可通过设置一个较低的帧率（例如 5 fps）验证。
  @JsonValue(1 << 2)
  positionPreEncoder,

  /// 8: 本地采集视频之后、前处理之前的位置。此处观测到的视频不具备前处理的效果，可通过开启美颜、虚拟背景或设置水印等方式验证。
  @JsonValue(1 << 3)
  positionPostCapturerOrigin,
}

/// @nodoc
extension VideoModulePositionExt on VideoModulePosition {
  /// @nodoc
  static VideoModulePosition fromValue(int value) {
    return $enumDecode(_$VideoModulePositionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoModulePositionEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum ContentInspectResult {
  /// @nodoc
  @JsonValue(1)
  contentInspectNeutral,

  /// @nodoc
  @JsonValue(2)
  contentInspectSexy,

  /// @nodoc
  @JsonValue(3)
  contentInspectPorn,
}

/// @nodoc
extension ContentInspectResultExt on ContentInspectResult {
  /// @nodoc
  static ContentInspectResult fromValue(int value) {
    return $enumDecode(_$ContentInspectResultEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ContentInspectResultEnumMap[this]!;
  }
}

/// 视频内容审核模块的类型。
@JsonEnum(alwaysCreate: true)
enum ContentInspectType {
  /// 0：（默认）该功能模块无实际功能。请不要将 type 设为该值。
  @JsonValue(0)
  contentInspectInvalid,

  /// @nodoc
  @JsonValue(1)
  contentInspectModeration,

  /// 2：使用声网自研插件截图上传。SDK 会对视频流进行截图并上传。
  @JsonValue(2)
  contentInspectSupervision,

  /// 3：使用云市场插件截图上传。SDK 会使用云市场视频审核插件对视频流进行截图并上传。
  @JsonValue(3)
  contentInspectImageModeration,
}

/// @nodoc
extension ContentInspectTypeExt on ContentInspectType {
  /// @nodoc
  static ContentInspectType fromValue(int value) {
    return $enumDecode(_$ContentInspectTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ContentInspectTypeEnumMap[this]!;
  }
}

/// ContentInspectModule 结构体，用于配置本地截图上传的频率。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ContentInspectModule implements AgoraSerializable {
  /// @nodoc
  const ContentInspectModule({this.type, this.interval, this.position});

  /// 功能模块的类型。详见 ContentInspectType 。
  @JsonKey(name: 'type')
  final ContentInspectType? type;

  /// 本地截图上传的间隔，单位为秒，取值必须大于 0。默认值为 0，表示不进行截图上传。推荐值为 10 秒，你也可以根据业务需求自行调整。
  @JsonKey(name: 'interval')
  final int? interval;

  /// 视频观察器的位置。详见 VideoModulePosition 。
  @JsonKey(name: 'position')
  final VideoModulePosition? position;

  /// @nodoc
  factory ContentInspectModule.fromJson(Map<String, dynamic> json) =>
      _$ContentInspectModuleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContentInspectModuleToJson(this);
}

/// 本地截图上传配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ContentInspectConfig implements AgoraSerializable {
  /// @nodoc
  const ContentInspectConfig(
      {this.extraInfo, this.serverConfig, this.modules, this.moduleCount});

  /// 附加信息，最大长度为 1024 字节。
  /// SDK 会将附加信息和截图一起上传至声网服务器；截图完成后，声网服务器会将附加信息随回调通知一起发送给你的服务器。
  @JsonKey(name: 'extraInfo')
  final String? extraInfo;

  /// （可选）云市场视频审核相关服务端配置，该参数仅在 ContentInspectModule 中的 type 设置为 contentInspectImageModeration 时生效。如需使用，请[联系技术支持](https://ticket.shengwang.cn/)。
  @JsonKey(name: 'serverConfig')
  final String? serverConfig;

  /// 功能模块。详见 ContentInspectModule 。
  /// 最多支持配置 32 个 ContentInspectModule 实例， MAX_CONTENT_INSPECT_MODULE_COUNT 的取值范围为 [1,32] 中的整数。 一个功能模块最多只能配置一个实例。目前仅支持截图上传功能。
  @JsonKey(name: 'modules')
  final List<ContentInspectModule>? modules;

  /// 功能模块数，即配置的 ContentInspectModule 实例的数量，必须与 modules 中配置的实例个数一致。最大值为 32。
  @JsonKey(name: 'moduleCount')
  final int? moduleCount;

  /// @nodoc
  factory ContentInspectConfig.fromJson(Map<String, dynamic> json) =>
      _$ContentInspectConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContentInspectConfigToJson(this);
}

/// 视频截图设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SnapshotConfig implements AgoraSerializable {
  /// @nodoc
  const SnapshotConfig({this.filePath, this.position});

  /// 请确保目录存在且可写。 截图的本地保存路径，需精确到文件名及格式，例如：
  ///  Windows: C:\Users\<user_name>\AppData\Local\Agora\<process_name>\example.jpg
  ///  iOS: /App Sandbox/Library/Caches/example.jpg
  ///  macOS: ～/Library/Logs/example.jpg
  ///  Android: /storage/emulated/0/Android/data/<package name>/files/example.jpg
  @JsonKey(name: 'filePath')
  final String? filePath;

  /// 截图的视频帧在视频链路中的位置。详见 VideoModulePosition 。
  @JsonKey(name: 'position')
  final VideoModulePosition? position;

  /// @nodoc
  factory SnapshotConfig.fromJson(Map<String, dynamic> json) =>
      _$SnapshotConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SnapshotConfigToJson(this);
}

/// 该类用于获取原始的 PCM 音频数据。
///
/// 你可以继承这个类，实现 onFrame 回调来获得 PCM 音频数据。
class AudioPcmFrameSink {
  /// @nodoc
  const AudioPcmFrameSink({
    this.onFrame,
  });

  /// 已获取音频帧回调。
  ///
  /// 注册音频数据观测器后，每次接收到一帧音频帧时，都会触发该回调，报告音频帧信息。
  ///
  /// * [frame] 音频帧信息。详见 AudioPcmFrame 。
  final void Function(AudioPcmFrame frame)? onFrame;
}

/// 音频观测器。
///
/// 你可以调用 registerAudioFrameObserver 注册或取消注册 AudioFrameObserverBase 音频观测器。
class AudioFrameObserverBase {
  /// @nodoc
  const AudioFrameObserverBase({
    this.onRecordAudioFrame,
    this.onPlaybackAudioFrame,
    this.onMixedAudioFrame,
    this.onEarMonitoringAudioFrame,
  });

  /// 获得采集的原始音频数据。
  ///
  /// 为保证采集的音频数据格式符合预期，你可以在如下方法设置音频的数据格式：调用 setRecordingAudioFrameParameters 设置音频数据格式后，调用 registerAudioFrameObserver 注册音频观测器对象，SDK 会根据该方法中的参数计算采样间隔，并根据该采样间隔触发 onRecordAudioFrame 回调。
  ///  由于框架的限制，该回调不支持将处理后的音频数据发送回 SDK。
  ///
  /// * [audioFrame] 音频原始数据。详见 AudioFrame 。
  /// * [channelId] 频道 ID。
  final void Function(String channelId, AudioFrame audioFrame)?
      onRecordAudioFrame;

  /// 获得播放的原始音频数据。
  ///
  /// 为保证播放的音频数据格式符合预期，你可以在如下方法设置音频的数据格式：调用 setPlaybackAudioFrameParameters 设置音频数据格式后，调用 registerAudioFrameObserver 注册音频观测器对象，SDK 会根据该方法中的参数计算采样间隔，并根据该采样间隔触发 onPlaybackAudioFrame 回调。
  ///  由于框架的限制，该回调不支持将处理后的音频数据发送回 SDK。
  ///
  /// * [audioFrame] 音频原始数据。详见 AudioFrame 。
  /// * [channelId] 频道 ID。
  final void Function(String channelId, AudioFrame audioFrame)?
      onPlaybackAudioFrame;

  /// 获取采集和播放音频混音后的数据。
  ///
  /// 为保证采集和播放混音后的音频数据格式符合预期，你可以在如下方法设置音频的数据格式：调用 setMixedAudioFrameParameters 设置音频数据格式后，调用 registerAudioFrameObserver 注册音频观测器对象，SDK 会根据该方法中的参数计算采样间隔，并根据该采样间隔触发 onMixedAudioFrame 回调。
  ///  由于框架的限制，该回调不支持将处理后的音频数据发送回 SDK。
  ///
  /// * [audioFrame] 音频原始数据。详见 AudioFrame 。
  /// * [channelId] 频道 ID。
  final void Function(String channelId, AudioFrame audioFrame)?
      onMixedAudioFrame;

  /// 获得耳返的原始音频数据。
  ///
  /// 为保证耳返的音频数据格式符合预期，你可以使用如下方法设置耳返音频数据格式：调用 setEarMonitoringAudioFrameParameters 设置音频数据格式后，调用 registerAudioFrameObserver 注册音频观测器对象，SDK 会根据该方法中的参数计算采样间隔，并根据该采样间隔触发 onEarMonitoringAudioFrame 回调。
  ///  由于框架的限制，该回调不支持将处理后的音频数据发送回 SDK。
  ///
  /// * [audioFrame] 音频原始数据。详见 AudioFrame 。
  final void Function(AudioFrame audioFrame)? onEarMonitoringAudioFrame;
}

/// 音频帧类型。
@JsonEnum(alwaysCreate: true)
enum AudioFrameType {
  /// 0: PCM 16
  @JsonValue(0)
  frameTypePcm16,
}

/// @nodoc
extension AudioFrameTypeExt on AudioFrameType {
  /// @nodoc
  static AudioFrameType fromValue(int value) {
    return $enumDecode(_$AudioFrameTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioFrameTypeEnumMap[this]!;
  }
}

/// 原始音频数据。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioFrame implements AgoraSerializable {
  /// @nodoc
  const AudioFrame(
      {this.type,
      this.samplesPerChannel,
      this.bytesPerSample,
      this.channels,
      this.samplesPerSec,
      this.buffer,
      this.renderTimeMs,
      this.avsyncType,
      this.presentationMs,
      this.audioTrackNumber,
      this.rtpTimestamp});

  /// 音频帧类型，详见 AudioFrameType 。
  @JsonKey(name: 'type')
  final AudioFrameType? type;

  /// 每个声道的采样点数。
  @JsonKey(name: 'samplesPerChannel')
  final int? samplesPerChannel;

  /// 每个采样点的字节数。对于 PCM 来说，一般使用 16 bit，即两个字节。
  @JsonKey(name: 'bytesPerSample')
  final BytesPerSample? bytesPerSample;

  /// 声道数量(如果是立体声，数据是交叉的)。
  ///  1: 单声道
  ///  2: 双声道
  @JsonKey(name: 'channels')
  final int? channels;

  /// 每声道每秒的采样点数。
  @JsonKey(name: 'samplesPerSec')
  final int? samplesPerSec;

  /// 声音数据缓存区（如果是立体声，数据是交叉存储的）。
  /// 缓存区数据大小 buffer = samples × channels × bytesPerSample 。
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// 外部音频帧的渲染时间戳。
  /// 你可以使用该时间戳还原音频帧顺序；在有视频的场景中（包含使用外部视频源的场景），该参数可以用于实现音视频同步。
  @JsonKey(name: 'renderTimeMs')
  final int? renderTimeMs;

  /// 保留参数。
  @JsonKey(name: 'avsync_type')
  final int? avsyncType;

  /// @nodoc
  @JsonKey(name: 'presentationMs')
  final int? presentationMs;

  /// @nodoc
  @JsonKey(name: 'audioTrackNumber')
  final int? audioTrackNumber;

  /// @nodoc
  @JsonKey(name: 'rtpTimestamp')
  final int? rtpTimestamp;

  /// @nodoc
  factory AudioFrame.fromJson(Map<String, dynamic> json) =>
      _$AudioFrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioFrameToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum AudioFramePosition {
  /// @nodoc
  @JsonValue(0x0000)
  audioFramePositionNone,

  /// @nodoc
  @JsonValue(0x0001)
  audioFramePositionPlayback,

  /// @nodoc
  @JsonValue(0x0002)
  audioFramePositionRecord,

  /// @nodoc
  @JsonValue(0x0004)
  audioFramePositionMixed,

  /// @nodoc
  @JsonValue(0x0008)
  audioFramePositionBeforeMixing,

  /// @nodoc
  @JsonValue(0x0010)
  audioFramePositionEarMonitoring,
}

/// @nodoc
extension AudioFramePositionExt on AudioFramePosition {
  /// @nodoc
  static AudioFramePosition fromValue(int value) {
    return $enumDecode(_$AudioFramePositionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioFramePositionEnumMap[this]!;
  }
}

/// 音频数据格式。
///
/// SDK 会通过 AudioParams 中的 samplesPerCall 、 sampleRate 和 channel 参数计算采样间隔，并根据该采样间隔触发 onRecordAudioFrame 、 onPlaybackAudioFrame 、 onMixedAudioFrame 和 onEarMonitoringAudioFrame 回调。
///  采样间隔 = samplesPerCall /(sampleRate × channel)。
///  请确保采样间隔不得小于 0.01 (s)。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioParams implements AgoraSerializable {
  /// @nodoc
  const AudioParams(
      {this.sampleRate, this.channels, this.mode, this.samplesPerCall});

  /// 数据的采样率，单位为 Hz，取值如下：
  ///  8000
  ///  16000（默认值）
  ///  32000
  ///  44100
  ///  48000
  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  /// 数据的声道数，取值如下：
  ///  1：单声道（默认值）
  ///  2：双声道
  @JsonKey(name: 'channels')
  final int? channels;

  /// 数据的使用模式。详见 RawAudioFrameOpModeType 。
  @JsonKey(name: 'mode')
  final RawAudioFrameOpModeType? mode;

  /// 数据的采样点数，如旁路推流应用中通常为 1024。
  @JsonKey(name: 'samples_per_call')
  final int? samplesPerCall;

  /// @nodoc
  factory AudioParams.fromJson(Map<String, dynamic> json) =>
      _$AudioParamsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioParamsToJson(this);
}

/// 音频观测器。
///
/// 你可以调用 registerAudioFrameObserver 注册或取消注册 AudioFrameObserver 音频观测器。
class AudioFrameObserver extends AudioFrameObserverBase {
  /// @nodoc
  const AudioFrameObserver({
    /// @nodoc
    void Function(String channelId, AudioFrame audioFrame)? onRecordAudioFrame,

    /// @nodoc
    void Function(String channelId, AudioFrame audioFrame)?
        onPlaybackAudioFrame,

    /// @nodoc
    void Function(String channelId, AudioFrame audioFrame)? onMixedAudioFrame,

    /// @nodoc
    void Function(AudioFrame audioFrame)? onEarMonitoringAudioFrame,
    this.onPlaybackAudioFrameBeforeMixing,
  }) : super(
          onRecordAudioFrame: onRecordAudioFrame,
          onPlaybackAudioFrame: onPlaybackAudioFrame,
          onMixedAudioFrame: onMixedAudioFrame,
          onEarMonitoringAudioFrame: onEarMonitoringAudioFrame,
        );

  /// 获取所订阅的远端用户混音前的声音。
  ///
  /// 由于框架的限制，该回调不支持将处理后的音频数据发送回 SDK。
  ///
  /// * [channelId] 频道 ID。
  /// * [uid] 订阅的远端用户的 ID。
  /// * [audioFrame] 音频原始数据。详见 AudioFrame 。
  final void Function(String channelId, int uid, AudioFrame audioFrame)?
      onPlaybackAudioFrameBeforeMixing;
}

/// 音频频谱数据。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioSpectrumData implements AgoraSerializable {
  /// @nodoc
  const AudioSpectrumData({this.audioSpectrumData, this.dataLength});

  /// 音频频谱数据。声网将声音频率分为 256 个频域，通过该参数报告各频域的能量值，每个能量值的取值范围为 [-300,1]，单位为 dBFS。
  @JsonKey(name: 'audioSpectrumData')
  final List<double>? audioSpectrumData;

  /// 音频频谱数据长度为 256。
  @JsonKey(name: 'dataLength')
  final int? dataLength;

  /// @nodoc
  factory AudioSpectrumData.fromJson(Map<String, dynamic> json) =>
      _$AudioSpectrumDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioSpectrumDataToJson(this);
}

/// 远端用户的音频频谱信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserAudioSpectrumInfo implements AgoraSerializable {
  /// @nodoc
  const UserAudioSpectrumInfo({this.uid, this.spectrumData});

  /// 远端用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 远端用户的音频频谱数据。详见 AudioSpectrumData 。
  @JsonKey(name: 'spectrumData')
  final AudioSpectrumData? spectrumData;

  /// @nodoc
  factory UserAudioSpectrumInfo.fromJson(Map<String, dynamic> json) =>
      _$UserAudioSpectrumInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserAudioSpectrumInfoToJson(this);
}

/// 音频频谱观测器。
class AudioSpectrumObserver {
  /// @nodoc
  const AudioSpectrumObserver({
    this.onLocalAudioSpectrum,
    this.onRemoteAudioSpectrum,
  });

  /// 获取本地音频频谱。
  ///
  /// 成功调用 registerAudioSpectrumObserver 实现 AudioSpectrumObserver 中的 onLocalAudioSpectrum 回调并调用 enableAudioSpectrumMonitor 开启音频频谱监测后，SDK 会按照你设置的时间间隔触发该回调，报告编码前的本地音频数据的频谱。
  ///
  /// * [data] 本地用户的音频频谱数据。详见 AudioSpectrumData 。
  final void Function(AudioSpectrumData data)? onLocalAudioSpectrum;

  /// 获取远端音频频谱。
  ///
  /// 成功调用 registerAudioSpectrumObserver 实现 AudioSpectrumObserver 中的 onRemoteAudioSpectrum 回调并调用 enableAudioSpectrumMonitor 开启音频频谱监测后，SDK 会按照你设置的时间间隔触发该回调，报告接收到的远端音频数据的频谱。
  ///
  /// * [spectrums] 远端用户的音频频谱信息，详见 UserAudioSpectrumInfo 。 数组数量等于 SDK 监测到的远端用户数量，数组为空表示没有监测到远端用户的音频频谱。
  /// * [spectrumNumber] 远端用户的数量。
  final void Function(
          List<UserAudioSpectrumInfo> spectrums, int spectrumNumber)?
      onRemoteAudioSpectrum;
}

/// 用于接收编码后的视频图像的类。
class VideoEncodedFrameObserver {
  /// @nodoc
  const VideoEncodedFrameObserver({
    this.onEncodedVideoFrameReceived,
  });

  /// 报告接收端已收到远端发送的待解码视频帧。
  ///
  /// 调用 setRemoteVideoSubscriptionOptions 方法并将 encodedFrameOnly 设置为 true 时，SDK 会在本地触发该回调，上报接收到的编码后视频帧信息。
  ///
  /// * [channelId] 频道名。
  /// * [uid] 远端用户 ID。
  /// * [imageBuffer] 视频图像 buffer。
  /// * [length] 视频图像的数据长度。
  /// * [videoEncodedFrameInfo] 编码后的视频帧信息，详见 EncodedVideoFrameInfo 。
  final void Function(
      String channelId,
      int uid,
      Uint8List imageBuffer,
      int length,
      EncodedVideoFrameInfo videoEncodedFrameInfo)? onEncodedVideoFrameReceived;
}

/// 视频观测器。
///
/// 你可以调用 registerVideoFrameObserver 注册或取消注册 VideoFrameObserver 视频观测器。
class VideoFrameObserver {
  /// @nodoc
  const VideoFrameObserver({
    this.onCaptureVideoFrame,
    this.onPreEncodeVideoFrame,
    this.onMediaPlayerVideoFrame,
    this.onRenderVideoFrame,
    this.onTranscodedVideoFrame,
  });

  /// 获取本地设备采集到的视频数据。
  ///
  /// 你可以在回调中获取本地设备采集到的原始视频数据。
  ///  如果你获取到的视频数据类型为 RGBA，SDK 不支持对 Alpha 通道的值进行处理。
  ///  建议你在修改 videoFrame 中的参数时，需确保修改后的参数跟视频帧缓冲区中的视频帧实际情况保持一致，否则可能导致本地预览画面和对端的视频画面出现非预期的旋转、失真等问题。
  ///  由于框架的限制，该回调不支持将处理后的视频数据发送回 SDK。
  ///
  /// * [sourceType] 视频源类型，可能的视频源包括：摄像头、屏幕或媒体播放器。详见 VideoSourceType 。
  /// * [videoFrame] 视频帧数据。详见 VideoFrame 。 通过该回调获取的视频帧数据格式默认值如下：
  ///  Android：I420
  ///  iOS：I420
  ///  macOS：I420
  ///  Windows：YUV420
  final void Function(VideoSourceType sourceType, VideoFrame videoFrame)?
      onCaptureVideoFrame;

  /// 获取本地视频编码前的视频数据。
  ///
  /// 成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调。你可以在回调中获取编码前的视频数据，然后根据场景需要，对视频数据进行处理。
  ///  由于框架的限制，该回调不支持将处理后的视频数据发送回 SDK。
  ///  此处获取的视频数据已经过前处理，如裁剪、旋转和美颜等。
  ///  建议你在修改 videoFrame 中的参数时，需确保修改后的参数跟视频帧缓冲区中的视频帧实际情况保持一致，否则可能导致本地预览画面和对端的视频画面出现非预期的旋转、失真等问题。
  ///
  /// * [sourceType] 视频源的类型。详见 VideoSourceType 。
  /// * [videoFrame] 视频帧数据。详见 VideoFrame 。 通过该回调获取的视频帧数据格式默认值如下：
  ///  Android：I420
  ///  iOS：I420
  ///  macOS：I420
  ///  Windows：YUV420
  final void Function(VideoSourceType sourceType, VideoFrame videoFrame)?
      onPreEncodeVideoFrame;

  /// @nodoc
  final void Function(VideoFrame videoFrame, int mediaPlayerId)?
      onMediaPlayerVideoFrame;

  /// 获取远端发送的视频数据。
  ///
  /// 成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调。你可以在回调中获取远端发送的渲染前的视频数据，然后根据场景需要，对视频数据进行处理。
  ///  如果你获取到的视频数据类型为 RGBA，SDK 不支持对 Alpha 通道的值进行处理。
  ///  由于框架的限制，该回调不支持将处理后的视频数据发送回 SDK。
  ///  建议你在修改 videoFrame 中的参数时，需确保修改后的参数跟视频帧缓冲区中的视频帧实际情况保持一致，否则可能导致本地预览画面和对端的视频画面出现非预期的旋转、失真等问题。
  ///
  /// * [remoteUid] 发送该帧视频的远端用户 ID。
  /// * [videoFrame] 视频帧数据。详见 VideoFrame 。 通过该回调获取的视频帧数据格式默认值如下：
  ///  Android：I420
  ///  iOS：I420
  ///  macOS：I420
  ///  Windows：YUV420
  /// * [channelId] 频道 ID。
  final void Function(String channelId, int remoteUid, VideoFrame videoFrame)?
      onRenderVideoFrame;

  /// @nodoc
  final void Function(VideoFrame videoFrame)? onTranscodedVideoFrame;
}

/// 视频帧处理模式。
@JsonEnum(alwaysCreate: true)
enum VideoFrameProcessMode {
  /// 只读模式。
  /// 只读模式下，你不修改视频帧，视频观测器相当于渲染器。
  @JsonValue(0)
  processModeReadOnly,

  /// 读写模式。
  /// 读写模式下，你会修改视频帧，视频观测器相当于视频 filter。
  @JsonValue(1)
  processModeReadWrite,
}

/// @nodoc
extension VideoFrameProcessModeExt on VideoFrameProcessMode {
  /// @nodoc
  static VideoFrameProcessMode fromValue(int value) {
    return $enumDecode(_$VideoFrameProcessModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoFrameProcessModeEnumMap[this]!;
  }
}

/// 外部视频帧编码类型。
@JsonEnum(alwaysCreate: true)
enum ExternalVideoSourceType {
  /// 0：未编码视频帧。
  @JsonValue(0)
  videoFrame,

  /// 1：已编码视频帧。
  @JsonValue(1)
  encodedVideoFrame,
}

/// @nodoc
extension ExternalVideoSourceTypeExt on ExternalVideoSourceType {
  /// @nodoc
  static ExternalVideoSourceType fromValue(int value) {
    return $enumDecode(_$ExternalVideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ExternalVideoSourceTypeEnumMap[this]!;
  }
}

/// 录制文件的格式。
@JsonEnum(alwaysCreate: true)
enum MediaRecorderContainerFormat {
  /// 1:（默认）MP4。
  @JsonValue(1)
  formatMp4,
}

/// @nodoc
extension MediaRecorderContainerFormatExt on MediaRecorderContainerFormat {
  /// @nodoc
  static MediaRecorderContainerFormat fromValue(int value) {
    return $enumDecode(_$MediaRecorderContainerFormatEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaRecorderContainerFormatEnumMap[this]!;
  }
}

/// 录制内容。
@JsonEnum(alwaysCreate: true)
enum MediaRecorderStreamType {
  /// 1: 仅音频。
  @JsonValue(0x01)
  streamTypeAudio,

  /// 2: 仅视频。
  @JsonValue(0x02)
  streamTypeVideo,

  /// 3: （默认）音视频。
  @JsonValue(0x01 | 0x02)
  streamTypeBoth,
}

/// @nodoc
extension MediaRecorderStreamTypeExt on MediaRecorderStreamType {
  /// @nodoc
  static MediaRecorderStreamType fromValue(int value) {
    return $enumDecode(_$MediaRecorderStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaRecorderStreamTypeEnumMap[this]!;
  }
}

/// 当前的录制状态。
@JsonEnum(alwaysCreate: true)
enum RecorderState {
  /// -1: 音视频流录制出错，错误原因详见 RecorderReasonCode 。
  @JsonValue(-1)
  recorderStateError,

  /// 2: 音视频流录制开始。
  @JsonValue(2)
  recorderStateStart,

  /// 3: 音视频流录制停止。
  @JsonValue(3)
  recorderStateStop,
}

/// @nodoc
extension RecorderStateExt on RecorderState {
  /// @nodoc
  static RecorderState fromValue(int value) {
    return $enumDecode(_$RecorderStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RecorderStateEnumMap[this]!;
  }
}

/// 录制状态出错的原因。
@JsonEnum(alwaysCreate: true)
enum RecorderReasonCode {
  /// 0: 一切正常。
  @JsonValue(0)
  recorderReasonNone,

  /// 1: 录制文件写入失败。
  @JsonValue(1)
  recorderReasonWriteFailed,

  /// 2: 没有可录制的音视频流或者录制的音视频流中断超过 5 秒。
  @JsonValue(2)
  recorderReasonNoStream,

  /// 3: 录制时长超出上限。
  @JsonValue(3)
  recorderReasonOverMaxDuration,

  /// 4: 录制配置改变。
  @JsonValue(4)
  recorderReasonConfigChanged,
}

/// @nodoc
extension RecorderReasonCodeExt on RecorderReasonCode {
  /// @nodoc
  static RecorderReasonCode fromValue(int value) {
    return $enumDecode(_$RecorderReasonCodeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RecorderReasonCodeEnumMap[this]!;
  }
}

/// 音视频流录制配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MediaRecorderConfiguration implements AgoraSerializable {
  /// @nodoc
  const MediaRecorderConfiguration(
      {this.storagePath,
      this.containerFormat,
      this.streamType,
      this.maxDurationMs,
      this.recorderInfoUpdateInterval,
      this.width,
      this.height,
      this.fps,
      this.sampleRate,
      this.channelNum,
      this.videoSourceType});

  /// 请确保你指定的路径存在并且可写。 录制文件在本地保存的绝对路径，需精确到文件名及格式。例如：
  ///  Windows: C:\Users\<user_name>\AppData\Local\Agora\<process_name>\example.mp4
  ///  iOS: /App Sandbox/Library/Caches/example.mp4
  ///  macOS: /Library/Logs/example.mp4
  ///  Android: /storage/emulated/0/Android/data/<package name>/files/example.mp4
  @JsonKey(name: 'storagePath')
  final String? storagePath;

  /// 录制文件的格式。详见 MediaRecorderContainerFormat 。
  @JsonKey(name: 'containerFormat')
  final MediaRecorderContainerFormat? containerFormat;

  /// 录制内容。详见 MediaRecorderStreamType 。
  @JsonKey(name: 'streamType')
  final MediaRecorderStreamType? streamType;

  /// 最大录制时长，单位为毫秒，默认值为 120000。
  @JsonKey(name: 'maxDurationMs')
  final int? maxDurationMs;

  /// 录制信息更新间隔，单位为毫秒，取值范围为 [1000,10000]。SDK 会根据该值的设置触发 onRecorderInfoUpdated 回调，报告更新后的录制信息。
  @JsonKey(name: 'recorderInfoUpdateInterval')
  final int? recorderInfoUpdateInterval;

  /// 录制视频的宽度 (px)，宽 × 高的最大值不应超过 3840 × 2160。
  /// 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'width')
  final int? width;

  /// 录制视频的高度 (px)，宽 × 高的最大值不超过 3840 × 2160。
  /// 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'height')
  final int? height;

  /// 录制视频的帧率，最高值不超过 30，如： 5、10、15、24、30 等。
  /// 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'fps')
  final int? fps;

  /// 录制音频的采样率 (Hz)，可设置为 16000，32000，44100 或 48000。
  /// 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  /// 录制音频的声道数:
  ///  1: 单声道
  ///  2: 双声道 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'channel_num')
  final int? channelNum;

  /// 录制视频源的类型。详见 VideoSourceType 。
  /// 该参数仅在 调用 createMediaRecorder 且将 RecorderStreamInfo 中的 type 设置为 preview 时需要传入。
  @JsonKey(name: 'videoSourceType')
  final VideoSourceType? videoSourceType;

  /// @nodoc
  factory MediaRecorderConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MediaRecorderConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MediaRecorderConfigurationToJson(this);
}

/// 人脸信息观测器。
///
/// 你可以调用 registerFaceInfoObserver 注册 FaceInfoObserver 观测器。
class FaceInfoObserver {
  /// @nodoc
  const FaceInfoObserver({
    this.onFaceInfo,
  });

  /// 报告已获取语音驱动插件处理后的人脸信息。
  ///
  /// * [outFaceInfo] 输出参数，语音驱动插件处理后的人脸信息 JSON 字符串，包含以下字段：
  ///  faces：Object 序列。包含识别到的人脸信息，每一张人脸对应一个 Object。
  ///  blendshapes：Object。面捕系数集，命名符合 ARkit 标准，内部的键值对为每一个 blendshape 系数。blendshape 系数为浮点，取值范围为 [0.0,1.0]。
  ///  rotation：Object 序列。头部旋转量，包含以下三个键值对，取值为浮点数，范围为 [-180.0,180.0]：
  ///  pitch：头部俯仰角度。低头为正值，抬头为负值。
  ///  yaw：头部水平旋转角度。左转为正值，右转为负值。
  ///  roll：头部垂直旋转角度。右倾为正值，左倾为负值。
  ///  timestamp：String。输出结果的时间戳，单位为毫秒。 以下为 JSON 示例： { "faces":[{ "blendshapes":{ "eyeBlinkLeft":0.9, "eyeLookDownLeft":0.0, "eyeLookInLeft":0.0, "eyeLookOutLeft":0.0, "eyeLookUpLeft":0.0, "eyeSquintLeft":0.0, "eyeWideLeft":0.0, "eyeBlinkRight":0.0, "eyeLookDownRight":0.0, "eyeLookInRight":0.0, "eyeLookOutRight":0.0, "eyeLookUpRight":0.0, "eyeSquintRight":0.0, "eyeWideRight":0.0, "jawForward":0.0, "jawLeft":0.0, "jawRight":0.0, "jawOpen":0.0, "mouthClose":0.0, "mouthFunnel":0.0, "mouthPucker":0.0, "mouthLeft":0.0, "mouthRight":0.0, "mouthSmileLeft":0.0, "mouthSmileRight":0.0, "mouthFrownLeft":0.0, "mouthFrownRight":0.0, "mouthDimpleLeft":0.0, "mouthDimpleRight":0.0, "mouthStretchLeft":0.0, "mouthStretchRight":0.0, "mouthRollLower":0.0, "mouthRollUpper":0.0, "mouthShrugLower":0.0, "mouthShrugUpper":0.0, "mouthPressLeft":0.0, "mouthPressRight":0.0, "mouthLowerDownLeft":0.0, "mouthLowerDownRight":0.0, "mouthUpperUpLeft":0.0, "mouthUpperUpRight":0.0, "browDownLeft":0.0, "browDownRight":0.0, "browInnerUp":0.0, "browOuterUpLeft":0.0, "browOuterUpRight":0.0, "cheekPuff":0.0, "cheekSquintLeft":0.0, "cheekSquintRight":0.0, "noseSneerLeft":0.0, "noseSneerRight":0.0, "tongueOut":0.0 }, "rotation":{"pitch":30.0, "yaw":25.5, "roll":-15.5}, }], "timestamp":"654879876546" }
  ///
  /// Returns
  /// true : 人脸信息 JSON 解析成功。 false : 人脸信息 JSON 解析失败。
  final void Function(String outFaceInfo)? onFaceInfo;
}

/// 录制文件信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RecorderInfo implements AgoraSerializable {
  /// @nodoc
  const RecorderInfo({this.fileName, this.durationMs, this.fileSize});

  /// 录制文件的绝对存储路径。
  @JsonKey(name: 'fileName')
  final String? fileName;

  /// 录制文件的时长，单位为毫秒。
  @JsonKey(name: 'durationMs')
  final int? durationMs;

  /// 录制文件的大小，单位为字节。
  @JsonKey(name: 'fileSize')
  final int? fileSize;

  /// @nodoc
  factory RecorderInfo.fromJson(Map<String, dynamic> json) =>
      _$RecorderInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecorderInfoToJson(this);
}

/// 包含音视频录制的事件。
class MediaRecorderObserver {
  /// @nodoc
  const MediaRecorderObserver({
    this.onRecorderStateChanged,
    this.onRecorderInfoUpdated,
  });

  /// 录制状态发生改变回调。
  ///
  /// 音视频流录制状态发生改变时，SDK 会触发该回调，报告当前的录制状态和引起录制状态改变的原因。
  ///
  /// * [channelId] 频道名称。
  /// * [uid] 用户 ID。
  /// * [state] 当前的录制状态。详见 RecorderState 。
  /// * [reason] 录制状态出错的原因。详见 RecorderReasonCode 。
  final void Function(String channelId, int uid, RecorderState state,
      RecorderReasonCode reason)? onRecorderStateChanged;

  /// 录制信息更新回调。
  ///
  /// 成功注册该回调并开启音视频流录制后，SDK 会根据你在 MediaRecorderConfiguration 中设置的 recorderInfoUpdateInterval 的值周期性触发该回调，报告当前录制文件的文件名、时长和大小。
  ///
  /// * [channelId] 频道名称。
  /// * [uid] 用户 ID。
  /// * [info] 录制文件信息。详见 RecorderInfo 。
  final void Function(String channelId, int uid, RecorderInfo info)?
      onRecorderInfoUpdated;
}
