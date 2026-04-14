import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_rtc_engine.g.dart';

/// 设备类型。
@JsonEnum(alwaysCreate: true)
enum MediaDeviceType {
  /// -1: 设备类型未知。
  @JsonValue(-1)
  unknownAudioDevice,

  /// 0: 音频播放设备。
  @JsonValue(0)
  audioPlayoutDevice,

  /// 1: 音频采集设备。
  @JsonValue(1)
  audioRecordingDevice,

  /// 2: 视频渲染设备 (显卡)。
  @JsonValue(2)
  videoRenderDevice,

  /// 3: 视频采集设备。
  @JsonValue(3)
  videoCaptureDevice,

  /// 4: 音频应用播放设备。
  @JsonValue(4)
  audioApplicationPlayoutDevice,

  /// （仅适用于 macOS。）5: 虚拟音频播放设备（虚拟声卡）。
  @JsonValue(5)
  audioVirtualPlayoutDevice,

  /// （仅适用于 macOS。）6: 虚拟音频采集设备（虚拟声卡）。
  @JsonValue(6)
  audioVirtualRecordingDevice,
}

/// @nodoc
extension MediaDeviceTypeExt on MediaDeviceType {
  /// @nodoc
  static MediaDeviceType fromValue(int value) {
    return $enumDecode(_$MediaDeviceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaDeviceTypeEnumMap[this]!;
  }
}

/// 音乐文件播放状态。
@JsonEnum(alwaysCreate: true)
enum AudioMixingStateType {
  /// 710: 音乐文件正常播放。
  @JsonValue(710)
  audioMixingStatePlaying,

  /// 711: 音乐文件暂停播放。
  @JsonValue(711)
  audioMixingStatePaused,

  /// 713: 音乐文件停止播放。
  /// 该状态可能由以下原因导致：
  ///  audioMixingReasonAllLoopsCompleted(723)
  ///  audioMixingReasonStoppedByUser(724)
  @JsonValue(713)
  audioMixingStateStopped,

  /// 714: 音乐文件播放出错。
  /// 该状态可能由以下原因导致：
  ///  audioMixingReasonCanNotOpen(701)
  ///  audioMixingReasonTooFrequentCall(702)
  ///  audioMixingReasonInterruptedEof(703)
  @JsonValue(714)
  audioMixingStateFailed,
}

/// @nodoc
extension AudioMixingStateTypeExt on AudioMixingStateType {
  /// @nodoc
  static AudioMixingStateType fromValue(int value) {
    return $enumDecode(_$AudioMixingStateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioMixingStateTypeEnumMap[this]!;
  }
}

/// 音乐文件播放状态改变的原因。在 onAudioMixingStateChanged 回调中报告。
@JsonEnum(alwaysCreate: true)
enum AudioMixingReasonType {
  /// 701: 音乐文件打开出错。例如，本地音乐文件不存在、文件格式不支持或无法访问在线音乐文件 URL。
  @JsonValue(701)
  audioMixingReasonCanNotOpen,

  /// 702: 音乐文件打开太频繁。如需多次调用 startAudioMixing ，请确保调用间隔大于 500 ms。
  @JsonValue(702)
  audioMixingReasonTooFrequentCall,

  /// 703: 音乐文件播放中断。
  @JsonValue(703)
  audioMixingReasonInterruptedEof,

  /// 721: 音乐文件完成一次循环播放。
  @JsonValue(721)
  audioMixingReasonOneLoopCompleted,

  /// 723: 音乐文件完成所有循环播放。
  @JsonValue(723)
  audioMixingReasonAllLoopsCompleted,

  /// 724: 成功调用 stopAudioMixing 停止播放音乐文件。
  @JsonValue(724)
  audioMixingReasonStoppedByUser,

  /// @nodoc
  @JsonValue(726)
  audioMixingReasonResumedByUser,

  /// 0: 成功打开音乐文件。
  @JsonValue(0)
  audioMixingReasonOk,
}

/// @nodoc
extension AudioMixingReasonTypeExt on AudioMixingReasonType {
  /// @nodoc
  static AudioMixingReasonType fromValue(int value) {
    return $enumDecode(_$AudioMixingReasonTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioMixingReasonTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum InjectStreamStatus {
  /// @nodoc
  @JsonValue(0)
  injectStreamStatusStartSuccess,

  /// @nodoc
  @JsonValue(1)
  injectStreamStatusStartAlreadyExists,

  /// @nodoc
  @JsonValue(2)
  injectStreamStatusStartUnauthorized,

  /// @nodoc
  @JsonValue(3)
  injectStreamStatusStartTimedout,

  /// @nodoc
  @JsonValue(4)
  injectStreamStatusStartFailed,

  /// @nodoc
  @JsonValue(5)
  injectStreamStatusStopSuccess,

  /// @nodoc
  @JsonValue(6)
  injectStreamStatusStopNotFound,

  /// @nodoc
  @JsonValue(7)
  injectStreamStatusStopUnauthorized,

  /// @nodoc
  @JsonValue(8)
  injectStreamStatusStopTimedout,

  /// @nodoc
  @JsonValue(9)
  injectStreamStatusStopFailed,

  /// @nodoc
  @JsonValue(10)
  injectStreamStatusBroken,
}

/// @nodoc
extension InjectStreamStatusExt on InjectStreamStatus {
  /// @nodoc
  static InjectStreamStatus fromValue(int value) {
    return $enumDecode(_$InjectStreamStatusEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$InjectStreamStatusEnumMap[this]!;
  }
}

/// 语音音效均衡波段的中心频率。
@JsonEnum(alwaysCreate: true)
enum AudioEqualizationBandFrequency {
  /// 0: 31 Hz
  @JsonValue(0)
  audioEqualizationBand31,

  /// 1: 62 Hz
  @JsonValue(1)
  audioEqualizationBand62,

  /// 2: 125 Hz
  @JsonValue(2)
  audioEqualizationBand125,

  /// 3: 250 Hz
  @JsonValue(3)
  audioEqualizationBand250,

  /// 4: 500 Hz
  @JsonValue(4)
  audioEqualizationBand500,

  /// 5: 1 kHz
  @JsonValue(5)
  audioEqualizationBand1k,

  /// 6: 2 kHz
  @JsonValue(6)
  audioEqualizationBand2k,

  /// 7: 4 kHz
  @JsonValue(7)
  audioEqualizationBand4k,

  /// 8: 8 kHz
  @JsonValue(8)
  audioEqualizationBand8k,

  /// 9: 16 kHz
  @JsonValue(9)
  audioEqualizationBand16k,
}

/// @nodoc
extension AudioEqualizationBandFrequencyExt on AudioEqualizationBandFrequency {
  /// @nodoc
  static AudioEqualizationBandFrequency fromValue(int value) {
    return $enumDecode(_$AudioEqualizationBandFrequencyEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioEqualizationBandFrequencyEnumMap[this]!;
  }
}

/// 音频混响类型。
@JsonEnum(alwaysCreate: true)
enum AudioReverbType {
  /// 0: 原始声音强度，即所谓的 dry signal，取值范围 [-20,10]，单位为 dB。
  @JsonValue(0)
  audioReverbDryLevel,

  /// 1: 早期反射信号强度，即所谓的 wet signal，取值范围 [-20,10]，单位为 dB。
  @JsonValue(1)
  audioReverbWetLevel,

  /// 2: 所需混响效果的房间尺寸，一般房间越大，混响越强，取值范围 [0,100]，单位为 dB。
  @JsonValue(2)
  audioReverbRoomSize,

  /// 3: Wet signal 的初始延迟长度，取值范围 [0,200]，单位为毫秒。
  @JsonValue(3)
  audioReverbWetDelay,

  /// 4: 混响持续的强度，取值范围为 [0,100]。
  @JsonValue(4)
  audioReverbStrength,
}

/// @nodoc
extension AudioReverbTypeExt on AudioReverbType {
  /// @nodoc
  static AudioReverbType fromValue(int value) {
    return $enumDecode(_$AudioReverbTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioReverbTypeEnumMap[this]!;
  }
}

/// 网络条件较差时，音视频流回退处理的选项。
@JsonEnum(alwaysCreate: true)
enum StreamFallbackOptions {
  /// 0: 不对音视频流作回退处理，但不能保证音视频流的质量。
  @JsonValue(0)
  streamFallbackOptionDisabled,

  /// 1: 只接收视频小流（低分辨率、低码率视频流）。
  @JsonValue(1)
  streamFallbackOptionVideoStreamLow,

  /// 2: 网络条件较差时，先尝试只接收视频小流；如果因网络环境太差无法显示视频，则再回退到只接收订阅的音频流。
  @JsonValue(2)
  streamFallbackOptionAudioOnly,

  /// @nodoc
  @JsonValue(3)
  streamFallbackOptionVideoStreamLayer1,

  /// @nodoc
  @JsonValue(4)
  streamFallbackOptionVideoStreamLayer2,

  /// @nodoc
  @JsonValue(5)
  streamFallbackOptionVideoStreamLayer3,

  /// @nodoc
  @JsonValue(6)
  streamFallbackOptionVideoStreamLayer4,

  /// @nodoc
  @JsonValue(7)
  streamFallbackOptionVideoStreamLayer5,

  /// @nodoc
  @JsonValue(8)
  streamFallbackOptionVideoStreamLayer6,
}

/// @nodoc
extension StreamFallbackOptionsExt on StreamFallbackOptions {
  /// @nodoc
  static StreamFallbackOptions fromValue(int value) {
    return $enumDecode(_$StreamFallbackOptionsEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$StreamFallbackOptionsEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum PriorityType {
  /// @nodoc
  @JsonValue(50)
  priorityHigh,

  /// @nodoc
  @JsonValue(100)
  priorityNormal,
}

/// @nodoc
extension PriorityTypeExt on PriorityType {
  /// @nodoc
  static PriorityType fromValue(int value) {
    return $enumDecode(_$PriorityTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PriorityTypeEnumMap[this]!;
  }
}

/// 本地视频流统计信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LocalVideoStats implements AgoraSerializable {
  /// @nodoc
  const LocalVideoStats(
      {this.uid,
      this.sentBitrate,
      this.sentFrameRate,
      this.captureFrameRate,
      this.captureFrameWidth,
      this.captureFrameHeight,
      this.regulatedCaptureFrameRate,
      this.regulatedCaptureFrameWidth,
      this.regulatedCaptureFrameHeight,
      this.encoderOutputFrameRate,
      this.encodedFrameWidth,
      this.encodedFrameHeight,
      this.rendererOutputFrameRate,
      this.targetBitrate,
      this.targetFrameRate,
      this.qualityAdaptIndication,
      this.encodedBitrate,
      this.encodedFrameCount,
      this.codecType,
      this.txPacketLossRate,
      this.captureBrightnessLevel,
      this.dualStreamEnabled,
      this.hwEncoderAccelerating,
      this.simulcastDimensions,
      this.encodedFrameDepth});

  /// 本地用户的 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 实际发送码率 (Kbps) 不包含丢包后重传视频等的发送码率。
  @JsonKey(name: 'sentBitrate')
  final int? sentBitrate;

  /// 实际发送帧率 (fps)。 不包含丢包后重传视频等的发送帧率。
  @JsonKey(name: 'sentFrameRate')
  final int? sentFrameRate;

  /// 本地视频采集帧率 (fps)。
  @JsonKey(name: 'captureFrameRate')
  final int? captureFrameRate;

  /// 本地视频采集宽度 (px)。
  @JsonKey(name: 'captureFrameWidth')
  final int? captureFrameWidth;

  /// 本地视频采集高度 (px)。
  @JsonKey(name: 'captureFrameHeight')
  final int? captureFrameHeight;

  /// SDK 内置的视频采集适配器（regulator）调整后的摄像头采集视频帧率 (fps)。Regulator 根据视频编码配置对摄像头采集视频的帧率进行调整。
  @JsonKey(name: 'regulatedCaptureFrameRate')
  final int? regulatedCaptureFrameRate;

  /// SDK 内置的视频采集适配器（regulator）调整后的摄像头采集视频宽度 (px)。Regulator 根据视频编码配置对摄像头采集视频的宽高进行调整。
  @JsonKey(name: 'regulatedCaptureFrameWidth')
  final int? regulatedCaptureFrameWidth;

  /// SDK 内置的视频采集适配器（regulator）调整后的摄像头采集视频高度 (px)。Regulator 根据视频编码配置对摄像头采集视频的宽高进行调整。
  @JsonKey(name: 'regulatedCaptureFrameHeight')
  final int? regulatedCaptureFrameHeight;

  /// 本地视频编码器的输出帧率，单位为 fps。
  @JsonKey(name: 'encoderOutputFrameRate')
  final int? encoderOutputFrameRate;

  /// 视频编码宽度（px）。
  @JsonKey(name: 'encodedFrameWidth')
  final int? encodedFrameWidth;

  /// 视频编码高度（px）。
  @JsonKey(name: 'encodedFrameHeight')
  final int? encodedFrameHeight;

  /// 本地视频渲染器的输出帧率，单位为 fps。
  @JsonKey(name: 'rendererOutputFrameRate')
  final int? rendererOutputFrameRate;

  /// 当前编码器的目标编码码率 (Kbps)，该码率为 SDK 根据当前网络状况预估的一个值。
  @JsonKey(name: 'targetBitrate')
  final int? targetBitrate;

  /// 当前编码器的目标编码帧率 (fps)。
  @JsonKey(name: 'targetFrameRate')
  final int? targetFrameRate;

  /// 统计周期内本地视频质量（基于目标帧率和目标码率）的自适应情况。详见 QualityAdaptIndication 。
  @JsonKey(name: 'qualityAdaptIndication')
  final QualityAdaptIndication? qualityAdaptIndication;

  /// 视频编码码率（Kbps）。 不包含丢包后重传视频等的编码码率。
  @JsonKey(name: 'encodedBitrate')
  final int? encodedBitrate;

  /// 视频发送的帧数，累计值。
  @JsonKey(name: 'encodedFrameCount')
  final int? encodedFrameCount;

  /// 视频的编码类型。详见 VideoCodecType 。
  @JsonKey(name: 'codecType')
  final VideoCodecType? codecType;

  /// 弱网对抗前本端到声网边缘服务器的视频丢包率 (%)。
  @JsonKey(name: 'txPacketLossRate')
  final int? txPacketLossRate;

  /// 本地采集的画质亮度级别。详见 CaptureBrightnessLevelType 。
  @JsonKey(name: 'captureBrightnessLevel')
  final CaptureBrightnessLevelType? captureBrightnessLevel;

  /// @nodoc
  @JsonKey(name: 'dualStreamEnabled')
  final bool? dualStreamEnabled;

  /// 本地视频编码加速类型。
  ///  0：采用软件编码，未加速。
  ///  1：采用硬件编码进行加速。
  @JsonKey(name: 'hwEncoderAccelerating')
  final int? hwEncoderAccelerating;

  /// @nodoc
  @JsonKey(name: 'simulcastDimensions')
  final List<VideoDimensions>? simulcastDimensions;

  /// @nodoc
  @JsonKey(name: 'encodedFrameDepth')
  final int? encodedFrameDepth;

  /// @nodoc
  factory LocalVideoStats.fromJson(Map<String, dynamic> json) =>
      _$LocalVideoStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocalVideoStatsToJson(this);
}

/// 远端用户的音频统计数据。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RemoteAudioStats implements AgoraSerializable {
  /// @nodoc
  const RemoteAudioStats(
      {this.uid,
      this.quality,
      this.networkTransportDelay,
      this.jitterBufferDelay,
      this.audioLossRate,
      this.numChannels,
      this.receivedSampleRate,
      this.receivedBitrate,
      this.totalFrozenTime,
      this.frozenRate,
      this.mosValue,
      this.frozenRateByCustomPlcCount,
      this.plcCount,
      this.frozenCntByCustom,
      this.frozenTimeByCustom,
      this.totalActiveTime,
      this.publishDuration,
      this.qoeQuality,
      this.qualityChangedReason,
      this.rxAudioBytes,
      this.e2eDelay});

  /// 远端用户的用户 ID。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 远端用户发送的音频流质量。详见 QualityType 。
  @JsonKey(name: 'quality')
  final int? quality;

  /// 音频发送端到接收端的网络延迟（毫秒）。
  @JsonKey(name: 'networkTransportDelay')
  final int? networkTransportDelay;

  /// 音频接收端到网络抖动缓冲的网络延迟（毫秒）。 当接收端为观众且 ClientRoleOptions 的 audienceLatencyLevel 为 1 时，该参数不生效。
  @JsonKey(name: 'jitterBufferDelay')
  final int? jitterBufferDelay;

  /// 统计周期内的远端音频流的丢帧率 (%)。
  @JsonKey(name: 'audioLossRate')
  final int? audioLossRate;

  /// 声道数。
  @JsonKey(name: 'numChannels')
  final int? numChannels;

  /// 统计周期内接收到的远端音频流的采样率。
  @JsonKey(name: 'receivedSampleRate')
  final int? receivedSampleRate;

  /// 接收到的远端音频流在统计周期内的平均码率（Kbps）。
  @JsonKey(name: 'receivedBitrate')
  final int? receivedBitrate;

  /// 远端用户在加入频道后发生音频卡顿的累计时长（毫秒）。通话过程中，音频丢帧率达到 4% 即记为一次音频卡顿。
  @JsonKey(name: 'totalFrozenTime')
  final int? totalFrozenTime;

  /// 音频卡顿的累计时长占音频总有效时长的百分比 (%)。音频有效时长是指远端用户加入频道后音频未被停止发送或禁用的时长。
  @JsonKey(name: 'frozenRate')
  final int? frozenRate;

  /// 统计周期内，声网实时音频 MOS（平均主观意见分）评估方法对接收到的远端音频流的质量评分。返回值范围为 [0,500]。返回值除以 100 即可得到 MOS 分数，范围为 [0,5] 分，分数越高，音频质量越好。 MOS 分数 音质感受 大于 4 分 音频质量佳，清晰流畅。 3.5 - 4 分 音频质量较好，偶有音质损伤，但依然清晰。 3 - 3.5 分 音频质量一般，偶有卡顿，不是非常流畅，需要一点注意力才能听清。 2.5 - 3 分 音频质量较差，卡顿频繁，需要集中精力才能听清。 2 - 2.5 分 音频质量很差，偶有杂音，部分语义丢失，难以交流。 小于 2 分 音频质量非常差，杂音频现，大量语义丢失，完全无法交流。
  @JsonKey(name: 'mosValue')
  final int? mosValue;

  /// @nodoc
  @JsonKey(name: 'frozenRateByCustomPlcCount')
  final int? frozenRateByCustomPlcCount;

  /// @nodoc
  @JsonKey(name: 'plcCount')
  final int? plcCount;

  /// @nodoc
  @JsonKey(name: 'frozenCntByCustom')
  final int? frozenCntByCustom;

  /// @nodoc
  @JsonKey(name: 'frozenTimeByCustom')
  final int? frozenTimeByCustom;

  /// 远端用户在音频通话开始到本次回调之间的有效时长（毫秒）。
  /// 有效时长是指去除了远端用户进入静音状态的总时长。
  @JsonKey(name: 'totalActiveTime')
  final int? totalActiveTime;

  /// 远端音频流的累计发布时长（毫秒）。
  @JsonKey(name: 'publishDuration')
  final int? publishDuration;

  /// 接收远端音频时，本地用户的主观体验质量。
  @JsonKey(name: 'qoeQuality')
  final int? qoeQuality;

  /// 接收远端音频时，本地用户主观体验质量较差的原因。详见 ExperiencePoorReason 。
  @JsonKey(name: 'qualityChangedReason')
  final int? qualityChangedReason;

  /// @nodoc
  @JsonKey(name: 'rxAudioBytes')
  final int? rxAudioBytes;

  /// 端到端音频延时（毫秒），即自远端用户音频采集起，至本地用户开始播放音频的总时长。
  @JsonKey(name: 'e2eDelay')
  final int? e2eDelay;

  /// @nodoc
  factory RemoteAudioStats.fromJson(Map<String, dynamic> json) =>
      _$RemoteAudioStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RemoteAudioStatsToJson(this);
}

/// 远端视频流的统计信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RemoteVideoStats implements AgoraSerializable {
  /// @nodoc
  const RemoteVideoStats(
      {this.uid,
      this.delay,
      this.e2eDelay,
      this.width,
      this.height,
      this.receivedBitrate,
      this.decoderInputFrameRate,
      this.decoderOutputFrameRate,
      this.rendererOutputFrameRate,
      this.frameLossRate,
      this.packetLossRate,
      this.rxStreamType,
      this.totalFrozenTime,
      this.frozenRate,
      this.avSyncTimeMs,
      this.totalActiveTime,
      this.publishDuration,
      this.mosValue,
      this.rxVideoBytes});

  /// 用户 ID，指定是哪个用户的视频流。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 延时（毫秒）。 弃用：在有音画同步机制的音视频场景中，你可以参考 RemoteAudioStats 里的 networkTransportDelay 和 jitterBufferDelay 成员的值，了解视频的延迟数据。
  @JsonKey(name: 'delay')
  final int? delay;

  /// 端到端视频延时（毫秒）。即，自远端用户视频采集起，至本地用户接收并渲染视频的总时长。
  @JsonKey(name: 'e2eDelay')
  final int? e2eDelay;

  /// 视频流宽（像素）。
  @JsonKey(name: 'width')
  final int? width;

  /// 视频流高（像素）。
  @JsonKey(name: 'height')
  final int? height;

  /// （上次统计后）接收到的码率(Kbps)。
  @JsonKey(name: 'receivedBitrate')
  final int? receivedBitrate;

  /// @nodoc
  @JsonKey(name: 'decoderInputFrameRate')
  final int? decoderInputFrameRate;

  /// 远端视频解码器的输出帧率，单位为 fps。
  @JsonKey(name: 'decoderOutputFrameRate')
  final int? decoderOutputFrameRate;

  /// 远端视频渲染器的输出帧率，单位为 fps。
  @JsonKey(name: 'rendererOutputFrameRate')
  final int? rendererOutputFrameRate;

  /// 远端视频丢包率(%)。
  @JsonKey(name: 'frameLossRate')
  final int? frameLossRate;

  /// 远端视频在使用抗丢包技术之后的丢包率(%)。
  @JsonKey(name: 'packetLossRate')
  final int? packetLossRate;

  /// 视频流类型，大流或小流。详见 VideoStreamType 。
  @JsonKey(name: 'rxStreamType')
  final VideoStreamType? rxStreamType;

  /// 远端用户在加入频道后发生视频卡顿的累计时长（ms）。通话过程中，视频帧率设置不低于 5 fps 时，连续渲染的两帧视频之间间隔超过 500 ms，则记为一次视频卡顿。
  @JsonKey(name: 'totalFrozenTime')
  final int? totalFrozenTime;

  /// 远端用户在加入频道后发生视频卡顿的累计时长占视频总有效时长的百分比 (%)。视频有效时长是指远端用户加入频道后视频未被停止发送或禁用的时长。
  @JsonKey(name: 'frozenRate')
  final int? frozenRate;

  /// 音频超前视频的时间 (ms)。 如果为负值，则代表音频落后于视频。
  @JsonKey(name: 'avSyncTimeMs')
  final int? avSyncTimeMs;

  /// 视频有效时长（毫秒）。
  /// 视频总有效时长是远端用户或主播加入频道后，既没有停止发送视频流，也没有禁用视频模块的通话时长。
  @JsonKey(name: 'totalActiveTime')
  final int? totalActiveTime;

  /// 远端视频流的累计发布时长（毫秒）。
  @JsonKey(name: 'publishDuration')
  final int? publishDuration;

  /// 在统计周期内远端音频流的质量。该质量由声网实时音频 MOS（主观意见评分）测量方法确定。返回值范围为 [0, 500]，除以 100 后为 MOS 分数，范围为 0 到 5，分数越高表示音频质量越好。声网实时音频 MOS 评分对应的主观音质感受如下：
  ///  大于 4 分，音频质量佳，清晰流畅。
  ///  3.5 - 4 分，音频质量较好，偶有音质损伤，但依然清晰。
  ///  3 - 3.5 分，音频质量一般，偶有卡顿，不是非常流畅，需要一点注意力才能听清。
  ///  2.5 - 3 分，音频质量较差，卡顿频繁，需要集中精力才能听清。
  ///  2 - 2.5 分，音频质量很差，偶有杂音，部分语义丢失，难以交流。
  ///  小于 2 分，音频质量非常差，杂音频现，大量语义丢失，完全无法交流。
  @JsonKey(name: 'mosValue')
  final int? mosValue;

  /// @nodoc
  @JsonKey(name: 'rxVideoBytes')
  final int? rxVideoBytes;

  /// @nodoc
  factory RemoteVideoStats.fromJson(Map<String, dynamic> json) =>
      _$RemoteVideoStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RemoteVideoStatsToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoCompositingLayout implements AgoraSerializable {
  /// @nodoc
  const VideoCompositingLayout(
      {this.canvasWidth,
      this.canvasHeight,
      this.backgroundColor,
      this.regions,
      this.regionCount,
      this.appData,
      this.appDataLength});

  /// @nodoc
  @JsonKey(name: 'canvasWidth')
  final int? canvasWidth;

  /// @nodoc
  @JsonKey(name: 'canvasHeight')
  final int? canvasHeight;

  /// @nodoc
  @JsonKey(name: 'backgroundColor')
  final String? backgroundColor;

  /// @nodoc
  @JsonKey(name: 'regions')
  final List<Region>? regions;

  /// @nodoc
  @JsonKey(name: 'regionCount')
  final int? regionCount;

  /// @nodoc
  @JsonKey(name: 'appData', ignore: true)
  final Uint8List? appData;

  /// @nodoc
  @JsonKey(name: 'appDataLength')
  final int? appDataLength;

  /// @nodoc
  factory VideoCompositingLayout.fromJson(Map<String, dynamic> json) =>
      _$VideoCompositingLayoutFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoCompositingLayoutToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Region implements AgoraSerializable {
  /// @nodoc
  const Region(
      {this.uid,
      this.x,
      this.y,
      this.width,
      this.height,
      this.zOrder,
      this.alpha,
      this.renderMode});

  /// @nodoc
  @JsonKey(name: 'uid')
  final int? uid;

  /// @nodoc
  @JsonKey(name: 'x')
  final double? x;

  /// @nodoc
  @JsonKey(name: 'y')
  final double? y;

  /// @nodoc
  @JsonKey(name: 'width')
  final double? width;

  /// @nodoc
  @JsonKey(name: 'height')
  final double? height;

  /// @nodoc
  @JsonKey(name: 'zOrder')
  final int? zOrder;

  /// @nodoc
  @JsonKey(name: 'alpha')
  final double? alpha;

  /// @nodoc
  @JsonKey(name: 'renderMode')
  final RenderModeType? renderMode;

  /// @nodoc
  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegionToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InjectStreamConfig implements AgoraSerializable {
  /// @nodoc
  const InjectStreamConfig(
      {this.width,
      this.height,
      this.videoGop,
      this.videoFramerate,
      this.videoBitrate,
      this.audioSampleRate,
      this.audioBitrate,
      this.audioChannels});

  /// @nodoc
  @JsonKey(name: 'width')
  final int? width;

  /// @nodoc
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  @JsonKey(name: 'videoGop')
  final int? videoGop;

  /// @nodoc
  @JsonKey(name: 'videoFramerate')
  final int? videoFramerate;

  /// @nodoc
  @JsonKey(name: 'videoBitrate')
  final int? videoBitrate;

  /// @nodoc
  @JsonKey(name: 'audioSampleRate')
  final AudioSampleRateType? audioSampleRate;

  /// @nodoc
  @JsonKey(name: 'audioBitrate')
  final int? audioBitrate;

  /// @nodoc
  @JsonKey(name: 'audioChannels')
  final int? audioChannels;

  /// @nodoc
  factory InjectStreamConfig.fromJson(Map<String, dynamic> json) =>
      _$InjectStreamConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InjectStreamConfigToJson(this);
}

/// 服务端转码推流的生命周期。
///
/// 废弃 弃用
@JsonEnum(alwaysCreate: true)
enum RtmpStreamLifeCycleType {
  /// 跟频道生命周期绑定，即频道内所有主播离开，服务端转码推流会在 30 秒之后停止。
  @JsonValue(1)
  rtmpStreamLifeCycleBind2channel,

  /// 跟启动服务端转码推流的主播生命周期绑定，即该主播离开，服务端转码推流会立即停止。
  @JsonValue(2)
  rtmpStreamLifeCycleBind2owner,
}

/// @nodoc
extension RtmpStreamLifeCycleTypeExt on RtmpStreamLifeCycleType {
  /// @nodoc
  static RtmpStreamLifeCycleType fromValue(int value) {
    return $enumDecode(_$RtmpStreamLifeCycleTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RtmpStreamLifeCycleTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PublisherConfiguration implements AgoraSerializable {
  /// @nodoc
  const PublisherConfiguration(
      {this.width,
      this.height,
      this.framerate,
      this.bitrate,
      this.defaultLayout,
      this.lifecycle,
      this.owner,
      this.injectStreamWidth,
      this.injectStreamHeight,
      this.injectStreamUrl,
      this.publishUrl,
      this.rawStreamUrl,
      this.extraInfo});

  /// @nodoc
  @JsonKey(name: 'width')
  final int? width;

  /// @nodoc
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  @JsonKey(name: 'framerate')
  final int? framerate;

  /// @nodoc
  @JsonKey(name: 'bitrate')
  final int? bitrate;

  /// @nodoc
  @JsonKey(name: 'defaultLayout')
  final int? defaultLayout;

  /// @nodoc
  @JsonKey(name: 'lifecycle')
  final int? lifecycle;

  /// @nodoc
  @JsonKey(name: 'owner')
  final bool? owner;

  /// @nodoc
  @JsonKey(name: 'injectStreamWidth')
  final int? injectStreamWidth;

  /// @nodoc
  @JsonKey(name: 'injectStreamHeight')
  final int? injectStreamHeight;

  /// @nodoc
  @JsonKey(name: 'injectStreamUrl')
  final String? injectStreamUrl;

  /// @nodoc
  @JsonKey(name: 'publishUrl')
  final String? publishUrl;

  /// @nodoc
  @JsonKey(name: 'rawStreamUrl')
  final String? rawStreamUrl;

  /// @nodoc
  @JsonKey(name: 'extraInfo')
  final String? extraInfo;

  /// @nodoc
  factory PublisherConfiguration.fromJson(Map<String, dynamic> json) =>
      _$PublisherConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PublisherConfigurationToJson(this);
}

/// 摄像头方向。
@JsonEnum(alwaysCreate: true)
enum CameraDirection {
  /// 0: 后置摄像头。
  @JsonValue(0)
  cameraRear,

  /// 1: （默认）前置摄像头。
  @JsonValue(1)
  cameraFront,
}

/// @nodoc
extension CameraDirectionExt on CameraDirection {
  /// @nodoc
  static CameraDirection fromValue(int value) {
    return $enumDecode(_$CameraDirectionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraDirectionEnumMap[this]!;
  }
}

/// 云代理类型。
@JsonEnum(alwaysCreate: true)
enum CloudProxyType {
  /// 0：自动模式。SDK 默认开启该模式。在该模式下，SDK 优先连接 SD-RTN™，如果连接失败，自动切换到 TLS 443。
  @JsonValue(0)
  noneProxy,

  /// 1：UDP 协议的云代理，即 Force UDP 云代理模式。在该模式下，SDK 始终通过 UDP 协议传输数据。
  @JsonValue(1)
  udpProxy,

  /// 2：TCP（加密）协议的云代理，即 Force TCP 云代理模式。在该模式下，SDK 始终通过 TLS 443 传输数据。
  @JsonValue(2)
  tcpProxy,
}

/// @nodoc
extension CloudProxyTypeExt on CloudProxyType {
  /// @nodoc
  static CloudProxyType fromValue(int value) {
    return $enumDecode(_$CloudProxyTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CloudProxyTypeEnumMap[this]!;
  }
}

/// 摄像头采集配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class CameraCapturerConfiguration implements AgoraSerializable {
  /// @nodoc
  const CameraCapturerConfiguration(
      {this.cameraDirection,
      this.cameraFocalLengthType,
      this.deviceId,
      this.cameraId,
      this.followEncodeDimensionRatio,
      this.format});

  /// （可选）摄像头方向。详见 CameraDirection 。 该参数仅适用于 Android 和 iOS 平台。
  @JsonKey(name: 'cameraDirection')
  final CameraDirection? cameraDirection;

  /// （可选）摄像头的焦距类型。详见 CameraFocalLengthType 。
  ///  该参数仅适用于 Android 和 iOS。
  ///  如需设置摄像头的焦距类型，仅支持通过 cameraDirection 指定摄像头，不支持通过 cameraId 进行指定。
  ///  部分 iOS 设备的后置摄像头为多个摄像头组成的融合镜头，如双摄（广角和超广角）或三摄（广角、超广角和长焦），对于这种具备超广角能力的融合镜头，你可以通过以下任意一种方式实现超广角的采集效果：
  ///  方式一：将该参数设置为 cameraFocalLengthUltraWide (2)（超广角镜头）。
  ///  方式二：将该参数设置为 cameraFocalLengthDefault (0)（标准镜头），然后调用 setCameraZoomFactor 将相机缩放比例设置为小于 1.0 的数值，最小可以设置为 0.5。 区别为方式一的超广角大小不可调节，方式二支持自由调节相机的缩放比例。
  @JsonKey(name: 'cameraFocalLengthType')
  final CameraFocalLengthType? cameraFocalLengthType;

  /// （可选）摄像头的 ID。最大长度为 MaxDeviceIdLengthType 。 该参数仅适用于 Windows 和 macOS。
  @JsonKey(name: 'deviceId')
  final String? deviceId;

  /// （可选）摄像头 ID。默认为前置摄像头对应的摄像头 ID。你可以通过 Android 原生系统 API 获取摄像头 ID，详见 [Camera.open()](https://developer.android.google.cn/reference/android/hardware/Camera#open(int)) 和 [CameraManager.getCameraIdList()](https://developer.android.google.cn/reference/android/hardware/camera2/CameraManager?hl=en#getCameraIdList)。
  ///  该参数仅适用于 Android。
  ///  该参数和 cameraDirection 均用于指定摄像头，二者为互斥关系，你可以按需选用其中之一，具体区别如下：
  ///  通过 cameraDirection 指定摄像头的方式更为简便。你只需指定摄像头的方向（前置或后置），无需指定具体的摄像头 ID，SDK 会通过系统 API 去检索和确定实际的摄像头 ID。
  ///  通过 cameraId 则可以更精确地指定某个特定的摄像头。对于多摄像头的设备， cameraDirection 无法识别或访问全部可用摄像头，这种情况建议使用 cameraId 直接指定你想要的摄像头 ID。
  @JsonKey(name: 'cameraId')
  final String? cameraId;

  /// （可选）是否跟随 setVideoEncoderConfiguration 中设置的视频宽高比： true ：(默认) 跟随。SDK 会将采集到的视频按照已设置的视频宽高比进行裁剪，会同步改变本地预览画面、 onCaptureVideoFrame 和 onPreEncodeVideoFrame 中的视频画面。 false ：不跟随。SDK不改变采集到的视频帧宽高比。
  @JsonKey(name: 'followEncodeDimensionRatio')
  final bool? followEncodeDimensionRatio;

  /// （可选）视频帧格式。详见 VideoFormat 。
  @JsonKey(name: 'format')
  final VideoFormat? format;

  /// @nodoc
  factory CameraCapturerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CameraCapturerConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CameraCapturerConfigurationToJson(this);
}

/// 屏幕采集配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenCaptureConfiguration implements AgoraSerializable {
  /// @nodoc
  const ScreenCaptureConfiguration(
      {this.isCaptureWindow,
      this.displayId,
      this.screenRect,
      this.windowId,
      this.params,
      this.regionRect});

  /// 是否采集屏幕上的窗口： true ：采集窗口。 false ：（默认）采集屏幕，不采集窗口。
  @JsonKey(name: 'isCaptureWindow')
  final bool? isCaptureWindow;

  /// （仅适用于 macOS 平台）屏幕的 display ID。 请仅在 Mac 设备上采集屏幕时使用该参数。
  @JsonKey(name: 'displayId')
  final int? displayId;

  /// （仅适用于 Windows 平台）待共享的屏幕相对于虚拟屏的位置。 请仅在 Windows 设备上采集屏幕时使用该参数。
  @JsonKey(name: 'screenRect')
  final Rectangle? screenRect;

  /// （仅适用于 Windows 和 macOS 平台）窗口 ID。 请仅在采集窗口时使用该参数。
  @JsonKey(name: 'windowId')
  final int? windowId;

  /// （仅适用于 Windows 和 macOS 平台）屏幕共享流的编码参数配置。详见 ScreenCaptureParameters 。
  @JsonKey(name: 'params')
  final ScreenCaptureParameters? params;

  /// （仅适用于 Windows 和 macOS 平台）待共享区域相对于整个屏幕的位置。详见 Rectangle 。如不填，则表示共享整个屏幕。如果设置的共享区域超出了屏幕的边界，则只共享屏幕内的内容。 如果将 Rectangle 中的 width 或 height 设为 0 ，则共享整个屏幕。
  @JsonKey(name: 'regionRect')
  final Rectangle? regionRect;

  /// @nodoc
  factory ScreenCaptureConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ScreenCaptureConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenCaptureConfigurationToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SIZE implements AgoraSerializable {
  /// @nodoc
  const SIZE({this.width, this.height});

  /// @nodoc
  @JsonKey(name: 'width')
  final int? width;

  /// @nodoc
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  factory SIZE.fromJson(Map<String, dynamic> json) => _$SIZEFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SIZEToJson(this);
}

/// 缩略图或图标的图像内容。在 ScreenCaptureSourceInfo 中设置。
///
/// 图像默认为 ARGB 格式。如果你需要使用其他格式，请自行转换格式。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ThumbImageBuffer implements AgoraSerializable {
  /// @nodoc
  const ThumbImageBuffer({this.buffer, this.length, this.width, this.height});

  /// 缩略图或图标的 buffer。
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// 缩略图或图标的 buffer 长度，单位为字节。
  @JsonKey(name: 'length')
  final int? length;

  /// 缩略图或图标的实际宽度（px）。
  @JsonKey(name: 'width')
  final int? width;

  /// 缩略图或图标的实际高度（px）。
  @JsonKey(name: 'height')
  final int? height;

  /// @nodoc
  factory ThumbImageBuffer.fromJson(Map<String, dynamic> json) =>
      _$ThumbImageBufferFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ThumbImageBufferToJson(this);
}

/// 共享目标的类型。在 ScreenCaptureSourceInfo 中设置。
@JsonEnum(alwaysCreate: true)
enum ScreenCaptureSourceType {
  /// -1：未知。
  @JsonValue(-1)
  screencapturesourcetypeUnknown,

  /// 0：共享目标为某一个窗口。
  @JsonValue(0)
  screencapturesourcetypeWindow,

  /// 1：共享目标为某一个显示器的屏幕。
  @JsonValue(1)
  screencapturesourcetypeScreen,

  /// 2：预留参数。
  @JsonValue(2)
  screencapturesourcetypeCustom,
}

/// @nodoc
extension ScreenCaptureSourceTypeExt on ScreenCaptureSourceType {
  /// @nodoc
  static ScreenCaptureSourceType fromValue(int value) {
    return $enumDecode(_$ScreenCaptureSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ScreenCaptureSourceTypeEnumMap[this]!;
  }
}

/// 可共享窗口或屏幕的信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScreenCaptureSourceInfo implements AgoraSerializable {
  /// @nodoc
  const ScreenCaptureSourceInfo(
      {this.type,
      this.sourceId,
      this.sourceName,
      this.thumbImage,
      this.iconImage,
      this.processPath,
      this.sourceTitle,
      this.primaryMonitor,
      this.isOccluded,
      this.position,
      this.minimizeWindow,
      this.sourceDisplayId});

  /// 共享目标的类型。详见 ScreenCaptureSourceType 。
  @JsonKey(name: 'type')
  final ScreenCaptureSourceType? type;

  /// 对于窗口，表示窗口 ID（Window ID）；对于屏幕，表示屏幕 ID（Display ID）。
  @JsonKey(name: 'sourceId')
  final int? sourceId;

  /// 窗口或屏幕的名称。UTF-8 编码。
  @JsonKey(name: 'sourceName')
  final String? sourceName;

  /// 缩略图的图像内容。详见 ThumbImageBuffer 。
  @JsonKey(name: 'thumbImage')
  final ThumbImageBuffer? thumbImage;

  /// 图标的图像内容。详见 ThumbImageBuffer 。
  @JsonKey(name: 'iconImage')
  final ThumbImageBuffer? iconImage;

  /// 窗口所属的进程。UTF-8 编码。
  @JsonKey(name: 'processPath')
  final String? processPath;

  /// 窗口标题。UTF-8 编码。
  @JsonKey(name: 'sourceTitle')
  final String? sourceTitle;

  /// 屏幕是否为主显示屏： true : 屏幕为主显示屏。 false : 屏幕不是主显示屏。
  @JsonKey(name: 'primaryMonitor')
  final bool? primaryMonitor;

  /// @nodoc
  @JsonKey(name: 'isOccluded')
  final bool? isOccluded;

  /// 窗口相对于整个屏幕空间（包含所有可共享屏幕）的位置。详见 Rectangle 。
  @JsonKey(name: 'position')
  final Rectangle? position;

  /// (仅适用于 Windows) 窗口是否已最小化： true : 窗口已最小化。 false : 窗口未最小化。
  @JsonKey(name: 'minimizeWindow')
  final bool? minimizeWindow;

  /// (仅适用于 Windows) 窗口所在的屏幕 ID。如果窗口为跨屏幕显示，则表示与该窗口相交面积最大的屏幕 ID。如果窗口位于可见屏幕之外，则该成员的值为 -2。
  @JsonKey(name: 'sourceDisplayId')
  final int? sourceDisplayId;

  /// @nodoc
  factory ScreenCaptureSourceInfo.fromJson(Map<String, dynamic> json) =>
      _$ScreenCaptureSourceInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScreenCaptureSourceInfoToJson(this);
}

/// 音频的高级选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdvancedAudioOptions implements AgoraSerializable {
  /// @nodoc
  const AdvancedAudioOptions({this.audioProcessingChannels});

  /// 音频前处理的声道数。详见 audioprocessingchannels 。
  @JsonKey(name: 'audioProcessingChannels')
  final int? audioProcessingChannels;

  /// @nodoc
  factory AdvancedAudioOptions.fromJson(Map<String, dynamic> json) =>
      _$AdvancedAudioOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdvancedAudioOptionsToJson(this);
}

/// 垫片图片的设置选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ImageTrackOptions implements AgoraSerializable {
  /// @nodoc
  const ImageTrackOptions({this.imageUrl, this.fps, this.mirrorMode});

  /// 垫片图片的 URL，目前支持 JPEG、JPG、PNG、GIF 格式的图片。支持从本地绝对路径或相对路径添加垫片图片。 在 Android 平台上，不支持从 /assets/ 中添加垫片图片。
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  /// 视频帧率，取值范围为 [1,30]。默认值为 1。
  @JsonKey(name: 'fps')
  final int? fps;

  /// @nodoc
  @JsonKey(name: 'mirrorMode')
  final VideoMirrorModeType? mirrorMode;

  /// @nodoc
  factory ImageTrackOptions.fromJson(Map<String, dynamic> json) =>
      _$ImageTrackOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImageTrackOptionsToJson(this);
}

/// 频道媒体设置选项。
///
/// RtcConnection publishMicrophoneTrack publishCustomAudioTrack publishMediaPlayerAudioTrack true publishCameraTrack publishScreenCaptureVideo 、 publishScreenTrack 、 publishCustomVideoTrack publishEncodedVideoTrack true 建议你根据业务场景自行设置成员参数值，否则 SDK 会自动对成员参数进行赋值。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelMediaOptions implements AgoraSerializable {
  /// @nodoc
  const ChannelMediaOptions(
      {this.publishCameraTrack,
      this.publishSecondaryCameraTrack,
      this.publishThirdCameraTrack,
      this.publishFourthCameraTrack,
      this.publishMicrophoneTrack,
      this.publishScreenCaptureAudio,
      this.publishScreenCaptureVideo,
      this.publishScreenTrack,
      this.publishSecondaryScreenTrack,
      this.publishThirdScreenTrack,
      this.publishFourthScreenTrack,
      this.publishCustomAudioTrack,
      this.publishCustomAudioTrackId,
      this.publishCustomVideoTrack,
      this.publishEncodedVideoTrack,
      this.publishMediaPlayerAudioTrack,
      this.publishMediaPlayerVideoTrack,
      this.publishTranscodedVideoTrack,
      this.publishMixedAudioTrack,
      this.publishLipSyncTrack,
      this.autoSubscribeAudio,
      this.autoSubscribeVideo,
      this.enableAudioRecordingOrPlayout,
      this.publishMediaPlayerId,
      this.clientRoleType,
      this.audienceLatencyLevel,
      this.defaultVideoStreamType,
      this.channelProfile,
      this.audioDelayMs,
      this.mediaPlayerAudioDelayMs,
      this.token,
      this.enableBuiltInMediaEncryption,
      this.publishRhythmPlayerTrack,
      this.isInteractiveAudience,
      this.customVideoTrackId,
      this.isAudioFilterable,
      this.parameters,
      this.enableMultipath,
      this.uplinkMultipathMode,
      this.downlinkMultipathMode,
      this.preferMultipathType});

  /// 设置是否发布摄像头采集的视频： true ：发布摄像头采集的视频。 false ：不发布摄像头采集的视频。
  @JsonKey(name: 'publishCameraTrack')
  final bool? publishCameraTrack;

  /// 设置是否发布第二个摄像头采集的视频： true ：发布第二个摄像头采集的视频。 false ：不发布第二个摄像头采集的视频。
  @JsonKey(name: 'publishSecondaryCameraTrack')
  final bool? publishSecondaryCameraTrack;

  /// 该参数仅适用于 Android、Windows 和 macOS 平台。 设置是否发布第三个摄像头采集的视频： true ：发布第三个摄像头采集的视频。 false ：不发布第三个摄像头采集的视频。
  @JsonKey(name: 'publishThirdCameraTrack')
  final bool? publishThirdCameraTrack;

  /// 该参数仅适用于 Android、Windows 和 macOS 平台。 设置是否发布第四个摄像头采集的视频： true ：发布第四个摄像头采集的视频。 false ：不发布第四个摄像头采集的视频。
  @JsonKey(name: 'publishFourthCameraTrack')
  final bool? publishFourthCameraTrack;

  /// 设置是否发布麦克风采集到的音频： true ：发布麦克风采集到的音频。 false ：不发布麦克风采集到的音频。
  @JsonKey(name: 'publishMicrophoneTrack')
  final bool? publishMicrophoneTrack;

  /// 该参数仅适用于 Android 和 iOS 平台。 设置是否发布屏幕采集的音频： true ：发布屏幕采集到的音频。 false ：不发布屏幕采集到的音频。
  @JsonKey(name: 'publishScreenCaptureAudio')
  final bool? publishScreenCaptureAudio;

  /// 该参数仅适用于 Android 和 iOS 平台。 设置是否发布屏幕采集的视频： true ：发布屏幕采集到的视频。 false ：不发布屏幕采集到的视频。
  @JsonKey(name: 'publishScreenCaptureVideo')
  final bool? publishScreenCaptureVideo;

  /// 该参数仅适用于 Windows 和 macOS 平台。 设置是否发布屏幕采集的视频： true ：发布屏幕采集到的视频。 false ：不发布屏幕采集到的视频。
  @JsonKey(name: 'publishScreenTrack')
  final bool? publishScreenTrack;

  /// 设置是否发布第二个屏幕采集的视频： true ：发布第二个屏幕采集到的视频。 false ：不发布第二个屏幕采集到的视频。
  @JsonKey(name: 'publishSecondaryScreenTrack')
  final bool? publishSecondaryScreenTrack;

  /// 该参数仅适用于 Windows 和 macOS 平台。 设置是否发布第三个屏幕采集的视频： true ：发布第三个屏幕采集到的视频。 false ：不发布第三个屏幕采集到的视频。
  @JsonKey(name: 'publishThirdScreenTrack')
  final bool? publishThirdScreenTrack;

  /// 该参数仅适用于 Windows 和 macOS 平台。 设置是否发布第四个屏幕采集的视频： true ：发布第四个屏幕采集到的视频。 false ：不发布第四个屏幕采集到的视频。
  @JsonKey(name: 'publishFourthScreenTrack')
  final bool? publishFourthScreenTrack;

  /// 设置是否发布自定义采集的音频： true ：发布自定义采集到的音频。 false ：不发布自定义采集到的音频。
  @JsonKey(name: 'publishCustomAudioTrack')
  final bool? publishCustomAudioTrack;

  /// 待发布的自定义音频轨道的 ID，默认值为 0。你可以通过 createCustomAudioTrack 方法来获取自定义音频轨道 ID。
  @JsonKey(name: 'publishCustomAudioTrackId')
  final int? publishCustomAudioTrackId;

  /// 设置是否发布自定义采集的视频： true ：发布自定义采集的视频。 false ：不发布自定义采集到的视频。
  @JsonKey(name: 'publishCustomVideoTrack')
  final bool? publishCustomVideoTrack;

  /// 设置是否发布编码后的视频： true ：发布编码后的视频 。 false ：不发布编码后的视频。
  @JsonKey(name: 'publishEncodedVideoTrack')
  final bool? publishEncodedVideoTrack;

  /// 设置是否发布媒体播放器的音频： true ：发布媒体播放器的音频。 false ：不发布媒体播放器的音频。
  @JsonKey(name: 'publishMediaPlayerAudioTrack')
  final bool? publishMediaPlayerAudioTrack;

  /// 设置是否发布媒体播放器的视频： true ：发布媒体播放器的视频。 false ：不发布媒体播放器的视频。
  @JsonKey(name: 'publishMediaPlayerVideoTrack')
  final bool? publishMediaPlayerVideoTrack;

  /// 设置是否发布本地的转码视频： true ：发布本地的转码视频。 false ：不发布本地的转码视频。
  @JsonKey(name: 'publishTranscodedVideoTrack')
  final bool? publishTranscodedVideoTrack;

  /// 设置是否发布本地混音音频： true ：发布本地混音音频。 false ：不发布本地混音音频。
  @JsonKey(name: 'publishMixedAudioTrack')
  final bool? publishMixedAudioTrack;

  /// 设置是否发布语音驱动插件处理后的视频： true ：发布语音驱动插件处理后的视频。 false ：（默认）不发布语音驱动插件处理后的视频。
  @JsonKey(name: 'publishLipSyncTrack')
  final bool? publishLipSyncTrack;

  /// 设置是否自动订阅所有音频流： true ：自动订阅所有音频流。 false ：不自动订阅任何音频流。
  @JsonKey(name: 'autoSubscribeAudio')
  final bool? autoSubscribeAudio;

  /// 设置是否自动订阅所有视频流： true ：自动订阅所有视频流。 false ：不自动订阅任何视频流。
  @JsonKey(name: 'autoSubscribeVideo')
  final bool? autoSubscribeVideo;

  /// 如果那你需要发布麦克风采集的音频流，请确保该参数设为 true 。 设置是否开启音频录制或播放： true ：开启音频录制或播放。 false ：不开启音频录制或播放。
  @JsonKey(name: 'enableAudioRecordingOrPlayout')
  final bool? enableAudioRecordingOrPlayout;

  /// 待发布的媒体播放器的 ID。默认值为 0。
  @JsonKey(name: 'publishMediaPlayerId')
  final int? publishMediaPlayerId;

  /// 用户角色。详见 ClientRoleType 。
  @JsonKey(name: 'clientRoleType')
  final ClientRoleType? clientRoleType;

  /// 观众端延时级别。详见 AudienceLatencyLevelType 。
  @JsonKey(name: 'audienceLatencyLevel')
  final AudienceLatencyLevelType? audienceLatencyLevel;

  /// 默认订阅的视频流类型: VideoStreamType 。
  @JsonKey(name: 'defaultVideoStreamType')
  final VideoStreamType? defaultVideoStreamType;

  /// 频道使用场景。详见 ChannelProfileType 。
  @JsonKey(name: 'channelProfile')
  final ChannelProfileType? channelProfile;

  /// 发送音频帧的延时（毫秒）。你可以通过该参数来设置需要发送的音频帧的延时，以确保音画同步。
  /// 如果要关闭延时，将此参数值设置为 0。
  @JsonKey(name: 'audioDelayMs')
  final int? audioDelayMs;

  /// @nodoc
  @JsonKey(name: 'mediaPlayerAudioDelayMs')
  final int? mediaPlayerAudioDelayMs;

  /// （可选）在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  ///  该参数仅在调用 updateChannelMediaOptions 或 updateChannelMediaOptionsEx 时生效。
  ///  请确保用于生成 token 的 App ID、频道名和用户名和 initialize 方法初始化引擎时用的 App ID，以及 joinChannel 或 joinChannelEx 方法加入频道时设置的频道名和用户名是一致的。
  @JsonKey(name: 'token')
  final String? token;

  /// @nodoc
  @JsonKey(name: 'enableBuiltInMediaEncryption')
  final bool? enableBuiltInMediaEncryption;

  /// 设置是否发布虚拟节拍器声音至远端： true ：发布。本地用户和远端用户都能听到节拍器。 false ：不发布。只有本地用户能听到节拍器。
  @JsonKey(name: 'publishRhythmPlayerTrack')
  final bool? publishRhythmPlayerTrack;

  /// 该参数用于实现跨直播间连麦场景。连麦主播需要调用 joinChannelEx 方法，以观众身份加入对方的直播间，并将 isInteractiveAudience 设置为 true 。
  ///  仅当用户角色为 clientRoleAudience 时，该参数生效。 是否开启互动观众模式： true ：开启互动观众模式。成功开启后，本地用户作为互动观众，收到低延时和流畅的远端用户视频。 false ：不开启互动观众模式。本地用户作为普通观众，收到默认设置的远端用户视频。
  @JsonKey(name: 'isInteractiveAudience')
  final bool? isInteractiveAudience;

  /// 调用 createCustomVideoTrack 方法返回的视频轨道 ID。默认值为 0。
  @JsonKey(name: 'customVideoTrackId')
  final int? customVideoTrackId;

  /// 如需启用该功能，请[联系销售](https://www.shengwang.cn/contact-sales/)。 设置是否让当前音频流根据音强算法参与选流。 true ：参与音强选流。如未开启音强选流功能，该参数不会生效。 false ：不参与音强选流。
  @JsonKey(name: 'isAudioFilterable')
  final bool? isAudioFilterable;

  /// @nodoc
  @JsonKey(name: 'parameters')
  final String? parameters;

  /// 权限和系统要求：
  ///  Android：Android 7.0 或更高版本（API 级别 24 或更高），需要 ACCESS_NETWORK_STATE 和 CHANGE_NETWORK_STATE 权限。
  ///  iOS：iOS 12.0 或更高版本。
  ///  macOS：10.14 或更高版本。
  ///  Windows：Windows Vista 或更高版本。 是否启用多路径传输： true ：启用多路径传输。 false ：禁用多路径传输。
  @JsonKey(name: 'enableMultipath')
  final bool? enableMultipath;

  /// @nodoc
  @JsonKey(name: 'uplinkMultipathMode')
  final MultipathMode? uplinkMultipathMode;

  /// @nodoc
  @JsonKey(name: 'downlinkMultipathMode')
  final MultipathMode? downlinkMultipathMode;

  /// 首选的传输路径类型。详见 MultipathType 。 使用该参数时，请确保已将 enableMultipath 设置为 true 。
  @JsonKey(name: 'preferMultipathType')
  final MultipathType? preferMultipathType;

  /// @nodoc
  factory ChannelMediaOptions.fromJson(Map<String, dynamic> json) =>
      _$ChannelMediaOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChannelMediaOptionsToJson(this);
}

/// 代理类型。
@JsonEnum(alwaysCreate: true)
enum ProxyType {
  /// 0: 预留参数，暂不支持。
  @JsonValue(0)
  noneProxyType,

  /// 1: UDP 协议的云代理，即 Force UDP 云代理模式。在该模式下，SDK 始终通过 UDP 协议传输数据。
  @JsonValue(1)
  udpProxyType,

  /// 2: TCP（加密）协议的云代理，即 Force TCP 云代理模式。在该模式下，SDK 始终通过 TLS 443 传输数据。
  @JsonValue(2)
  tcpProxyType,

  /// 3: 预留参数，暂不支持。
  @JsonValue(3)
  localProxyType,

  /// 4: 自动模式。在该模式下，SDK 优先连接 SD-RTN™，如果连接失败，自动切换为 TLS 443。
  @JsonValue(4)
  tcpProxyAutoFallbackType,

  /// @nodoc
  @JsonValue(5)
  httpProxyType,

  /// @nodoc
  @JsonValue(6)
  httpsProxyType,
}

/// @nodoc
extension ProxyTypeExt on ProxyType {
  /// @nodoc
  static ProxyType fromValue(int value) {
    return $enumDecode(_$ProxyTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ProxyTypeEnumMap[this]!;
  }
}

/// 进阶功能类型。
@JsonEnum(alwaysCreate: true)
enum FeatureType {
  /// 1: 虚拟背景功能。
  @JsonValue(1)
  videoVirtualBackground,

  /// 2: 美颜功能。
  @JsonValue(2)
  videoBeautyEffect,
}

/// @nodoc
extension FeatureTypeExt on FeatureType {
  /// @nodoc
  static FeatureType fromValue(int value) {
    return $enumDecode(_$FeatureTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$FeatureTypeEnumMap[this]!;
  }
}

/// 离开频道的选项。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LeaveChannelOptions implements AgoraSerializable {
  /// @nodoc
  const LeaveChannelOptions(
      {this.stopAudioMixing, this.stopAllEffect, this.stopMicrophoneRecording});

  /// 离开频道时，是否停止播放音乐文件及混音： true ：（默认）停止播放音乐文件及混音。 false ： 不停止播放音乐文件及混音。
  @JsonKey(name: 'stopAudioMixing')
  final bool? stopAudioMixing;

  /// 离开频道时，是否停止播放音效： true ：（默认）停止播放音效。 false ： 不停止播放音效。
  @JsonKey(name: 'stopAllEffect')
  final bool? stopAllEffect;

  /// 离开频道时，是否停止麦克风采集： true ：（默认）停止麦克风采集。 false ： 不停止麦克风采集。
  @JsonKey(name: 'stopMicrophoneRecording')
  final bool? stopMicrophoneRecording;

  /// @nodoc
  factory LeaveChannelOptions.fromJson(Map<String, dynamic> json) =>
      _$LeaveChannelOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LeaveChannelOptionsToJson(this);
}

/// 接口类 RtcEngineEventHandler 用于 SDK 向 App 发送事件通知，App 通过继承该接口类的方法获取 SDK 的事件通知。
///
/// 该接口类的所有方法都有缺省（空）实现， App 可以根据需要只继承关心的事件。
///  在回调方法中，App 不应该做耗时或者调用可能会引起阻塞的 API（如 sendMessage ），否则可能影响 SDK 的运行。
///  SDK 不再捕获开发者在 RtcEngineEventHandler 类回调中自行实现的代码逻辑中的异常。你需要自行处理该异常，否则异常出现时可能引起 App 崩溃。
class RtcEngineEventHandler {
  /// @nodoc
  const RtcEngineEventHandler({
    this.onJoinChannelSuccess,
    this.onRejoinChannelSuccess,
    this.onProxyConnected,
    this.onError,
    this.onAudioQuality,
    this.onLastmileProbeResult,
    this.onAudioVolumeIndication,
    this.onLeaveChannel,
    this.onRtcStats,
    this.onAudioDeviceStateChanged,
    this.onAudioMixingPositionChanged,
    this.onAudioMixingFinished,
    this.onAudioEffectFinished,
    this.onVideoDeviceStateChanged,
    this.onNetworkQuality,
    this.onIntraRequestReceived,
    this.onUplinkNetworkInfoUpdated,
    this.onLastmileQuality,
    this.onFirstLocalVideoFrame,
    this.onFirstLocalVideoFramePublished,
    this.onFirstRemoteVideoDecoded,
    this.onVideoSizeChanged,
    this.onLocalVideoEvent,
    this.onLocalVideoStateChanged,
    this.onRemoteVideoStateChanged,
    this.onFirstRemoteVideoFrame,
    this.onUserJoined,
    this.onUserOffline,
    this.onUserMuteAudio,
    this.onUserMuteVideo,
    this.onUserEnableVideo,
    this.onUserStateChanged,
    this.onUserEnableLocalVideo,
    this.onRemoteAudioStats,
    this.onLocalAudioStats,
    this.onLocalVideoStats,
    this.onRemoteVideoStats,
    this.onCameraReady,
    this.onCameraFocusAreaChanged,
    this.onCameraExposureAreaChanged,
    this.onFacePositionChanged,
    this.onVideoStopped,
    this.onAudioMixingStateChanged,
    this.onRhythmPlayerStateChanged,
    this.onConnectionLost,
    this.onConnectionInterrupted,
    this.onConnectionBanned,
    this.onStreamMessage,
    this.onStreamMessageError,
    this.onRdtMessage,
    this.onRdtStateChanged,
    this.onMediaControlMessage,
    this.onRequestToken,
    this.onTokenPrivilegeWillExpire,
    this.onLicenseValidationFailure,
    this.onFirstLocalAudioFramePublished,
    this.onFirstRemoteAudioDecoded,
    this.onFirstRemoteAudioFrame,
    this.onLocalAudioStateChanged,
    this.onRemoteAudioStateChanged,
    this.onActiveSpeaker,
    this.onContentInspectResult,
    this.onSnapshotTaken,
    this.onClientRoleChanged,
    this.onClientRoleChangeFailed,
    this.onAudioDeviceVolumeChanged,
    this.onRtmpStreamingStateChanged,
    this.onRtmpStreamingEvent,
    this.onTranscodingUpdated,
    this.onAudioRoutingChanged,
    this.onChannelMediaRelayStateChanged,
    this.onRemoteSubscribeFallbackToAudioOnly,
    this.onRemoteAudioTransportStats,
    this.onRemoteVideoTransportStats,
    this.onConnectionStateChanged,
    this.onNetworkTypeChanged,
    this.onEncryptionError,
    this.onPermissionError,
    this.onPermissionGranted,
    this.onLocalUserRegistered,
    this.onUserInfoUpdated,
    this.onUserAccountUpdated,
    this.onVideoRenderingTracingResult,
    this.onLocalVideoTranscoderError,
    this.onUploadLogResult,
    this.onAudioSubscribeStateChanged,
    this.onVideoSubscribeStateChanged,
    this.onAudioPublishStateChanged,
    this.onVideoPublishStateChanged,
    this.onTranscodedStreamLayoutInfo,
    this.onAudioMetadataReceived,
    this.onExtensionEventWithContext,
    this.onExtensionStartedWithContext,
    this.onExtensionStoppedWithContext,
    this.onExtensionErrorWithContext,
    this.onSetRtmFlagResult,
    this.onMultipathStats,
    this.onRenewTokenResult,
  });

  /// 成功加入频道回调。
  ///
  /// 该回调方法表示该客户端成功加入了指定的频道。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [elapsed] 从本地调用 joinChannel 开始到发生此事件过去的时间（毫秒）。
  final void Function(RtcConnection connection, int elapsed)?
      onJoinChannelSuccess;

  /// 成功重新加入频道回调。
  ///
  /// * [elapsed] 从调用 joinChannel 方法到触发该回调的时间间隔（毫秒）。
  final void Function(RtcConnection connection, int elapsed)?
      onRejoinChannelSuccess;

  /// 代理连接状态回调。
  ///
  /// 通过该回调你可以监听 SDK 连接代理的状态。例如，当用户调用 setCloudProxy 设置代理并成功加入频道后，SDK 会触发该回调报告用户 ID、连接的代理类型和从调用 joinChannel 到触发该回调经过的时间等。
  ///
  /// * [channel] 频道名称。
  /// * [uid] 用户 ID
  /// * [localProxyIp] 预留参数，暂不支持。
  /// * [elapsed] 从调用 joinChannel 到 SDK 触发该回调的经过的时间（毫秒）。
  final void Function(String channel, int uid, ProxyType proxyType,
      String localProxyIp, int elapsed)? onProxyConnected;

  /// 发生错误回调。
  ///
  /// 该回调方法表示 SDK 运行时出现了网络或媒体相关的错误。通常情况下，SDK 上报的错误意味着 SDK 无法自动恢复，需要 App 干预或提示用户。
  ///
  /// * [err] 错误码。详见 ErrorCodeType 。
  /// * [msg] 错误描述。
  final void Function(ErrorCodeType err, String msg)? onError;

  /// 远端声音质量回调。
  ///
  /// 废弃 弃用： 请改用 onRemoteAudioStats 。 该回调描述远端用户在通话中的音频质量，针对每个远端用户/主播每 2 秒触发一次。如果远端同时存在多个用户/主播，该回调每 2 秒会被触发多次。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，指定是谁发的音频流。
  /// * [quality] 语音质量。详见 QualityType 。
  /// * [delay] 音频包从发送端到接收端的延迟（毫秒），包括声音采样前处理、网络传输、网络抖动缓冲引起的延迟。
  /// * [lost] 音频包从发送端到接收端的丢包率 (%)。
  final void Function(RtcConnection connection, int remoteUid,
      QualityType quality, int delay, int lost)? onAudioQuality;

  /// 通话前网络上下行 Last mile 质量探测报告回调。
  ///
  /// 在调用 startLastmileProbeTest 之后，SDK 会在约 30 秒内返回该回调。
  ///
  /// * [result] 上下行 Last mile 质量探测结果。详见 LastmileProbeResult 。
  final void Function(LastmileProbeResult result)? onLastmileProbeResult;

  /// 用户音量提示回调。
  ///
  /// 该回调默认禁用，你可以通过 enableAudioVolumeIndication 开启。 开启后，只要频道内有发流用户，SDK 会在加入频道后按 enableAudioVolumeIndication 中设置的时间间隔触发 onAudioVolumeIndication 回调。每次会触发两个 onAudioVolumeIndication 回调，一个报告本地发流用户的音量相关信息，另一个报告瞬时音量最高的远端用户（最多 3 位）的音量相关信息。 启用该功能后，如果有用户将自己静音（调用了 muteLocalAudioStream ），SDK 会继续报告本地用户的音量提示回调。
  /// 瞬时音量最高的远端用户静音后 20 秒，远端的音量提示回调中将不再包含该用户；如果远端所有用户都将自己静音，20 秒后 SDK 停止报告远端用户的音量提示回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [speakers] 用户音量信息，详见 AudioVolumeInfo 数组。如果 speakers 为空，则表示远端用户不发流或没有远端用户。
  /// * [speakerNumber] 用户数量。
  ///  在本地用户的回调中，只要本地用户在发流， speakerNumber 始终为 1。
  ///  在远端用户的回调中， speakerNumber 取值范围为 [0,3]。如果远端发流用户数量大于 3，则此回调中 speakerNumber 值为 3。
  /// * [totalVolume] 混音后的总音量，取值范围为 [0,255]。
  ///  在本地用户的回调中， totalVolume 为本地发流用户的音量。
  ///  在远端用户的回调中， totalVolume 为瞬时音量最高的远端用户（最多 3 位）混音后的总音量。
  final void Function(RtcConnection connection, List<AudioVolumeInfo> speakers,
      int speakerNumber, int totalVolume)? onAudioVolumeIndication;

  /// 离开频道回调。
  ///
  /// 你可以通过该回调获取此次通话的总通话时长、SDK 收发数据的流量等信息。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] 通话的统计数据，详见 RtcStats 。
  final void Function(RtcConnection connection, RtcStats stats)? onLeaveChannel;

  /// 当前通话相关的统计信息回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] RTC 引擎统计数据，详见 RtcStats 。
  final void Function(RtcConnection connection, RtcStats stats)? onRtcStats;

  /// 音频设备变化回调。
  ///
  /// 提示系统音频设备状态发生改变，比如耳机被拔出。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceId] 设备 ID。
  /// * [deviceType] 设备类型定义。详见 MediaDeviceType 。
  /// * [deviceState] 设备状态，详见 MediaDeviceStateType 。
  final void Function(String deviceId, MediaDeviceType deviceType,
      MediaDeviceStateType deviceState)? onAudioDeviceStateChanged;

  /// 音乐文件播放进度回调。
  ///
  /// 当你调用 startAudioMixing 方法播放音乐文件后，SDK 会每隔一秒触发一次该回调，报告音乐文件当前的播放进度。
  ///
  /// * [position] 音乐文件当前的播放进度，单位为 ms。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  final void Function(int position)? onAudioMixingPositionChanged;

  /// 本地音乐文件播放已结束回调。
  ///
  /// 废弃 弃用： 请改用 onAudioMixingStateChanged 。 当调用 startAudioMixing 播放本地音乐文件结束后，会触发该回调。如果调用 startAudioMixing 失败，会返回错误码 WARN_AUDIO_MIXING_OPEN_ERROR 。
  final void Function()? onAudioMixingFinished;

  /// 本地音效文件播放已结束回调。
  ///
  /// 当播放音效结束后，会触发该回调。
  ///
  /// * [soundId] 指定音效的 ID。每个音效均有唯一的 ID。
  final void Function(int soundId)? onAudioEffectFinished;

  /// 视频设备变化回调。
  ///
  /// 该回调提示系统视频设备状态发生改变，比如被拔出或移除。如果设备已使用外接摄像头采集，外接摄像头被拔开后，视频会中断。 该回调仅适用于 Windows 和 macOS。
  ///
  /// * [deviceId] 设备 ID。
  /// * [deviceType] 设备类型。详见 MediaDeviceType 。
  /// * [deviceState] 设备状态。详见 MediaDeviceStateType 。
  final void Function(String deviceId, MediaDeviceType deviceType,
      MediaDeviceStateType deviceState)? onVideoDeviceStateChanged;

  /// 通话中每个用户的网络上下行 last mile 质量报告回调。
  ///
  /// 该回调描述每个用户在通话中的 last mile 网络状态，其中 last mile 是指设备到声网边缘服务器的网络状态。
  /// 该回调每 2 秒触发一次。如果远端有多个用户，该回调每 2 秒会被触发多次。
  /// 该回调通过频道内的广播包反馈网络质量。过多的广播包可能引发广播风暴。为防止广播风暴导致频道内大量数据传输，该回调默认支持同时反馈最多 4 个远端主播的网络质量。 用户不发流时， txQuality 为 Unknown ；用户不收流时， rxQuality 为 Unknown 。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID。表示该回调报告的是持有该 ID 的用户的网络质量。如果当 uid 为 0 时，返回的是本地用户的网络质量。
  /// * [txQuality] 该用户的上行网络质量，基于发送码率、上行丢包率、平均往返时延和网络抖动计算。 该值代表当前的上行网络质量，帮助判断是否可以支持当前设置的视频编码属性。 假设上行码率是 1000 Kbps，那么支持直播场景下 640 × 480 的分辨率、15 fps 的帧率没有问题，但是支持 1280 × 720 的分辨率就会有困难。详见 QualityType 。
  /// * [rxQuality] 该用户的下行网络质量，基于下行网络的丢包率、平均往返延时和网络抖动计算。详见 QualityType 。
  final void Function(RtcConnection connection, int remoteUid,
      QualityType txQuality, QualityType rxQuality)? onNetworkQuality;

  /// @nodoc
  final void Function(RtcConnection connection)? onIntraRequestReceived;

  /// 上行网络信息变化回调。
  ///
  /// 只有当上行网络信息发生变化时，SDK 才会触发该回调。 该回调仅适用于向 SDK 推送 H.264 格式的外部编码视频数据的场景。
  ///
  /// * [info] 上行网络信息，详见 UplinkNetworkInfo 。
  final void Function(UplinkNetworkInfo info)? onUplinkNetworkInfoUpdated;

  /// 网络上下行 last mile 质量报告回调。
  ///
  /// 该回调描述本地用户在加入频道前的 last mile 网络探测的结果，其中 last mile 是指设备到声网边缘服务器的网络状态。
  /// 加入频道前，调用 startLastmileProbeTest 之后，SDK 触发该回调报告本地用户在加入频道前的 last mile 网络探测的结果。
  ///
  /// * [quality] Last mile 网络质量。详见 QualityType 。
  final void Function(QualityType quality)? onLastmileQuality;

  /// 已显示本地视频首帧回调。
  ///
  /// 本地视频首帧显示在本地视图上时，SDK 会触发此回调。
  ///
  /// * [source] 视频源的类型。详见 VideoSourceType 。
  /// * [width] 本地渲染视频的宽 (px) 。
  /// * [height] 本地渲染视频的高 (px)。
  /// * [elapsed] 从调用 joinChannel 加入频道时到发生此事件过去的时间（毫秒）。如果在加入频道前调用了 startPreviewWithoutSourceType / startPreview ，则该参数表示从调用 startPreviewWithoutSourceType 或 startPreview 开启本地视频预览到发生此事件过去的时间。
  final void Function(
          VideoSourceType source, int width, int height, int elapsed)?
      onFirstLocalVideoFrame;

  /// 已发布本地视频首帧回调。
  ///
  /// SDK 会在以下三种时机触发该回调：
  ///  开启本地视频模块的情况下，调用 joinChannel 成功加入频道后。
  ///  调用 muteLocalVideoStream (true)，再调用 muteLocalVideoStream (false) 后。
  ///  调用 disableVideo ，再调用 enableVideo 后。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [elapsed] 从调用 joinChannel 方法到触发该回调的时间间隔（毫秒）。
  final void Function(RtcConnection connection, int elapsed)?
      onFirstLocalVideoFramePublished;

  /// 已接收到远端视频并完成解码回调。
  ///
  /// SDK 会在以下时机触发该回调：
  ///  远端用户首次上线后发送视频。
  ///  远端用户视频离线再上线后发送视频。出现这种中断的可能原因包括：
  ///  远端用户离开频道。
  ///  远端用户掉线。
  ///  远端用户调用 disableVideo 方法关闭视频模块。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，指定是哪个用户的视频流。
  /// * [width] 视频流宽（px）。
  /// * [height] 视频流高（px）。
  /// * [elapsed] 从本地调用 joinChannel 开始到该回调触发的延迟（毫秒）。
  final void Function(RtcConnection connection, int remoteUid, int width,
      int height, int elapsed)? onFirstRemoteVideoDecoded;

  /// 本地或远端视频大小和旋转信息发生改变回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [sourceType] 视频源的类型。详见 VideoSourceType 。
  /// * [uid] 图像尺寸和旋转信息发生变化的用户 ID（本地用户的 uid 为 0。此时视频为本地用户的视频预览）。
  /// * [width] 视频流的宽度（像素）。
  /// * [height] 视频流的高度（像素）。
  /// * [rotation] 旋转信息，取值范围 [0,360)。 在 iOS 平台上，该参数值始终为 0。
  final void Function(RtcConnection connection, VideoSourceType sourceType,
      int uid, int width, int height, int rotation)? onVideoSizeChanged;

  /// 本地视频事件发生时触发的回调。
  ///
  /// 自从 自 v6.6.2 版本新增。 你可以通过该回调获取本地视频事件的原因。
  ///
  /// * [source] 视频源类型，详见 VideoSourceType 。
  /// * [event] 本地视频事件类型，详见 LocalVideoEventType 。
  final void Function(VideoSourceType source, LocalVideoEventType event)?
      onLocalVideoEvent;

  /// 本地视频状态发生改变回调。
  ///
  /// 本地视频的状态发生改变时，SDK 会触发该回调，报告当前的本地视频状态以及状态改变的原因。
  ///  帧重复检测仅针对分辨率大于 200 × 200、帧率大于等于 10 fps、码率小于 20 Kbps 的视频帧。
  ///  如果视频采集出现异常，正常情况下可以通过该回调的 reason 参数来排查问题。但在部分设备上，采集出现问题时（如卡死） Android 系统不会抛出任何错误回调，因此 SDK 无法报告本地视频状态改变的原因，此时你可以通过下列方式来判断采集是否无帧：该回调报告 state 为 localVideoStreamStateCapturing 或 localVideoStreamStateEncoding ，且 onLocalVideoStats 回调的 captureFrameRate 为 0。
  ///
  /// * [source] 视频源的类型。详见 VideoSourceType 。
  /// * [state] 本地视频状态，详见 LocalVideoStreamState 。
  /// * [reason] 本地视频状态改变原因，详见 LocalVideoStreamReason 。
  final void Function(VideoSourceType source, LocalVideoStreamState state,
      LocalVideoStreamReason reason)? onLocalVideoStateChanged;

  /// 远端视频状态发生改变回调。
  ///
  /// 频道内的用户（通信场景）或主播（直播场景）人数超过 32 人时，该回调可能不准确。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 发生视频状态改变的远端用户 ID。
  /// * [state] 远端视频流状态，详见 RemoteVideoState 。
  /// * [reason] 远端视频流状态改变的具体原因，详见 RemoteVideoStateReason 。
  /// * [elapsed] 从本地用户调用 joinChannel 方法到发生本事件经历的时间，单位为毫秒。
  final void Function(
      RtcConnection connection,
      int remoteUid,
      RemoteVideoState state,
      RemoteVideoStateReason reason,
      int elapsed)? onRemoteVideoStateChanged;

  /// 渲染器已接收首帧远端视频回调。
  ///
  /// 该回调只在 SDK 渲染时才会触发；如果用户采用自定义视频渲染则不会触发，客户需要通过 SDK 以外的方法自行实现。
  ///
  /// * [uid] 用户 ID，指定是哪个用户的视频流。
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [width] 视频流宽（px）。
  /// * [height] 视频流高（px）。
  /// * [elapsed] 从本地调用 joinChannel 到发生此事件过去的时间（毫秒）。
  final void Function(RtcConnection connection, int remoteUid, int width,
      int height, int elapsed)? onFirstRemoteVideoFrame;

  /// 远端用户（通信场景）/主播（直播场景）加入当前频道回调。
  ///
  /// 通信场景下，该回调提示有远端用户加入了频道。如果加入之前已经有其他用户在频道中，新加入的用户也会收到这些已有用户加入频道的回调。
  ///  直播场景下，该回调提示有主播加入了频道。如果加入之前，已经有主播在频道中了，新加入的用户也会收到已有主播加入频道的回调。建议连麦主播不超过 32 人（其中视频连麦主播不超过 17 人）。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 新加入频道的远端用户/主播 ID。
  /// * [elapsed] 从本地用户调用 joinChannel 到该回调触发的延迟（毫秒）。
  final void Function(RtcConnection connection, int remoteUid, int elapsed)?
      onUserJoined;

  /// 远端用户（通信场景）/主播（直播场景）离开当前频道回调。
  ///
  /// 用户离开频道一般有以下两个原因：
  ///  正常离开：远端用户或主播会发送类似“再见”的消息然后主动离开频道。
  ///  超时掉线：在一定时间内（通信场景为 20 秒，直播场景稍有延时），用户没有收到对方的任何数据包，则判定为对方掉线。在网络较差的情况下，有可能会误报。建议使用 RTM SDK 来做可靠的掉线检测。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 离线的远端用户或主播的 ID。
  /// * [reason] 远端用户（通信场景）或主播（直播场景）离线的原因，详见 UserOfflineReasonType 。
  final void Function(RtcConnection connection, int remoteUid,
      UserOfflineReasonType reason)? onUserOffline;

  /// 远端用户（通信场景）/主播（直播场景）停止或恢复发送音频流回调。
  ///
  /// 该回调是由远端用户调用 muteLocalAudioStream 方法关闭或开启音频发送触发的。 频道内的用户（通信场景）或主播（直播场景）人数超过 32 人时，该回调可能不准确。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID。
  /// * [muted] 该用户是否静音： true : 该用户已将音频静音。 false : 该用户取消了音频静音。
  final void Function(RtcConnection connection, int remoteUid, bool muted)?
      onUserMuteAudio;

  /// 远端用户取消或恢复发布视频流回调。
  ///
  /// 当远端用户调用 muteLocalVideoStream 取消或恢复发布视频流时，SDK 会触发该回调向本地用户报告远端用户的发流状况。 当频道内的用户（通信场景）或主播（直播场景）的人数超过 32 人时，该回调可能不准确。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 远端用户 ID。
  /// * [muted] 远端用户是否取消发布视频流： true : 取消发布视频流。 false : 发布视频流。
  final void Function(RtcConnection connection, int remoteUid, bool muted)?
      onUserMuteVideo;

  /// 远端用户开/关视频模块回调。
  ///
  /// 关闭视频功能是指该用户只能进行语音通话，不能显示、发送自己的视频，也不能接收、显示别人的视频。
  /// 该回调是由远端用户调用 enableVideo 或 disableVideo 方法开启或关闭视频模块触发的。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，提示是哪个用户的视频流。
  /// * [enabled] true : 该用户已启用视频功能。 false : 该用户已关闭视频功能。
  final void Function(RtcConnection connection, int remoteUid, bool enabled)?
      onUserEnableVideo;

  /// @nodoc
  final void Function(RtcConnection connection, int remoteUid, int state)?
      onUserStateChanged;

  /// 远端用户开/关本地视频采集回调。
  ///
  /// 废弃 弃用： 该回调已废弃，请改用 onRemoteVideoStateChanged 回调的如下枚举： remoteVideoStateStopped (0) 和 remoteVideoStateReasonRemoteMuted (5)。 remoteVideoStateDecoding (2) 和 remoteVideoStateReasonRemoteUnmuted (6)。 该回调是由远端用户调用 enableLocalVideo 方法开启或关闭视频采集触发的。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，提示是哪个用户的视频流。
  /// * [enabled] 远端用户是否启用视频采集： true : 该用户已启用视频功能。启用后，其他用户可以接收到该用户的视频流。 false : 该用户已关闭视频功能。关闭后，该用户仍然可以接收其他用户的视频流，但其他用户接收不到该用户的视频流。
  final void Function(RtcConnection connection, int remoteUid, bool enabled)?
      onUserEnableLocalVideo;

  /// 通话中远端音频流的统计信息回调。
  ///
  /// 该回调针对每个发送音频流的远端用户/主播每 2 秒触发一次。如果远端有多个用户/主播发送音频流，该回调每 2 秒会被触发多次。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] 接收到的远端音频统计数据，详见 RemoteAudioStats 。
  final void Function(RtcConnection connection, RemoteAudioStats stats)?
      onRemoteAudioStats;

  /// 通话中本地音频流的统计信息回调。
  ///
  /// SDK 每 2 秒触发该回调一次。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] 本地音频统计数据。详见 LocalAudioStats 。
  final void Function(RtcConnection connection, LocalAudioStats stats)?
      onLocalAudioStats;

  /// 本地视频流统计信息回调。
  ///
  /// 该回调描述本地设备发送视频流的统计信息，每 2 秒触发一次。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] 本地视频流统计信息。详见 LocalVideoStats 。
  final void Function(RtcConnection connection, VideoSourceType sourceType,
      LocalVideoStats stats)? onLocalVideoStats;

  /// 通话中远端视频流的统计信息回调。
  ///
  /// 该回调描述远端用户在通话中端到端的视频流统计信息， 针对每个远端用户/主播每 2 秒触发一次。如果远端同时存在多个用户/主播， 该回调每 2 秒会被触发多次。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [stats] 远端视频统计数据。详见 RemoteVideoStats 。
  final void Function(RtcConnection connection, RemoteVideoStats stats)?
      onRemoteVideoStats;

  /// 摄像头就绪回调。
  ///
  /// 废弃 弃用: 请改用 onLocalVideoStateChanged 中的 localVideoStreamStateCapturing(1)。 该回调提示已成功打开摄像头，可以开始捕获视频。
  final void Function()? onCameraReady;

  /// 相机对焦区域已改变回调。
  ///
  /// 该回调是由本地用户调用 setCameraFocusPositionInPreview 方法改变对焦位置触发的。 该回调仅适用于 Android 和 iOS。
  ///
  /// * [x] 发生改变的对焦区域的 x 坐标。
  /// * [y] 发生改变的对焦区域的 y 坐标。
  /// * [width] 发生改变的对焦区域的宽度。
  /// * [height] 发生改变的对焦区域的高度。
  final void Function(int x, int y, int width, int height)?
      onCameraFocusAreaChanged;

  /// 摄像头曝光区域已改变回调。
  ///
  /// 该回调是由本地用户调用 setCameraExposurePosition 方法改变曝光位置触发的。 该回调仅适用于 Android 和 iOS。
  final void Function(int x, int y, int width, int height)?
      onCameraExposureAreaChanged;

  /// 报告本地人脸检测结果。
  ///
  /// 调用 enableFaceDetection(true) 开启本地人脸检测后，你可以通过该回调实时获取以下人脸检测的信息：
  ///  摄像头采集的画面大小
  ///  人脸在 view 中的位置
  ///  人脸距设备屏幕的距离 其中，人脸距设备屏幕的距离由 SDK 通过摄像头采集的画面大小和人脸在 view 中的位置拟合计算得出。
  ///  该回调仅适用于 Android 和 iOS 平台。
  ///  当检测到摄像头前的人脸消失时，该回调会立刻触发；在无人脸的状态下，该回调触发频率会降低，以节省设备耗能。
  ///  当人脸距离设备屏幕过近时，SDK 不会触发该回调。
  ///  Android 平台上，人脸距设备屏幕的距离（ distance ）值有一定误差，请不要用它进行精确计算。
  ///
  /// * [imageWidth] 摄像头采集画面的宽度 (px)。
  /// * [imageHeight] 摄像头采集画面的高度 (px)。
  /// * [vecRectangle] 检测到的人脸信息。详见 Rectangle 。
  /// * [vecDistance] 人脸和设备屏幕之间的距离 (cm)。
  /// * [numFaces] 检测的人脸数量。如果为 0，则表示没有检测到人脸。
  final void Function(
      int imageWidth,
      int imageHeight,
      List<Rectangle> vecRectangle,
      List<int> vecDistance,
      int numFaces)? onFacePositionChanged;

  /// 视频功能已停止回调。
  ///
  /// 废弃 弃用： 请改用 onLocalVideoStateChanged 回调中的 localVideoStreamStateStopped (0)。 App 如需在停止视频后对 view 做其他处理（比如显示其他画面），可以在这个回调中进行。
  final void Function()? onVideoStopped;

  /// 音乐文件的播放状态已改变回调。
  ///
  /// 该回调在音乐文件播放状态发生改变时触发，并报告当前的播放状态和错误码。
  ///
  /// * [state] 音乐文件播放状态。详见 AudioMixingStateType 。
  /// * [reason] 错误码。详见 AudioMixingReasonType 。
  final void Function(AudioMixingStateType state, AudioMixingReasonType reason)?
      onAudioMixingStateChanged;

  /// 虚拟节拍器状态发生改变回调。
  ///
  /// 废弃 自 v6.6.2 版本废弃。 虚拟节拍器状态发生改变时，SDK 会触发该回调报告当前的虚拟节拍器状态。在虚拟节拍器出现故障时，该回调可以帮助你了解当前虚拟节拍的状态以及出现故障的原因，方便你排查问题。 该回调仅适用于 Android 和 iOS。
  ///
  /// * [state] 当前的虚拟节拍器状态，详见 RhythmPlayerStateType 。
  /// * [reason] 虚拟节拍器发生错误的错误码和错误信息，详见 RhythmPlayerReason 。
  final void Function(RhythmPlayerStateType state, RhythmPlayerReason reason)?
      onRhythmPlayerStateChanged;

  /// 网络连接中断，且 SDK 无法在 10 秒内连接服务器回调。
  ///
  /// SDK 在调用 joinChannel 后，无论是否加入成功，只要 10 秒和服务器无法连接就会触发该回调。如果 SDK 在断开连接后，20 分钟内还是没能重新加入频道，SDK 会停止尝试重连。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  final void Function(RtcConnection connection)? onConnectionLost;

  /// 网络连接中断回调。
  ///
  /// 废弃 弃用: 请改用 onConnectionStateChanged 回调。 SDK 在和服务器建立连接后，失去了网络连接超过 4 秒，会触发该回调。在触发事件后，SDK 会主动重连服务器，所以该事件可以用于 UI 提示。该回调与 onConnectionLost 的区别是： onConnectionInterrupted 回调一定是发生在成功加入频道后，且 SDK 刚失去和服务器连接超过 4 秒时触发。 onConnectionLost 回调是无论是否成功加入频道，只要 10 秒内和服务器无法建立连接都会触发。 如果 SDK 在断开连接后，20 分钟内还是没能重新加入频道，SDK 会停止尝试重连。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  final void Function(RtcConnection connection)? onConnectionInterrupted;

  /// 网络连接已被服务器禁止回调。
  ///
  /// 废弃 弃用: 请改用 onConnectionStateChanged 。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  final void Function(RtcConnection connection)? onConnectionBanned;

  /// 接收到对方数据流消息的回调。
  ///
  /// 该回调表示本地用户收到了远端用户调用 sendStreamMessage 方法发送的流消息。 如你需要更加全面的低延时、高并发、可扩展的实时消息及状态同步解决方案，推荐使用[实时消息](https://doc.shengwang.cn/doc/rtm2/flutter/landing-page)。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 发送消息的用户 ID。
  /// * [streamId] 接收到的消息的 Stream ID。
  /// * [data] 接收到的数据。
  /// * [length] 数据长度，单位为字节。
  /// * [sentTs] 数据流发出的时间。
  final void Function(RtcConnection connection, int remoteUid, int streamId,
      Uint8List data, int length, int sentTs)? onStreamMessage;

  /// 接收对方数据流消息发生错误的回调。
  ///
  /// 该回调表示本地用户未收到远端用户调用 sendStreamMessage 方法发送的流消息。 如你需要更加全面的低延时、高并发、可扩展的实时消息及状态同步解决方案，推荐使用[实时消息](https://doc.shengwang.cn/doc/rtm2/flutter/landing-page)。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 发送消息的用户 ID。
  /// * [streamId] 接收到的消息的 Stream ID。
  /// * [code] 错误码。详见 ErrorCodeType 。
  /// * [missed] 丢失的消息数量。
  /// * [cached] 数据流中断时，后面缓存的消息数量。
  final void Function(RtcConnection connection, int remoteUid, int streamId,
      ErrorCodeType code, int missed, int cached)? onStreamMessageError;

  /// @nodoc
  final void Function(RtcConnection connection, int userId, RdtStreamType type,
      String data, int length)? onRdtMessage;

  /// @nodoc
  final void Function(RtcConnection connection, int userId, RdtState state)?
      onRdtStateChanged;

  /// @nodoc
  final void Function(
          RtcConnection connection, int userId, String data, int length)?
      onMediaControlMessage;

  /// Token 已过期回调。
  ///
  /// 在音视频互动过程中，如果 Token 失效，SDK 会触发该回调报告 Token 已过期。
  /// 当收到该回调时，你需要重新在服务端生成新的 Token，然后通过下列任意一种方式来更新 Token：
  ///  单频道场景：
  ///  调用 renewToken 来传入新的 Token。
  ///  调用 leaveChannel 离开当前频道，然后在调用 joinChannel 时传入新的 Token 重新加入频道。
  ///  多频道场景：调用 updateChannelMediaOptionsEx 传入新的 Token。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  final void Function(RtcConnection connection)? onRequestToken;

  /// Token 即将在 30s 内过期回调。
  ///
  /// 当收到该回调时，你需要重新在服务端生成新的 Token，然后通过下列任意一种方式来更新 Token：
  ///  单频道场景：
  ///  调用 renewToken 来传入新的 Token。
  ///  调用 leaveChannel 离开当前频道，然后在调用 joinChannel 时传入新的 Token 重新加入频道。
  ///  多频道场景：调用 updateChannelMediaOptionsEx 传入新的 Token。
  ///
  /// * [token] 即将过期的 Token。
  final void Function(RtcConnection connection, String token)?
      onTokenPrivilegeWillExpire;

  /// @nodoc
  final void Function(RtcConnection connection, LicenseErrorType reason)?
      onLicenseValidationFailure;

  /// 已发布本地音频首帧回调。
  ///
  /// SDK 会在以下时机触发该回调：
  ///  开启本地音频的情况下，调用 joinChannel 成功加入频道后。
  ///  调用 muteLocalAudioStream (true) ，再调用 muteLocalAudioStream (false) 后。
  ///  调用 disableAudio ，再调用 enableAudio 后。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [elapsed] 从调用 joinChannel 方法到触发该回调的时间间隔（毫秒）。
  final void Function(RtcConnection connection, int elapsed)?
      onFirstLocalAudioFramePublished;

  /// 已解码远端音频首帧的回调。
  ///
  /// 废弃 弃用： 请改用 onRemoteAudioStateChanged 。 SDK 会在以下时机触发该回调：
  ///  远端用户首次上线后发送音频。
  ///  远端用户音频离线再上线发送音频。音频离线指本地在 15 秒内没有收到音频包，可能有如下原因：
  ///  远端用户离开频道
  ///  远端用户掉线
  ///  远端用户调用 muteLocalAudioStream 方法停止发送音频流
  ///  远端用户调用 disableAudio 方法关闭音频
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [uid] 远端用户 ID。
  /// * [elapsed] 从本地用户调用 joinChannel 直至该回调触发的延迟，单位为毫秒。
  final void Function(RtcConnection connection, int uid, int elapsed)?
      onFirstRemoteAudioDecoded;

  /// 已接收远端音频首帧回调。
  ///
  /// 废弃 弃用： 请改用 onRemoteAudioStateChanged 。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [userId] 发送音频帧的远端用户的用户 ID。
  /// * [elapsed] 从本地用户调用 joinChannel 直至该回调触发的延迟，单位为毫秒。
  final void Function(RtcConnection connection, int userId, int elapsed)?
      onFirstRemoteAudioFrame;

  /// 本地音频状态发生改变回调。
  ///
  /// 本地音频的状态发生改变时（包括本地麦克风采集状态和音频编码状态），SDK 会触发该回调报告当前的本地音频状态。在本地音频出现故障时，该回调可以帮助你了解当前音频的状态以及出现故障的原因，方便你排查问题。 当状态为 localAudioStreamStateFailed (3) 时， 你可以在 error 参数中查看返回的错误信息。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [state] 当前的本地音频状态。详见 LocalAudioStreamState 。
  /// * [reason] 本地音频状态改变原因。详见 LocalAudioStreamReason 。
  final void Function(RtcConnection connection, LocalAudioStreamState state,
      LocalAudioStreamReason reason)? onLocalAudioStateChanged;

  /// 远端音频流状态发生改变回调。
  ///
  /// 远端用户（通信场景）或主播（直播场景）的音频状态发生改变时，SDK 会触发该回调向本地用户报告当前的远端音频流状态。 频道内的用户（通信场景）或主播（直播场景）人数超过 32 人时，该回调可能不准确。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 发生音频状态改变的远端用户 ID。
  /// * [state] 远端音频流状态，详见 RemoteAudioState 。
  /// * [reason] 远端音频流状态改变的具体原因，详见 RemoteAudioStateReason 。
  /// * [elapsed] 从本地用户调用 joinChannel 方法到发生本事件经历的时间，单位为毫秒。
  final void Function(
      RtcConnection connection,
      int remoteUid,
      RemoteAudioState state,
      RemoteAudioStateReason reason,
      int elapsed)? onRemoteAudioStateChanged;

  /// 监测到远端最活跃用户回调。
  ///
  /// 成功调用 enableAudioVolumeIndication 后，SDK 会持续监测音量最大的远端用户，并统计该用户被判断为音量最大者的次数。当前时间段内，该次数累积最多的远端用户为最活跃的用户。
  /// 当频道内用户数量大于或等于 2 且有远端活跃用户时，SDK 会触发该回调并报告远端最活跃用户的 uid 。
  ///  如果远端最活跃用户一直是同一位用户，则 SDK 不会再次触发 onActiveSpeaker 回调。
  ///  如果远端最活跃用户有变化，则 SDK 会再次触发该回调并报告新的远端最活跃用户的 uid 。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [uid] 远端最活跃用户的 ID。
  final void Function(RtcConnection connection, int uid)? onActiveSpeaker;

  /// @nodoc
  final void Function(ContentInspectResult result)? onContentInspectResult;

  /// 视频截图结果回调。
  ///
  /// 成功调用 takeSnapshot 后，SDK 触发该回调报告截图是否成功和获取截图的详情。
  ///
  /// * [uid] 用户 ID。如果 uid 为 0，表示本地用户。
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [filePath] 截图的本地保存路径。
  /// * [width] 图片宽度（px）。
  /// * [height] 图片高度（px）。
  /// * [errCode] 截图成功的提示或失败的原因。
  ///  0：截图成功。
  ///  < 0: 截图失败。
  ///  -1：写入文件失败或 JPEG 编码失败。
  ///  -2： takeSnapshot 方法调用后 1 秒内没有收到指定用户的视频帧。可能的原因有：本地采集停止、远端停止发布或者视频数据处理堵塞。
  ///  -3： takeSnapshot 方法调用过于频繁。
  final void Function(RtcConnection connection, int uid, String filePath,
      int width, int height, int errCode)? onSnapshotTaken;

  /// 用户角色、观众端延时级别已切换回调。
  ///
  /// 当你在加入频道前调用 setClientRole 并将用户角色设为 BROADCASTER 时，不会触发此回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [oldRole] 切换前的角色： ClientRoleType 。
  /// * [newRole] 切换后的角色： ClientRoleType 。
  /// * [newRoleOptions] 切换后的角色属性。详见 ClientRoleOptions 。
  final void Function(
      RtcConnection connection,
      ClientRoleType oldRole,
      ClientRoleType newRole,
      ClientRoleOptions newRoleOptions)? onClientRoleChanged;

  /// 用户角色切换失败回调。
  ///
  /// 当用户角色切换失败时，你可以通过此回调得知切换失败的原因和当前的用户角色。
  ///
  /// * [reason] 切换用户角色失败的原因。详见 ClientRoleChangeFailedReason 。
  /// * [currentRole] 当前用户角色。详见 ClientRoleType 。
  /// * [connection] Connection 信息。详见 RtcConnection 。
  final void Function(
      RtcConnection connection,
      ClientRoleChangeFailedReason reason,
      ClientRoleType currentRole)? onClientRoleChangeFailed;

  /// 音频设备或 App 的音量发生改变回调。
  ///
  /// 当音频播放、采集设备或 App 的音量发生改变时，会触发该回调。 该回调仅适用于 Windows 和 macOS。
  ///
  /// * [deviceType] 设备类型定义。详见 MediaDeviceType 。
  /// * [volume] 音量。范围为 [0,255]。
  /// * [muted] 音频设备是否为静音状态： true : 音频设备已静音。 false : 音频设备未被静音。
  final void Function(MediaDeviceType deviceType, int volume, bool muted)?
      onAudioDeviceVolumeChanged;

  /// 旁路推流状态发生改变回调。
  ///
  /// 旁路推流状态发生改变时，SDK会触发该回调，并在回调中明确状态发生改变的 URL 地址及当前推流状态。该回调方便推流用户了解当前的推流状态；推流出错时，你可以通过返回的错误码了解出错的原因，方便排查问题。
  ///
  /// * [url] 推流状态发生改变的 URL 地址。
  /// * [state] 当前的推流状态，详见 RtmpStreamPublishState 。
  /// * [reason] 推流状态改变的原因，详见 RtmpStreamPublishReason 。
  final void Function(String url, RtmpStreamPublishState state,
      RtmpStreamPublishReason reason)? onRtmpStreamingStateChanged;

  /// 旁路推流事件回调。
  ///
  /// * [url] 旁路推流 URL。
  /// * [eventCode] 旁路推流事件码。详见 RtmpStreamingEvent 。
  final void Function(String url, RtmpStreamingEvent eventCode)?
      onRtmpStreamingEvent;

  /// 旁路推流转码设置已被更新回调。
  ///
  /// startRtmpStreamWithTranscoding 方法中的直播参数 LiveTranscoding 更新时， onTranscodingUpdated 回调会被触发并向主播报告更新信息。 首次调用 startRtmpStreamWithTranscoding 方法设置转码参数 LiveTranscoding 时，不会触发此回调。
  final void Function()? onTranscodingUpdated;

  /// 音频路由已发生变化回调。
  ///
  /// 该回调仅适用于 Android、iOS 和 macOS 平台。
  ///
  /// * [routing] 当前的音频路由。详见 AudioRoute 。
  final void Function(int routing)? onAudioRoutingChanged;

  /// 跨频道媒体流转发状态发生改变回调。
  ///
  /// 当跨频道媒体流转发状态发生改变时，SDK 会触发该回调，并报告当前的转发状态以及相关的错误信息。
  ///
  /// * [state] 跨频道媒体流转发状态。详见 ChannelMediaRelayState 。
  /// * [code] 跨频道媒体流转发出错的错误码。详见 ChannelMediaRelayError 。
  final void Function(
          ChannelMediaRelayState state, ChannelMediaRelayError code)?
      onChannelMediaRelayStateChanged;

  /// 订阅流已回退为音频流或恢复为音视频流回调。
  ///
  /// 当你调用了 setRemoteSubscribeFallbackOption 并将 option 设置为 streamFallbackOptionAudioOnly 后，该回调会在下列情况时被触发：
  ///  下行网络环境较差，订阅的音视频流回退为音频流
  ///  下行网络环境改善，订阅音频流恢复为音视频流 订阅流因弱网环境而回退为视频小流时，你可以通过 onRemoteVideoStats 回调来监控远端视频大小流的切换。
  ///
  /// * [uid] 远端用户的用户 ID。
  /// * [isFallbackOrRecover] true : 由于网络环境不理想，订阅流已回退为音频流。 false : 由于网络环境改善，订阅流已恢复为音视频流。
  final void Function(int uid, bool isFallbackOrRecover)?
      onRemoteSubscribeFallbackToAudioOnly;

  /// 通话中远端音频流传输的统计信息回调。
  ///
  /// 弃用：
  /// 请改用 onRemoteAudioStats 。
  /// 该回调描述远端用户通话中端到端的网络统计信息，通过音频包计算，用客观的数据，如丢包、 网络延迟等，展示当前网络状态。通话中，当用户收到远端用户/主播发送的音频数据包后 ，会每 2 秒触发一次该回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，指定是哪个用户/主播的音频包。
  /// * [delay] 音频包从发送端到接收端的延时（毫秒）。
  /// * [lost] 音频包从发送端到接收端的丢包率 (%)。
  /// * [rxKBitrate] 远端音频包的接收码率（Kbps）。
  final void Function(RtcConnection connection, int remoteUid, int delay,
      int lost, int rxKBitRate)? onRemoteAudioTransportStats;

  /// 通话中远端视频流传输的统计信息回调。
  ///
  /// 废弃 弃用： 该回调已被废弃，请改用 onRemoteVideoStats 。 该回调描述远端用户通话中端到端的网络统计信息，通过视频包计算，用客观的数据，如丢包、 网络延迟等，展示当前网络状态。
  /// 通话中，当用户收到远端用户/主播发送的视频数据包后，会每 2 秒触发一次该回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [remoteUid] 用户 ID，指定是哪个用户/主播的视频包。
  /// * [delay] 视频包从发送端到接收端的延时（毫秒）。
  /// * [lost] 视频包从发送端到接收端的丢包率 (%)。
  /// * [rxKBitRate] 远端视频包的接收码率（Kbps）。
  final void Function(RtcConnection connection, int remoteUid, int delay,
      int lost, int rxKBitRate)? onRemoteVideoTransportStats;

  /// 网络连接状态已改变回调。
  ///
  /// 该回调在网络连接状态发生改变的时候触发，并告知用户当前的网络连接状态和引起网络状态改变的原因。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [state] 当前网络连接状态。详见 ConnectionStateType 。
  /// * [reason] 引起当前网络连接状态改变的原因。详见 ConnectionChangedReasonType 。
  final void Function(RtcConnection connection, ConnectionStateType state,
      ConnectionChangedReasonType reason)? onConnectionStateChanged;

  /// 本地网络类型发生改变回调。
  ///
  /// 本地网络连接类型发生改变时，SDK 会触发该回调，并在回调中明确当前的网络连接类型。你可以通过该回调获取正在使用的网络类型；当连接中断时，该回调能辨别引起中断的原因是网络切换还是网络条件不好。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [type] 本地网络连接类型。详见 NetworkType 。
  final void Function(RtcConnection connection, NetworkType type)?
      onNetworkTypeChanged;

  /// 内置加密出错回调。
  ///
  /// 调用 enableEncryption 开启加密后， 如果发流端、收流端出现加解密出错，SDK 会触发该回调。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [errorType] 错误类型，详见 EncryptionErrorType 。
  final void Function(RtcConnection connection, EncryptionErrorType errorType)?
      onEncryptionError;

  /// 获取设备权限出错回调。
  ///
  /// 无法获取设备权限时，SDK 会触发该回调，报告哪个设备的权限无法获取。
  ///
  /// * [permissionType] 设备权限类型。详见 PermissionType 。
  final void Function(PermissionType permissionType)? onPermissionError;

  /// 权限被授予时的回调。
  ///
  /// * [permissionType] 权限类型，详见 PermissionType 。
  final void Function(PermissionType permissionType)? onPermissionGranted;

  /// 本地用户成功注册 User Account 回调。
  ///
  /// 本地用户成功调用 registerLocalUserAccount 方法注册用户 User Account，或调用 joinChannelWithUserAccount 加入频道后，SDK 会触发该回调，并告知本地用户的 UID 和 User Account。
  ///
  /// * [uid] 本地用户的 ID。
  /// * [userAccount] 本地用户的 User Account。
  final void Function(int uid, String userAccount)? onLocalUserRegistered;

  /// 远端用户信息已更新回调。
  ///
  /// 远端用户加入频道后，SDK 会获取到该远端用户的 UID 和 User Account，然后缓存一个包含了远端用户 UID 和 User Account 的 Mapping 表，并在本地触发该回调。
  ///
  /// * [uid] 远端用户 ID。
  /// * [info] 标识用户信息的 UserInfo 对象，包含用户 UID 和 User Account。详见 UserInfo 类。
  final void Function(int uid, UserInfo info)? onUserInfoUpdated;

  /// @nodoc
  final void Function(
          RtcConnection connection, int remoteUid, String remoteUserAccount)?
      onUserAccountUpdated;

  /// 视频帧渲染事件回调。
  ///
  /// 调用 startMediaRenderingTracing 方法或加入频道后，SDK 会触发该回调，报告视频帧渲染的事件和渲染过程中的指标。开发者可以针对指标进行专项优化，以提高出图效率。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [uid] 用户 ID。
  /// * [currentEvent] 当前视频帧渲染事件。详见 MediaTraceEvent 。
  /// * [tracingInfo] 视频帧渲染过程中的指标。开发者需要尽可能降低指标值，以提高出图效率。详见 VideoRenderingTracingInfo 。
  final void Function(
      RtcConnection connection,
      int uid,
      MediaTraceEvent currentEvent,
      VideoRenderingTracingInfo tracingInfo)? onVideoRenderingTracingResult;

  /// 本地合图发生错误回调。
  ///
  /// 当你调用 startLocalVideoTranscoder 或 updateLocalTranscoderConfiguration 失败时，SDK 会触发该回调，报告合图失败的原因。
  ///
  /// * [stream] 合图失败的视频流。详见 TranscodingVideoStream 。
  /// * [error] 本地合图出错原因。详见 VideoTranscoderError 。
  final void Function(
          TranscodingVideoStream stream, VideoTranscoderError error)?
      onLocalVideoTranscoderError;

  /// @nodoc
  final void Function(RtcConnection connection, String requestId, bool success,
      UploadErrorReason reason)? onUploadLogResult;

  /// 音频订阅状态发生改变回调。
  ///
  /// * [channel] 频道名。
  /// * [uid] 远端用户的 ID。
  /// * [oldState] 之前的订阅状态，详见 StreamSubscribeState 。
  /// * [newState] 当前的订阅状态，详见 StreamSubscribeState 。
  /// * [elapseSinceLastState] 两次状态变化时间间隔（毫秒）。
  final void Function(
      String channel,
      int uid,
      StreamSubscribeState oldState,
      StreamSubscribeState newState,
      int elapseSinceLastState)? onAudioSubscribeStateChanged;

  /// 视频订阅状态发生改变回调。
  ///
  /// * [channel] 频道名。
  /// * [uid] 远端用户的 ID。
  /// * [oldState] 之前的订阅状态，详见 StreamSubscribeState 。
  /// * [newState] 当前的订阅状态，详见 StreamSubscribeState 。
  /// * [elapseSinceLastState] 两次状态变化时间间隔（毫秒）。
  final void Function(
      String channel,
      int uid,
      StreamSubscribeState oldState,
      StreamSubscribeState newState,
      int elapseSinceLastState)? onVideoSubscribeStateChanged;

  /// 音频发布状态改变回调。
  ///
  /// * [channel] 频道名。
  /// * [oldState] 之前的发布状态，详见 StreamPublishState 。
  /// * [newState] 当前的发布状态，详见 StreamPublishState 。
  /// * [elapseSinceLastState] 两次状态变化时间间隔（毫秒）。
  final void Function(
      String channel,
      StreamPublishState oldState,
      StreamPublishState newState,
      int elapseSinceLastState)? onAudioPublishStateChanged;

  /// 视频发布状态改变回调。
  ///
  /// * [channel] 频道名。
  /// * [source] 视频源的类型。详见 VideoSourceType 。
  /// * [oldState] 之前的发布状态，详见 StreamPublishState 。
  /// * [newState] 当前的发布状态，详见 StreamPublishState 。
  /// * [elapseSinceLastState] 两次状态变化时间间隔（毫秒）。
  final void Function(
      VideoSourceType source,
      String channel,
      StreamPublishState oldState,
      StreamPublishState newState,
      int elapseSinceLastState)? onVideoPublishStateChanged;

  /// 已接收携带布局信息的合图视频流回调。
  ///
  /// 当本地第一次接收到合图服务器发送的合图视频流，或者合图流的布局信息有变化时，SDK 会触发该回调，报告合图视频流中每一路子视频流的布局信息。 该回调仅适用于 Android 和 iOS。
  ///
  /// * [connection] Connection 信息。详见 RtcConnection 。
  /// * [uid] 发布合图视频流的用户 ID。
  /// * [width] 合图视频流的宽度 (px)。
  /// * [height] 合图视频流的高度 (px)。
  /// * [layoutCount] 合图视频流中布局信息的数量。
  /// * [layoutlist] 某一路合图视频流的详细布局信息。详见 VideoLayout 。
  final void Function(
      RtcConnection connection,
      int uid,
      int width,
      int height,
      int layoutCount,
      List<VideoLayout> layoutlist)? onTranscodedStreamLayoutInfo;

  /// @nodoc
  final void Function(
          RtcConnection connection, int uid, Uint8List metadata, int length)?
      onAudioMetadataReceived;

  /// 插件事件回调。
  ///
  /// 为监听插件事件，你需要注册该回调。
  ///
  /// * [context] 插件上下文信息，详见 ExtensionContext 。
  /// * [key] 插件属性的 Key。
  /// * [value] 插件属性 Key 对应的值。
  final void Function(ExtensionContext context, String key, String value)?
      onExtensionEventWithContext;

  /// 插件已启用成功回调。
  ///
  /// 成功启用插件后会触发该回调。
  ///
  /// * [context] 插件上下文信息，详见 ExtensionContext 。
  final void Function(ExtensionContext context)? onExtensionStartedWithContext;

  /// 插件已禁用回调。
  ///
  /// 成功禁用插件后会触发该回调。
  ///
  /// * [context] 插件上下文信息，详见 ExtensionContext 。
  final void Function(ExtensionContext context)? onExtensionStoppedWithContext;

  /// 插件出错回调。
  ///
  /// 启用插件失败或者插件运行出错时，插件会触发该回调并报告错误码和错误原因。
  ///
  /// * [context] 插件上下文信息，详见 ExtensionContext 。
  /// * [error] 错误码。详见插件服务商提供的插件文档。
  /// * [message] 错误原因。详见插件服务商提供的插件文档。
  final void Function(ExtensionContext context, int error, String message)?
      onExtensionErrorWithContext;

  /// @nodoc
  final void Function(RtcConnection connection, int code)? onSetRtmFlagResult;

  /// 多路径传输统计信息的回调。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [stats] 多路径传输统计信息。详见 MultipathStats 。
  final void Function(RtcConnection connection, MultipathStats stats)?
      onMultipathStats;

  /// renewToken 方法调用结果回调。
  ///
  /// 自从 自 v6.6.2 版本新增。 当你调用 renewToken 方法更新 Token 后，该回调会被触发，用于通知更新结果。
  ///
  /// * [token] 更新的 Token。
  /// * [code] 错误码，详见 RenewTokenErrorCode 。
  final void Function(
          RtcConnection connection, String token, RenewTokenErrorCode code)?
      onRenewTokenResult;
}

/// 视频设备管理方法。
abstract class VideoDeviceManager {
  /// 获取系统中所有的视频设备列表。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 方法调用成功：返回一个 VideoDeviceInfo 数组，其中包含系统中所有视频设备。
  ///  方法调用失败: 返回空列表。
  Future<List<VideoDeviceInfo>> enumerateVideoDevices();

  /// 通过设备 ID 指定视频采集设备。
  ///
  /// 插拔设备不会改变设备 ID。
  ///  该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceIdUTF8] 设备 ID。可通过调用 enumerateVideoDevices 方法获取。
  /// 最大长度为 MaxDeviceIdLengthType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setDevice(String deviceIdUTF8);

  /// 获取当前使用的视频采集设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 视频采集设备。
  Future<String> getDevice();

  /// 获取指定视频采集设备支持的视频格式数量。
  ///
  /// 视频采集设备可能支持多种视频格式，每一种格式都支持不同的视频帧宽度、视频帧高度、帧率组合。
  /// 你可以通过调用该方法，获取指定的视频采集设备可支持多少种视频格式，然后调用 getCapability 获取指定视频格式下的具体视频帧信息。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceIdUTF8] 视频采集设备的 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  ≤ 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> numberOfCapabilities(String deviceIdUTF8);

  /// 获取视频采集设备在指定的视频格式下的详细视频帧信息。
  ///
  /// 在调用 numberOfCapabilities 获取视频采集设备支持的视频格式数量后，你可以调用该方法获取指定索引号支持的具体视频帧信息。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceIdUTF8] 视频采集设备的 ID。
  /// * [deviceCapabilityNumber] 视频格式的索引号。如果 numberOfCapabilities 的返回值为 i，则该参数取值范围为[0,i)。
  ///
  /// Returns
  /// 指定视频格式的具体信息，包括宽度（px），高度（px）和帧率（fps）。详见 VideoFormat 。
  Future<VideoFormat> getCapability(
      {required String deviceIdUTF8, required int deviceCapabilityNumber});

  /// @nodoc
  Future<void> startDeviceTest(int hwnd);

  /// @nodoc
  Future<void> stopDeviceTest();

  /// 释放 VideoDeviceManager 对象占用的所有资源。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  Future<void> release();
}

/// 用于管理和配置视频特效，例如美颜、风格妆容和滤镜。
///
/// 自从 自 v6.6.2 版本新增。
abstract class VideoEffectObject {
  /// 添加或更新指定视频特效节点和模板的特效。
  ///
  /// 自从 自 v6.6.2 版本新增。 优先级规则：
  ///  风格妆节点优先于滤镜特效节点。
  ///  若要应用滤镜特效，必须先移除风格妆特效节点。
  ///
  /// * [nodeId] 视频特效节点的唯一标识符或标识符组合。详见 VideoEffectNodeId 。
  /// * [templateName] 特效模板名称。如果设置为 NULL 或空字符串，SDK 会从资源包中加载默认配置。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> addOrUpdateVideoEffect(
      {required int nodeId, required String templateName});

  /// 移除指定节点 ID 的视频特效。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [nodeId] 要移除的视频特效节点的唯一标识符，详见 VideoEffectNodeId 。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> removeVideoEffect(int nodeId);

  /// 对指定的视频特效节点执行操作。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [nodeId] 视频特效节点的唯一标识符。
  /// * [actionId] 要执行的操作，详见 VideoEffectAction 。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> performVideoEffectAction(
      {required int nodeId, required VideoEffectAction actionId});

  /// 设置视频特效的浮点参数。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数选项的类别。
  /// * [key] 参数的键名。
  /// * [param] 要设置的浮点值。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoEffectFloatParam(
      {required String option, required String key, required double param});

  /// setVideoEffectIntParam ：设置视频特效的整数参数。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数所属选项的类别。
  /// * [key] 参数的键名。
  /// * [param] 要设置的整数参数值。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoEffectIntParam(
      {required String option, required String key, required int param});

  /// 设置视频特效的布尔参数。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数选项的类别。
  /// * [key] 参数的键名。
  /// * [param] 要设置的布尔值： true ：启用该选项。 false ：禁用该选项。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoEffectBoolParam(
      {required String option, required String key, required bool param});

  /// 获取视频特效中指定 float 类型参数的值。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数所属选项的类别。
  /// * [key] 参数的键名。
  ///
  /// Returns
  /// 如果参数存在，返回对应的 float 值。
  ///  如果参数不存在或发生错误，返回 0.0f。
  Future<double> getVideoEffectFloatParam(
      {required String option, required String key});

  /// 获取视频特效中的整数类型参数。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数选项的类别。
  /// * [key] 参数的键名。
  ///
  /// Returns
  /// 如果参数存在，返回对应的整数值。
  ///  如果参数不存在或发生错误，返回 0。
  Future<int> getVideoEffectIntParam(
      {required String option, required String key});

  /// 获取视频特效中的布尔参数。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [option] 参数所属的选项类别。
  /// * [key] 参数的键名。
  ///
  /// Returns
  /// true ：参数已启用。 false ：参数未启用或不存在。
  Future<bool> getVideoEffectBoolParam(
      {required String option, required String key});
}

/// 视频特效节点类型。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum VideoEffectNodeId {
  /// （1）：美颜特效节点。
  @JsonValue(1 << 0)
  beauty,

  /// （2）：风格妆特效节点。
  @JsonValue(1 << 1)
  styleMakeup,

  /// （4）：滤镜特效节点。
  @JsonValue(1 << 2)
  filter,
}

/// @nodoc
extension VideoEffectNodeIdExt on VideoEffectNodeId {
  /// @nodoc
  static VideoEffectNodeId fromValue(int value) {
    return $enumDecode(_$VideoEffectNodeIdEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoEffectNodeIdEnumMap[this]!;
  }
}

/// 对视频特效节点执行的操作类型。
///
/// 自从 自 v6.6.2 版本新增。
@JsonEnum(alwaysCreate: true)
enum VideoEffectAction {
  /// （1）：保存当前视频特效的参数。
  @JsonValue(1)
  save,

  /// （2）：将视频特效重置为默认参数。
  @JsonValue(2)
  reset,
}

/// @nodoc
extension VideoEffectActionExt on VideoEffectAction {
  /// @nodoc
  static VideoEffectAction fromValue(int value) {
    return $enumDecode(_$VideoEffectActionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoEffectActionEnumMap[this]!;
  }
}

/// RtcEngineContext 定义。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RtcEngineContext implements AgoraSerializable {
  /// @nodoc
  const RtcEngineContext(
      {this.appId,
      this.channelProfile,
      this.license,
      this.audioScenario,
      this.areaCode,
      this.logConfig,
      this.threadPriority,
      this.useExternalEglContext,
      this.domainLimit,
      this.autoRegisterAgoraExtensions});

  /// 声网为 App 开发者签发的 App ID。 使用同一个 App ID 的 App 才能进入同一个频道进行通话或直播。一个 App ID 只能用于创建一个 RtcEngine 。如需更换 App ID，必须先调用 release 销毁当前 RtcEngine 再重新创建。
  @JsonKey(name: 'appId')
  final String? appId;

  /// 频道使用场景。详见 ChannelProfileType 。
  @JsonKey(name: 'channelProfile')
  final ChannelProfileType? channelProfile;

  /// @nodoc
  @JsonKey(name: 'license')
  final String? license;

  /// 音频场景。不同的音频场景下，设备的音量类型是不同的。
  /// 详见 AudioScenarioType 。
  @JsonKey(name: 'audioScenario')
  final AudioScenarioType? audioScenario;

  /// 服务器的访问区域。该功能为高级设置，适用于有访问安全限制的场景。支持的区域详见 AreaCode 。区域码支持位操作。
  @JsonKey(name: 'areaCode')
  final int? areaCode;

  /// 设置 SDK 输出的日志文件。详见 LogConfig 。
  /// 默认情况下，SDK 会生成 5 个 SDK 日志文件和 5 个 API 调用日志文件，规则如下：
  @JsonKey(name: 'logConfig')
  final LogConfig? logConfig;

  /// @nodoc
  @JsonKey(name: 'threadPriority')
  final ThreadPriorityType? threadPriority;

  /// @nodoc
  @JsonKey(name: 'useExternalEglContext')
  final bool? useExternalEglContext;

  /// 是否开启域名限制： true ：开启域名限制。该设置适用于 IoT 设备使用物联网卡进行网络访问的场景。SDK 会仅连接到已向运营商报备的域名或 IP 白名单中的服务器。 false ：（默认）关闭域名限制。该设置适用于大部分普通场景。
  @JsonKey(name: 'domainLimit')
  final bool? domainLimit;

  /// 是否在初始化 RtcEngine 时自动注册声网插件： true ：（默认）初始化 RtcEngine 时自动注册声网插件。 false ：初始化 RtcEngine 时不注册声网插件。你需要调用 enableExtension 来注册声网插件。
  @JsonKey(name: 'autoRegisterAgoraExtensions')
  final bool? autoRegisterAgoraExtensions;

  /// @nodoc
  factory RtcEngineContext.fromJson(Map<String, dynamic> json) =>
      _$RtcEngineContextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RtcEngineContextToJson(this);
}

/// Metadata 观测器。
class MetadataObserver {
  /// @nodoc
  const MetadataObserver({
    this.onMetadataReceived,
  });

  /// 接收端已收到 metadata。
  ///
  /// * [metadata] 接收到的 metadata，详见 Metadata 。
  final void Function(Metadata metadata)? onMetadataReceived;
}

/// 观测器的 Metadata 类型。当前仅支持视频类型的 Metadata 。
@JsonEnum(alwaysCreate: true)
enum MetadataType {
  /// -1: Metadata 类型未知。
  @JsonValue(-1)
  unknownMetadata,

  /// 0: Metadata 类型为视频。
  @JsonValue(0)
  videoMetadata,
}

/// @nodoc
extension MetadataTypeExt on MetadataType {
  /// @nodoc
  static MetadataType fromValue(int value) {
    return $enumDecode(_$MetadataTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MetadataTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum MaxMetadataSizeType {
  /// @nodoc
  @JsonValue(-1)
  invalidMetadataSizeInByte,

  /// @nodoc
  @JsonValue(512)
  defaultMetadataSizeInByte,

  /// @nodoc
  @JsonValue(1024)
  maxMetadataSizeInByte,
}

/// @nodoc
extension MaxMetadataSizeTypeExt on MaxMetadataSizeType {
  /// @nodoc
  static MaxMetadataSizeType fromValue(int value) {
    return $enumDecode(_$MaxMetadataSizeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MaxMetadataSizeTypeEnumMap[this]!;
  }
}

/// 媒体附属信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Metadata implements AgoraSerializable {
  /// @nodoc
  const Metadata(
      {this.channelId, this.uid, this.size, this.buffer, this.timeStampMs});

  /// 频道名称。
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// 用户 ID。
  ///  对于接收者：发送该 Metadata 的远端用户的 ID。
  ///  对于发送者：请忽略。
  @JsonKey(name: 'uid')
  final int? uid;

  /// 接收到的或发送的 Metadata 的缓存大小。
  @JsonKey(name: 'size')
  final int? size;

  /// 接收到的 Metadata 的缓存地址。
  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  /// 发送 Metadata 的时间戳，单位为毫秒。
  @JsonKey(name: 'timeStampMs')
  final int? timeStampMs;

  /// @nodoc
  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum DirectCdnStreamingReason {
  /// @nodoc
  @JsonValue(0)
  directCdnStreamingReasonOk,

  /// @nodoc
  @JsonValue(1)
  directCdnStreamingReasonFailed,

  /// @nodoc
  @JsonValue(2)
  directCdnStreamingReasonAudioPublication,

  /// @nodoc
  @JsonValue(3)
  directCdnStreamingReasonVideoPublication,

  /// @nodoc
  @JsonValue(4)
  directCdnStreamingReasonNetConnect,

  /// @nodoc
  @JsonValue(5)
  directCdnStreamingReasonBadName,
}

/// @nodoc
extension DirectCdnStreamingReasonExt on DirectCdnStreamingReason {
  /// @nodoc
  static DirectCdnStreamingReason fromValue(int value) {
    return $enumDecode(_$DirectCdnStreamingReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$DirectCdnStreamingReasonEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum DirectCdnStreamingState {
  /// @nodoc
  @JsonValue(0)
  directCdnStreamingStateIdle,

  /// @nodoc
  @JsonValue(1)
  directCdnStreamingStateRunning,

  /// @nodoc
  @JsonValue(2)
  directCdnStreamingStateStopped,

  /// @nodoc
  @JsonValue(3)
  directCdnStreamingStateFailed,

  /// @nodoc
  @JsonValue(4)
  directCdnStreamingStateRecovering,
}

/// @nodoc
extension DirectCdnStreamingStateExt on DirectCdnStreamingState {
  /// @nodoc
  static DirectCdnStreamingState fromValue(int value) {
    return $enumDecode(_$DirectCdnStreamingStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$DirectCdnStreamingStateEnumMap[this]!;
  }
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DirectCdnStreamingStats implements AgoraSerializable {
  /// @nodoc
  const DirectCdnStreamingStats(
      {this.videoWidth,
      this.videoHeight,
      this.fps,
      this.videoBitrate,
      this.audioBitrate});

  /// @nodoc
  @JsonKey(name: 'videoWidth')
  final int? videoWidth;

  /// @nodoc
  @JsonKey(name: 'videoHeight')
  final int? videoHeight;

  /// @nodoc
  @JsonKey(name: 'fps')
  final int? fps;

  /// @nodoc
  @JsonKey(name: 'videoBitrate')
  final int? videoBitrate;

  /// @nodoc
  @JsonKey(name: 'audioBitrate')
  final int? audioBitrate;

  /// @nodoc
  factory DirectCdnStreamingStats.fromJson(Map<String, dynamic> json) =>
      _$DirectCdnStreamingStatsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DirectCdnStreamingStatsToJson(this);
}

/// @nodoc
class DirectCdnStreamingEventHandler {
  /// @nodoc
  const DirectCdnStreamingEventHandler({
    this.onDirectCdnStreamingStateChanged,
    this.onDirectCdnStreamingStats,
  });

  /// @nodoc
  final void Function(
      DirectCdnStreamingState state,
      DirectCdnStreamingReason reason,
      String message)? onDirectCdnStreamingStateChanged;

  /// @nodoc
  final void Function(DirectCdnStreamingStats stats)? onDirectCdnStreamingStats;
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DirectCdnStreamingMediaOptions implements AgoraSerializable {
  /// @nodoc
  const DirectCdnStreamingMediaOptions(
      {this.publishCameraTrack,
      this.publishMicrophoneTrack,
      this.publishCustomAudioTrack,
      this.publishCustomVideoTrack,
      this.publishMediaPlayerAudioTrack,
      this.publishMediaPlayerId,
      this.customVideoTrackId});

  /// @nodoc
  @JsonKey(name: 'publishCameraTrack')
  final bool? publishCameraTrack;

  /// @nodoc
  @JsonKey(name: 'publishMicrophoneTrack')
  final bool? publishMicrophoneTrack;

  /// @nodoc
  @JsonKey(name: 'publishCustomAudioTrack')
  final bool? publishCustomAudioTrack;

  /// @nodoc
  @JsonKey(name: 'publishCustomVideoTrack')
  final bool? publishCustomVideoTrack;

  /// @nodoc
  @JsonKey(name: 'publishMediaPlayerAudioTrack')
  final bool? publishMediaPlayerAudioTrack;

  /// @nodoc
  @JsonKey(name: 'publishMediaPlayerId')
  final int? publishMediaPlayerId;

  /// @nodoc
  @JsonKey(name: 'customVideoTrackId')
  final int? customVideoTrackId;

  /// @nodoc
  factory DirectCdnStreamingMediaOptions.fromJson(Map<String, dynamic> json) =>
      _$DirectCdnStreamingMediaOptionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DirectCdnStreamingMediaOptionsToJson(this);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExtensionInfo implements AgoraSerializable {
  /// @nodoc
  const ExtensionInfo(
      {this.mediaSourceType, this.remoteUid, this.channelId, this.localUid});

  /// @nodoc
  @JsonKey(name: 'mediaSourceType')
  final MediaSourceType? mediaSourceType;

  /// @nodoc
  @JsonKey(name: 'remoteUid')
  final int? remoteUid;

  /// @nodoc
  @JsonKey(name: 'channelId')
  final String? channelId;

  /// @nodoc
  @JsonKey(name: 'localUid')
  final int? localUid;

  /// @nodoc
  factory ExtensionInfo.fromJson(Map<String, dynamic> json) =>
      _$ExtensionInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExtensionInfoToJson(this);
}

/// RTC SDK 的基础接口类，实现实时音视频的主要功能。
///
/// RtcEngine 提供了 App 调用的主要方法。
/// 在调用其他 API 之前，必须先调用 createAgoraRtcEngine 创建 RtcEngine 对象。
abstract class RtcEngine {
  /// 初始化 RtcEngine 。
  ///
  /// RtcEngine 类的所有接口函数，如无特殊说明，都是异步调用，对接口的调用建议在同一个线程进行。
  /// SDK 只支持每个 App 创建一个 RtcEngine 实例。
  ///
  /// * [context] RtcEngine 实例的配置。详见 RtcEngineContext 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。
  ///  -1: 一般性的错误（未明确归类）。
  ///  -2: 设置了无效的参数。
  ///  -7: SDK 初始化失败。
  ///  -22: 资源申请失败。当 App 占用资源过多，或系统资源耗尽时，SDK 分配资源失败，会返回该错误。
  ///  -101: App ID 无效。
  Future<void> initialize(RtcEngineContext context);

  /// 获取 SDK 版本。
  ///
  /// Returns
  /// SDKBuildInfo 对象。
  Future<SDKBuildInfo> getVersion();

  /// 获取警告或错误描述。
  ///
  /// * [code] SDK 报告的错误码。
  ///
  /// Returns
  /// 具体的错误描述。
  Future<String> getErrorDescription(int code);

  /// 查询 SDK 支持的视频编解码能力。
  ///
  /// * [size] CodecCapInfo 的大小。
  ///
  /// Returns
  /// 如果调用成功，则返回 CodecCapInfo 数组，表示 SDK 的视频编码能力。
  ///  如果调用超时，请修改调用逻辑，不要在主线程中调用该方法。
  Future<List<CodecCapInfo>> queryCodecCapability(int size);

  /// 查询设备评分等级。
  ///
  /// Returns
  /// 方法调用成功时，返回一个取值范围为 [0,100] 的值，表示当前设备的评分等级，数值越大表示设备能力越强，大部分设备的评分在 60 到 100 之间；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  ///  < 0: 方法调用失败。
  Future<int> queryDeviceScore();

  /// 使用 token 、 channelId 、 uid 预加载频道。
  ///
  /// 调用该方法可以减少观众频繁切换频道时加入频道的时间，从而缩短观众听到主播首帧音频以及看到首帧画面的耗时，提升观众端的视频体验。
  /// 如果当前频道已经成功预加载，观众加入、离开频道后如需再次加入该频道，只要预加载时传入的 Token 仍在有效期内，则无需重新预加载。 预加载不生效不会影响后续正常加入频道，也不会增加加入频道的耗时。
  ///  调用该方法时，请确保用户角色设为观众、音频应用场景设为非合唱场景（ audioScenarioChorus ），否则预加载不生效。
  ///  请确保预加载频道时传入的频道名、用户 ID、Token 和后续加入频道时传入的值相同，否则预加载不生效。
  ///  目前一个 RtcEngine 实例最多支持预加载 20 个频道，如超出限制，仅最新预加载的 20 个频道生效。
  ///
  /// * [token] 在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  /// Token 过期后，根据预加载频道的数量，你可以通过不同方式来传入用于预加载频道的新 Token：
  ///  预加载一个频道时：调用此方法来传入新的 Token。
  ///  预加载多个频道时：
  ///  如果你使用了通配的 Token，调用 updatePreloadChannelToken 来更新所有预加载频道的 Token。生成通配 Token 时，用户 ID 不得设为 0。详见 [使用通配 Token](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/wildcard-token)。
  ///  如果你使用了不同的 Token：调用此方法并传入你的用户 ID、对应的频道名和更新后的 Token。
  /// * [channelId] 待预加载的频道名。该参数标识用户进行实时音视频互动的频道。App ID 一致的前提下，填入相同频道名的用户会进入同一个频道进行音视频互动。
  /// 该参数为长度在 64 字节以内的字符串。以下为支持的字符集范围（共 89 个字符）:
  ///  26 个小写英文字母 a~z
  ///  26 个大写英文字母 A~Z
  ///  10 个数字 0~9
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  /// * [uid] 用户 ID。该参数用于标识在实时音视频互动频道中的用户。你需要自行设置和管理用户 ID，并确保同一频道内的每个用户 ID 是唯一的。该参数为 32 位无符号整数。建议设置范围：1 到 232-1。如果不指定（即设为 0），SDK 会自动分配一个，并在 onJoinChannelSuccess 回调中返回， 应用层必须记住该返回值并维护，SDK 不对该返回值进行维护。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -7： RtcEngine 对象尚未初始化。你需要在调用该方法前成功初始化 RtcEngine 对象。
  ///  -102：频道名无效。你需要填入有效的频道名，重新加入频道。
  Future<void> preloadChannel(
      {required String token, required String channelId, required int uid});

  /// 使用 token 、 channelId 、 userAccount 预加载频道。
  ///
  /// 调用该方法可以减少观众频繁切换频道时加入频道的时间，从而缩短观众听到主播首帧音频以及看到首帧画面的耗时，提升观众端的视频体验。
  /// 如果当前频道已经成功预加载，观众加入、离开频道后如需再次加入该频道，只要预加载时传入的 Token 仍在有效期内，则无需重新预加载。 预加载不生效不会影响后续正常加入频道，也不会增加加入频道的耗时。
  ///  调用该方法时，请确保用户角色设为观众、音频应用场景设为非合唱场景（ audioScenarioChorus ），否则预加载不生效。
  ///  请确保预加载频道时传入的频道名、用户 User Account、Token 和后续加入频道时传入的值相同，否则预加载不生效。
  ///  目前一个 RtcEngine 实例最多支持预加载 20 个频道，如超出限制，仅最新预加载的 20 个频道生效。
  ///
  /// * [token] 在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  /// Token 过期后，根据预加载频道的数量，你可以通过不同方式来传入用于预加载频道的新 Token：
  ///  预加载一个频道时：调用此方法来传入新的 Token。
  ///  预加载多个频道时：
  ///  如果你使用了通配的 Token，调用 updatePreloadChannelToken 来更新所有预加载频道的 Token。生成通配 Token 时，用户 ID 不得设为 0。详见 [使用通配 Token](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/wildcard-token)。
  ///  如果你使用了不同的 Token：调用此方法并传入你的用户 ID、对应的频道名和更新后的 Token。
  /// * [channelId] 待预加载的频道名。该参数标识用户进行实时音视频互动的频道。App ID 一致的前提下，填入相同频道名的用户会进入同一个频道进行音视频互动。
  /// 该参数为长度在 64 字节以内的字符串。以下为支持的字符集范围（共 89 个字符）:
  ///  26 个小写英文字母 a~z
  ///  26 个大写英文字母 A~Z
  ///  10 个数字 0~9
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  /// * [userAccount] 用户 User Account。该参数用于标识实时音视频互动频道中的用户。你需要自行设置和管理用户的 User Account，并确保同一频道中每个用户的 User Account 是唯一的。 该参数为必填，最大不超过 255 字节，不可填 null 。以下为支持的字符集范围（共 89 个字符）：
  ///  26 个小写英文字母 a-z
  ///  26 个大写英文字母 A-Z
  ///  10 个数字 0-9
  ///  空格
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2：传入的参数无效。例如，User Account 为空。你需要填入有效的参数，重新加入频道。
  ///  -7： RtcEngine 对象尚未初始化。你需要在调用该方法前成功初始化 RtcEngine 对象。
  ///  -102：频道名无效。你需要填入有效的频道名，重新加入频道。
  Future<void> preloadChannelWithUserAccount(
      {required String token,
      required String channelId,
      required String userAccount});

  /// 更新预加载频道的通配 Token。
  ///
  /// 你需要自行维护通配 Token 的生命周期。当通配 Token 过期后，你需要在你的服务端生成新的通配 Token，然后通过此方法来传入新的 Token。
  ///
  /// * [token] 新的 Token。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updatePreloadChannelToken(String token);

  /// 设置媒体选项并加入频道。
  ///
  /// 该方法可以在加入频道时设置媒体选项，如是否在频道内发布音视频流等。用户加入频道时是否自动订阅频道内所有远端音视频流。默认情况下，用户订阅频道内所有其他用户的音频流和视频流，因此会产生用量并影响计费。如果想取消订阅，可以通过设置 options 参数或相应的 mute 方法实现。
  ///  该方法仅支持用户一次加入一个频道。
  ///  使用不同 App ID 的 App 不能互通。
  ///  加入频道前，请确保用于生成 Token 的 App ID 和调用 initialize 方法初始化引擎时使用的是同一个 App ID，否则使用 Token 加入频道会失败。
  ///
  /// * [token] 在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  ///  （推荐）如果你的项目开启了安全模式，即选择 APP ID + Token 为鉴权机制，则该参数为必填。
  ///  如果你的项目仅开启调试模式，即选择 APP ID 为鉴权机制，则无需填入 Token 即可加入频道。成功加入频道 24 小时后会自动退出该频道。
  ///  如果你需要同时加入多个频道或在频道间频繁切换，声网推荐你使用通配 Token 以避免每加入一个新的频道都需向服务端申请一个新的 Token，详见 [使用通配 Token](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/wildcard-token)。
  /// * [channelId] 频道名。该参数标识用户进行实时音视频互动的频道。App ID 一致的前提下，填入相同频道名的用户会进入同一个频道进行音视频互动。该参数为长度在 64 字节以内的字符串。以下为支持的字符集范围（共 89 个字符）:
  ///  26 个小写英文字母 a~z
  ///  26 个大写英文字母 A~Z
  ///  10 个数字 0~9
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  /// * [uid] 用户 ID。该参数用于标识在实时音视频互动频道中的用户。你需要自行设置和管理用户 ID，并确保同一频道内的每个用户 ID 是唯一的。该参数为 32 位无符号整数。建议设置范围：1 到 232-1。如果不指定（即设为 0），SDK 会自动分配一个，并在 onJoinChannelSuccess 回调中返回， 应用层必须记住该返回值并维护，SDK 不对该返回值进行维护。
  /// * [options] 频道媒体设置选项。详见 ChannelMediaOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2：传入的参数无效。例如，使用了不合法的 Token， uid 参数未设置为整型，或 ChannelMediaOptions 成员值不合法。你需要填入有效的参数，重新加入频道。
  ///  -3： RtcEngine 对象初始化失败。你需要重新初始化 RtcEngine 对象。
  ///  -7： RtcEngine 对象尚未初始化。你需要在调用该方法前成功初始化 RtcEngine 对象。
  ///  -8： RtcEngine 对象内部状态错误。可能的原因是：调用 startEchoTest 开始通话回路测试后，未调用 stopEchoTest 停止测试就调用该方法加入频道。你需要在该方法前调用 stopEchoTest 。
  ///  -17：加入频道被拒绝。可能的原因是用户已经在频道中。建议通过 onConnectionStateChanged 回调判断用户是否在频道中。除收到 connectionStateDisconnected (1) 状态外，不要再次调用该方法加入频道。
  ///  -102：频道名无效。你需要在 channelId 中填入有效的频道名，重新加入频道。
  ///  -121：用户 ID 无效。你需要在 uid 中填入有效的用户 ID，重新加入频道。
  Future<void> joinChannel(
      {required String token,
      required String channelId,
      required int uid,
      required ChannelMediaOptions options});

  /// 加入频道后更新频道媒体选项。
  ///
  /// * [options] 频道媒体选项，详见 ChannelMediaOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateChannelMediaOptions(ChannelMediaOptions options);

  /// 设置频道选项并离开频道。
  ///
  /// 调用该方法后，SDK 会终止音视频互动、离开当前频道，并会释放会话相关的所有资源。
  /// 成功加入频道后，必须调用本方法结束通话，否则无法开始下一次通话。如果你已调用 joinChannelEx 加入多个频道，调用本方法后会同时离开所有已加入的频道。 该方法是异步操作，调用返回时并没有真正退出频道。
  /// 如果你调用了该方法后立即调用 release 方法，SDK 将不会触发 onLeaveChannel 回调。
  ///
  /// * [options] 离开频道的选项，详见 LeaveChannelOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> leaveChannel({LeaveChannelOptions? options});

  /// 更新 Token。
  ///
  /// 该方法用于更新 Token。Token 会在一定时间后失效，此时 SDK 将无法和服务器建立连接。
  ///
  /// * [token] 新生成的 Token。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> renewToken(String token);

  /// 设置频道场景。
  ///
  /// 你可以调用该方法设置频道的使用场景。SDK 会针对不同的使用场景采用不同的优化策略，如直播场景优先保证画质。SDK 初始化后默认的频道场景为直播场景。 为保证实时音视频质量，相同频道内的用户必须使用同一种频道场景。
  ///
  /// * [profile] 频道使用场景。详见 ChannelProfileType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2: 参数无效。
  ///  -7: SDK 尚未初始化。
  Future<void> setChannelProfile(ChannelProfileType profile);

  /// 设置直播场景下的用户角色和观众端延时级别。
  ///
  /// SDK 默认设置用户角色为观众，你可以调用该方法设置用户角色为主播。用户角色（ role ）确定用户在 SDK 层的权限，包含是否有发流权限等。 当用户角色设为主播时，观众端延时级别仅支持设置为 audienceLatencyLevelUltraLowLatency（超低延时）。
  /// 在加入频道前调用该方法并将 role 设为 BROADCASTER （主播）时，本地不会触发 onClientRoleChanged 回调。
  ///
  /// * [role] 用户角色。详见 ClientRoleType 。 角色为观众的用户无法在频道内发布音视频流。在直播场景下发流时，请确保你的用户角色已切换为主播。
  /// * [options] 用户具体设置，包含用户级别。详见 ClientRoleOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setClientRole(
      {required ClientRoleType role, ClientRoleOptions? options});

  /// 开始音视频通话回路测试。
  ///
  /// 为测试用户本地发流、收流是否正常，你可以调用该方法进行音视频通话回路测试，即测试系统的音视频设备和用户的上下行网络是否正常。
  /// 开始测试后，用户需发出声音或面对摄像头，音频或视频会在约 2 秒后播放出来。如果音频播放正常，则表示系统音频设备和用户上下行网络均正常； 如果视频播放正常，则表示系统视频设备和用户上下行网络均正常。
  ///  在频道内调用该方法时，需确保当前没有发布音视频流。
  ///  调用该方法后，必须调用 stopEchoTest 结束测试，否则该用户无法进行下一次音视频通话回路测试，也无法加入频道。
  ///  直播场景下，该方法仅能由主播调用。
  ///
  /// * [config] 音视频通话回路测试的配置。详见 EchoTestConfiguration 。
  ///
  /// Returns
  /// 0: 方法调用成功。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startEchoTest(EchoTestConfiguration config);

  /// 停止语音通话回路测试。
  ///
  /// 调用 startEchoTest 后，必须调用该方法结束测试，否则该用户无法进行下一次音视频通话回路测试，也无法加入频道。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopEchoTest();

  /// 开启或关闭多路摄像头采集。
  ///
  /// 在已有摄像头采集视频的场景下，声网推荐你采用以下步骤实现多路摄像头采集、发布视频：
  ///  调用该方法开启多路摄像头采集。
  ///  调用 startPreview 开启本地视频预览。
  ///  调用 startCameraCapture 并设置 sourceType 指定第二个摄像头开始采集。
  ///  调用 joinChannelEx 并设置 publishSecondaryCameraTrack 为 true ，在频道内发布第二路摄像头采集的视频流。 如果要关闭多路摄像头采集，可参考以下步骤：
  ///  调用 stopCameraCapture 。
  ///  调用该方法并将 enabled 设置为 false 。 该方法仅适用于 iOS。 使用多路摄像头采集视频时，请确保系统版本为 13.0 及以上。 支持多路摄像头采集的最低 iOS 设备类型如下所示：
  ///  iPhone XR
  ///  iPhone XS
  ///  iPhone XS Max
  ///  iPad Pro (第三代及以上) 你可以在 startPreview 前后调用该方法开启多摄像头采集：
  ///  如果在 startPreview 之前开启，则本地视频预览会同时出现两个摄像头采集的画面。
  ///  如果在 startPreview 之后开启，SDK 会先停止当前的摄像头采集，然后再开启原摄像头和第二个摄像头，本地视频预览会出现短暂黑屏、然后自动恢复正常。
  ///
  /// * [enabled] 是否开启多摄像头视频采集模式： true ：开启多摄像头采集模式，SDK 使用多路摄像头采集视频。 false ：关闭多摄像头采集模式，SDK 仅使用单路摄像头采集视频。
  /// * [config] 第二个摄像头的采集配置。详见 CameraCapturerConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableMultiCamera(
      {required bool enabled, required CameraCapturerConfiguration config});

  /// 启用视频模块。
  ///
  /// 视频模块默认为关闭状态，需要调用该方法启用。如果后续需要关闭视频模块，需调用 disableVideo 方法。
  ///  该方法设置的是内部引擎为启用状态，在离开频道后仍然有效。
  ///  调用该方法会重置整个引擎，响应时间较慢。你可以根据实际需求用以下方法来独立控制视频模块的某一项功能： enableLocalVideo : 是否启动摄像头采集并创建本地视频流。 muteLocalVideoStream : 是否发布本地视频流。 muteRemoteVideoStream : 是否接收并播放远端视频流。 muteAllRemoteVideoStreams : 是否接收并播放所有远端视频流。
  ///  在频道内调用该方法时，会重置 enableLocalVideo 、 muteRemoteVideoStream 和 muteAllRemoteVideoStreams 的设置，需谨慎使用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableVideo();

  /// 关闭视频模块。
  ///
  /// 该方法用于关闭视频模块。
  ///  该方法设置的是内部引擎为禁用状态，在离开频道后仍然有效。
  ///  调用该方法会重置整个引擎，响应时间较慢。你可以根据实际需求用以下方法来独立控制视频模块的某一项功能： enableLocalVideo : 是否启动摄像头采集并创建本地视频流。 muteLocalVideoStream : 是否发布本地视频流。 muteRemoteVideoStream : 是否接收并播放远端视频流。 muteAllRemoteVideoStreams : 是否接收并播放所有远端视频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> disableVideo();

  /// 开启视频预览并指定预览的视频源。
  ///
  /// 该方法用于启动本地视频预览，并指定出现在预览画面中的视频源。
  ///  本地预览默认开启镜像功能。
  ///  在离开频道后，本地预览依然处于开启状态。你需要调用 stopPreview 关闭本地预览。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startPreview(
      {VideoSourceType sourceType = VideoSourceType.videoSourceCameraPrimary});

  /// 停止视频预览。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopPreview(
      {VideoSourceType sourceType = VideoSourceType.videoSourceCameraPrimary});

  /// 开始通话前网络质量探测。
  ///
  /// 开始通话前网络质量探测，向用户反馈上下行网络的带宽、丢包、网络抖动和往返时延数据。
  ///
  /// * [config] Last mile 网络探测配置，详见 LastmileProbeConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startLastmileProbeTest(LastmileProbeConfig config);

  /// 停止通话前网络质量探测。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopLastmileProbeTest();

  /// 设置视频编码属性。
  ///
  /// 设置本地视频的编码属性。每一种视频编码属性对应一系列视频相关参数设置，包含分辨率、帧率和码率。
  ///  该方法的 config 参数设置是在理想网络状态下能达到的最大值。如果网络状态不好，视频引擎便不能使用该 config 渲染本地视频，它会自动降低到一个合适的视频参数设置。
  ///
  /// * [config] 视频编码参数配置。详见 VideoEncoderConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoEncoderConfiguration(VideoEncoderConfiguration config);

  /// 设置美颜效果选项。
  ///
  /// 开启本地美颜功能，并设置美颜效果选项。
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  该功能对设备性能要求较高，调用该方法时 SDK 会自动对当前设备能力进行检查。
  ///
  /// * [enabled] 是否开启美颜功能： true : 开启美颜功能。 false :（默认）关闭美颜功能。
  /// * [options] 美颜选项，详细定义见 BeautyOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setBeautyEffectOptions(
      {required bool enabled,
      required BeautyOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 设置美型效果选项并指定媒体源。
  ///
  /// 调用该方法可对人脸各部位进行修饰，使用预设的参数一次性实现瘦脸、大眼、瘦鼻等微整形效果，支持微调整体的修饰力度。 美型属于增值服务，计费方式详见[计费策略](https://doc.shengwang.cn/doc/rtc/android/billing/billing-strategy)。
  ///  在 Android 平台上，该方法仅适用于 Android 4.4 及以上版本。
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  该功能对设备性能要求较高，调用该方法时 SDK 会自动对当前设备能力进行检查。
  ///
  /// * [enabled] 是否开启美型效果： true : 开启美型功能。 false :（默认）关闭美型功能。
  /// * [options] 美型风格选项，详见 FaceShapeBeautyOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setFaceShapeBeautyOptions(
      {required bool enabled,
      required FaceShapeBeautyOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 设置美型部位选项并指定媒体源。
  ///
  /// 如果在 setFaceShapeBeautyOptions 方法中实现的预设美型效果达不到预期，你可以通过该方法设置美型部位选项，对人脸的各个部位单独微调，实现更加精细的美型效果。 美型属于增值服务，计费方式详见[计费策略](https://doc.shengwang.cn/doc/rtc/android/billing/billing-strategy)。
  ///  在 Android 平台上，该方法仅适用于 Android 4.4 及以上版本。
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  该功能对设备性能要求较高，调用该方法时 SDK 会自动对当前设备能力进行检查。
  ///
  /// * [options] 美型部位选项，详见 FaceShapeAreaOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setFaceShapeAreaOptions(
      {required FaceShapeAreaOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 获取美型效果选项。
  ///
  /// 调用该方法可以获取美型效果当前设置的参数信息。
  ///
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，返回 FaceShapeBeautyOptions 对象；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<FaceShapeBeautyOptions> getFaceShapeBeautyOptions(
      {MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 获取美型部位选项。
  ///
  /// 调用该方法可以获取美型部位当前设置的参数信息。
  ///
  /// * [shapeArea] 美型部位。详见 FaceShapeArea 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，返回 FaceShapeAreaOptions 对象；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<FaceShapeAreaOptions> getFaceShapeAreaOptions(
      {required FaceShapeArea shapeArea,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 设置滤镜效果选项并指定媒体源。
  ///
  /// 该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  该功能对设备性能要求较高，调用该方法时 SDK 会自动对当前设备能力进行检查。
  ///
  /// * [enabled] 是否开启滤镜效果： true : 开启滤镜功能。 false :（默认）关闭滤镜功能。
  /// * [options] 滤镜选项，详见 FilterEffectOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setFilterEffectOptions(
      {required bool enabled,
      required FilterEffectOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 创建一个 IVideoEffectObject 视频特效对象。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [bundlePath] 视频特效资源包的路径。
  /// * [type] 媒体源类型，详见 MediaSourceType 。
  ///
  /// Returns
  /// 方法调用成功，返回 IVideoEffectObject 对象指针，详见 IVideoEffectObject 。
  ///  方法调用失败，返回 NULL 。
  Future<VideoEffectObject?> createVideoEffectObject(
      {required String bundlePath,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 销毁视频特效对象。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [videoEffectObject] 要销毁的视频特效对象。详见 VideoEffectObject 。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyVideoEffectObject(VideoEffectObject videoEffectObject);

  /// 设置暗光增强功能。
  ///
  /// 你可以调用该方法开启暗光增强功能并设置暗光增强的效果。
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  暗光增强对设备性能有一定要求。开启暗光增强后，如果设备出现严重发烫等问题，建议你将暗光增强等级修改为消耗性能较少的等级或关闭暗光增强功能。
  ///  如果要实现优先画质 (lowLightEnhanceLevelHighQuality) 的暗光增强，需要先调用 setVideoDenoiserOptions 实现视频降噪，具体对应关系如下：
  ///  暗光增强为自动模式 (LowLightEnhanceAuto) 时，视频降噪需设置为优先画质 (videoDenoiserLevelHighQuality)、自动模式 (videoDenoiserAuto)。
  ///  暗光增强为手动模式 (LowLightEnhanceManual) 时，视频降噪需设置为优先画质 (videoDenoiserLevelHighQuality)、手动模式 (videoDenoiserManual)。
  ///
  /// * [enabled] 是否开启暗光增强功能： true : 开启暗光增强功能。 false :（默认）关闭暗光增强功能。
  /// * [options] 暗光增强选项，用于设置暗光增强的效果。详见 LowlightEnhanceOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLowlightEnhanceOptions(
      {required bool enabled,
      required LowlightEnhanceOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 设置视频降噪功能。
  ///
  /// 你可以调用该方法开启视频降噪功能并设置视频降噪的效果。 如果该方法实现的降噪强度无法满足你的需求，声网推荐你调用 setBeautyEffectOptions 方法启用美颜磨皮功能，以获得更好的视频降噪效果。强效降噪效果的 BeautyOptions 推荐设置如下： lighteningContrastLevel ：lighteningContrastNormal lighteningLevel ：0.0 smoothnessLevel ：0.5 rednessLevel ：0.0 sharpnessLevel ：0.1
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///  视频降噪对设备性能有一定要求。开启视频降噪后，如果设备出现严重发烫等问题，建议你将视频降噪等级修改为消耗性能较少的等级或关闭视频降噪功能。
  ///
  /// * [enabled] 是否开启视频降噪功能： true : 开启视频降噪功能。 false :（默认）关闭视频降噪功能。
  /// * [options] 视频降噪选项，用于设置视频降噪的效果。详见 VideoDenoiserOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoDenoiserOptions(
      {required bool enabled,
      required VideoDenoiserOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 设置色彩增强功能。
  ///
  /// 摄像头采集到的视频画面可能存在色彩失真的现象。色彩增强功能可以通过智能调节饱和度和对比度等视频特性，提升视频色彩丰富度和色彩还原度，最终使视频画面更生动。
  /// 你可以调用该方法开启色彩增强功能并设置色彩增强的效果。
  ///  请在 enableVideo 后调用该方法。
  ///  色彩增强对设备性能有一定要求。开启色彩增强后，如果设备出现严重发烫等问题，建议你将色彩增强等级修改为消耗性能较少的等级或关闭色彩增强功能。
  ///  该方法依赖于视频增强动态库 libagora_clear_vision_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [enabled] 是否开启色彩增强功能： true ：开启色彩增强功能。 false ：（默认）关闭色彩增强功能。
  /// * [options] 色彩增强选项，用于设置色彩增强的效果。详见 ColorEnhanceOptions 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setColorEnhanceOptions(
      {required bool enabled,
      required ColorEnhanceOptions options,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 开启/关闭虚拟背景。
  ///
  /// 虚拟背景功能支持将本地用户原来的背景替换为静态图片、动态视频、将背景虚化，或者将人像与背景分割以实现人像画中画。成功开启虚拟背景功能后，频道内所有用户都能看到自定义的背景。
  /// 请在 enableVideo 或 startPreview 之后调用该方法。
  ///  使用视频作为虚拟背景会导致内存占用持续增加，可能会导致 App 出现闪退等问题，因此在使用时请尽量降低视频的分辨率和帧率。
  ///  该功能对设备性能要求较高，调用该方法时 SDK 会自动对当前设备能力进行检查。建议你在搭载如下芯片的设备上使用：
  ///  骁龙 700 系列 750G 及以上
  ///  骁龙 800 系列 835 及以上
  ///  天玑 700 系列 720 及以上
  ///  麒麟 800 系列 810 及以上
  ///  麒麟 900 系列 980 及以上
  ///  搭载 A9 及以上芯片的如下设备：
  ///  iPhone 6S 及以上
  ///  iPad Air 第三代及以上
  ///  iPad 第五代及以上
  ///  iPad Pro 第一代及以上
  ///  iPad mini 第五代及以上
  ///  建议你在满足如下条件的场景中使用该功能：
  ///  使用高清摄像设备、摄像环境光照均匀。
  ///  摄像画面中，物件较少，用户的人像为半身人像且基本无遮挡，背景色较单一且与用户着装颜色不同。
  ///  该方法依赖于虚拟背景动态库 libagora_segmentation_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [enabled] 是否开启虚拟背景： true : 开启虚拟背景。 false : 关闭虚拟背景。
  /// * [backgroundSource] 自定义的背景。详见 VirtualBackgroundSource 。为将自定义背景图的分辨率与 SDK 的视频采集分辨率适配，SDK 会在保证自定义背景图不变形的前提下，对自定义背景图进行缩放和裁剪。
  /// * [segproperty] 背景图像的处理属性。详见 SegmentationProperty 。
  /// * [type] 效果应用的媒体源类型。详见 MediaSourceType 。 在该方法中，该参数仅支持以下两种设置：
  ///  使用摄像头采集本地视频时，请保持默认值 primaryCameraSource 。
  ///  如果要使用自定义采集的视频，将该参数设置为 customVideoSource 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableVirtualBackground(
      {required bool enabled,
      required VirtualBackgroundSource backgroundSource,
      required SegmentationProperty segproperty,
      MediaSourceType type = MediaSourceType.primaryCameraSource});

  /// 初始化远端用户视图。
  ///
  /// 该方法绑定远端用户和显示视图，并设置远端用户视图在本地显示时的渲染模式和镜像模式，只影响本地用户看到的视频画面。
  /// 调用该方法时需要指定远端视频的用户 ID，一般可以在进频道前提前设置好。如果无法在加入频道前得到远端用户的 ID，可以在收到 onUserJoined 回调时调用该方法。
  /// 如需解除某个远端用户的绑定视图，可以调用该方法并将 view 设置为空。
  /// 离开频道后，SDK 会清除远端用户视图的绑定关系。
  /// 在移动端自定义合图布局场景下，你可以调用该方法并针对合图视频流的每一路子视频流设置一个单独的 view 进行渲染。
  ///  在 Flutter 中你不需要主动调用该方法，请使用 AgoraVideoView 渲染本地和远端视图。
  ///  如果你希望在通话中更新远端用户视图的渲染或镜像模式，请使用 setRemoteRenderMode 方法。
  ///  当使用录制服务时，由于它不会发送视频流，App 无需为它绑定视图。如果 App 无法识别录制服务，可以在收到 onFirstRemoteVideoDecoded 回调时再绑定远端用户视图。
  ///
  /// * [canvas] 远端视频显示属性。详见 VideoCanvas 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setupRemoteVideo(VideoCanvas canvas);

  /// 初始化本地视图。
  ///
  /// 该方法初始化本地视图并设置本地用户视频显示属性，只影响本地用户看到的视频画面，不影响本地视频的发布。调用该方法绑定本地视频流的显示视窗 (view)，并设置本地用户视图的渲染模式和镜像模式。
  /// 退出频道后绑定仍然有效。如果需要停止渲染或解除绑定，可以调用该方法将参数 view 设为 NULL，以停止渲染并清理渲染缓存。
  ///  在 Flutter 中你不需要主动调用该方法，请使用 AgoraVideoView 渲染本地和远端视图。
  ///  如果你希望在通话中仅更新本地用户视图的渲染或镜像模式，请使用 setLocalRenderMode 方法。
  ///
  /// * [canvas] 本地视频显示属性。详见 VideoCanvas 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setupLocalVideo(VideoCanvas canvas);

  /// 设置视频业务场景。
  ///
  /// 成功调用该方法设置视频业务场景后，SDK 会基于指定场景启用最佳实践策略，自动调整关键性能指标，进而优化视频体验质量。 该方法需要在加入频道前调用。
  ///
  /// * [scenarioType] 视频业务场景。详见 VideoApplicationScenarioType 。 applicationScenarioMeeting (1) 适用于会议场景。如果用户已调用 setDualStreamMode 将小流设置为始终不发送 (disableSimulcastStream)，会议场景对小流的动态开关不生效。
  /// 该枚举值仅适用于主播 vs 主播场景。SDK 会针对该场景启用以下策略：
  ///  针对会议场景对小流码率要求较高的情况，自动启用多项抗弱网技术，提升小流的抗弱网能力，确保多路流订阅时接收端的流畅性。
  ///  实时监测接收端大流的订阅人数，根据订阅人数动态调节大流配置：
  ///  无人订阅大流时，会自动降低大流的码率和帧率，节省上行带宽和消耗。
  ///  有人订阅大流时，大流会重置为用户最近一次调用 setVideoEncoderConfiguration 时的 VideoEncoderConfiguration 配置。如果用户此前没有进行设置，则使用如下值：
  ///  视频分辨率：桌面端为 1280 × 720；移动端为 960 × 540
  ///  视频帧率：15 fps
  ///  码率：桌面端为 1600 Kbps；移动端为 1000 Kbps
  ///  实时监测接收端小流的订阅人数，根据订阅人数动态开启和关闭小流：
  ///  无人订阅小流时，自动关闭小流，节省上行带宽和消耗。
  ///  有人订阅小流时，开启小流并重置为用户最近一次调用 setDualStreamMode 时的 SimulcastStreamConfig 配置。如果用户此前没有进行设置，则使用如下值：
  ///  视频分辨率：480 × 272
  ///  视频帧率：15 fps
  ///  码率：500 Kbps applicationScenario1v1 (2) 适用于[视频 1v1 通话](https://doc.shengwang.cn/doc/one-to-one-live/android/rtm/overview/product-overview)场景。针对该场景低延迟、高画质的体验要求，SDK 进行了策略调优，提升了画质、首帧出图、中低端机延迟及弱网流畅度等性能表现。 applicationScenarioLiveshow (3) 适用于[秀场直播](https://doc.shengwang.cn/doc/showroom/android/overview/product-overview)场景。针对该场景对首帧出图时间和画质清晰度的高要求，SDK 进行了策略调优，例如，默认开启音视频帧加速渲染来提升首帧出图体验，无需再额外调用 enableInstantMediaRendering ，同时会默认开启 B 帧来确保较高的图像质量、提高传输效率。此外，也增强了在弱网环境和低端设备上的画质和流畅度表现。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVideoScenario(VideoApplicationScenarioType scenarioType);

  /// @nodoc
  Future<void> setVideoQoEPreference(VideoQoePreferenceType qoePreference);

  /// 启用音频模块。
  ///
  /// 音频模块默认开启。如果你调用 disableAudio 关闭了音频模块，可调用该方法重新开启。
  ///  调用该方法会重置整个引擎，响应时间较慢。你可以根据实际需求用以下方法来独立控制音频模块的某一项功能： enableLocalAudio : 是否启动麦克风采集并创建本地音频流。 muteLocalAudioStream : 是否发布本地音频流。 muteRemoteAudioStream : 是否接收并播放远端音频流。 muteAllRemoteAudioStreams : 是否接收并播放所有远端音频流。
  ///  在频道内调用该方法时，会重置 enableLocalAudio 、 muteRemoteAudioStream 和 muteAllRemoteAudioStreams 的设置，需谨慎使用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableAudio();

  /// 关闭音频模块。
  ///
  /// 音频模块默认开启，你可以调用该方法关闭音频模块。 该方法重置整个引擎，响应时间较慢，因此声网建议使用如下方法来控制音频模块： enableLocalAudio ：是否启动麦克风采集并创建本地音频流。 enableLoopbackRecording ：是否开启声卡采集。 muteLocalAudioStream ：是否发布本地音频流。 muteRemoteAudioStream ：是否接收并播放远端音频流。 muteAllRemoteAudioStreams ：是否接收并播放所有远端音频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> disableAudio();

  /// 设置音频编码属性和音频场景。
  ///
  /// 由于 iOS 系统限制，部分音频路由在通话音量模式下无法识别。因此，如需使用外接声卡，建议将音频应用场景设置为高音质场景 audioScenarioGameStreaming (3)。在这种场景下，SDK 会切换到媒体音量规避该问题。
  ///
  /// * [profile] 音频编码属性，包含采样率、码率、编码模式和声道数。详见 AudioProfileType 。
  /// * [scenario] 音频场景。不同的音频场景下，设备的音量类型是不同的。
  /// 详见 AudioScenarioType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioProfile(
      {required AudioProfileType profile,
      AudioScenarioType scenario = AudioScenarioType.audioScenarioDefault});

  /// 设置音频场景。
  ///
  /// 由于 iOS 系统限制，部分音频路由在通话音量模式下无法识别。因此，如需使用外接声卡，建议将音频应用场景设置为高音质场景 audioScenarioGameStreaming (3)。在这种场景下，SDK 会切换到媒体音量规避该问题。
  ///
  /// * [scenario] 音频场景。不同的音频场景下，设备的音量类型是不同的。
  /// 详见 AudioScenarioType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioScenario(AudioScenarioType scenario);

  /// 开启或关闭本地音频采集。
  ///
  /// 当用户加入频道时，音频功能默认是开启的。该方法可以关闭或重新开启本地音频功能，即停止或重新开始本地音频采集。
  /// 该方法与 muteLocalAudioStream 的区别在于： enableLocalAudio : 开启或关闭本地音频采集及处理。使用 enableLocalAudio 关闭或开启本地采集后，本地听远端播放会有短暂中断。 muteLocalAudioStream : 停止或继续发送本地音频流，不影响音频的采集状态。
  ///
  /// * [enabled] true : 重新开启本地音频功能，即开启本地音频采集（默认）； false : 关闭本地音频功能，即停止本地音频采集。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableLocalAudio(bool enabled);

  /// 取消或恢复发布本地音频流。
  ///
  /// 该方法用于控制是否发布本地采集的音频流。如果不发布本地采集的音频流，也不会禁用音频采集设备，所以不影响音频的采集状态。
  ///
  /// * [mute] 是否取消发布本地音频流。 true : 取消发布。 false :（默认）发布。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteLocalAudioStream(bool mute);

  /// 取消或恢复订阅所有远端用户的音频流。
  ///
  /// 成功调用该方法后，本地用户会取消或恢复订阅所有远端用户的音频流，包括在调用该方法后加入频道的用户的音频流。 SDK 默认在加入频道时订阅所有远端用户的音频流，如果要修改此行为，可以在调用 joinChannel 加入频道时设置 autoSubscribeAudio 为 false ，即可在加入频道时取消订阅所有用户的音频流。
  /// 如果在调用该方法之后又调用了 enableAudio 或 disableAudio ，则后调用的方法会生效。
  ///
  /// * [mute] 是否取消订阅所有远端用户的音频流： true : 取消订阅所有远端用户的音频流。 false :（默认）订阅所有远端用户的音频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteAllRemoteAudioStreams(bool mute);

  /// 取消或恢复订阅指定远端用户的音频流。
  ///
  /// * [uid] 指定用户的用户 ID。
  /// * [mute] 是否取消订阅指定远端用户的音频流。 true : 取消订阅指定用户的音频流。 false :（默认）订阅指定用户的音频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteRemoteAudioStream({required int uid, required bool mute});

  /// 取消或恢复发布本地视频流。
  ///
  /// 该方法用于控制是否发布本地采集的视频流。如果不发布本地采集的视频流，也不会禁用视频采集设备，所以不影响视频的采集状态。
  /// 相比于调用 enableLocalVideo (false) 关闭本地视频流采集、从而取消发布本地视频流的方法，该方法响应速度更快。
  ///
  /// * [mute] 是否取消发送本地视频流。 true : 取消发送本地视频流。 false : （默认）发送本地视频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteLocalVideoStream(bool mute);

  /// 开关本地视频采集。
  ///
  /// 该方法禁用或重新启用本地视频采集，不影响接收远端视频。
  /// 调用 enableVideo 后，本地视频采集即默认开启。
  /// 如果你在频道内调用 enableLocalVideo (false) 关闭本地视频采集，也会同时停止在频道内发布视频流。如果想要重新开启，则可调用 enableLocalVideo (true)，然后调用 updateChannelMediaOptions 并设置 options 参数，将本地采集的视频流发布到频道中。
  /// 成功禁用或启用本地视频采集后，远端会触发 onRemoteVideoStateChanged 回调。
  ///  该方法在加入频道前后均可调用，但加入频道前调用的设置，在加入频道后才会生效。
  ///  该方法设置内部引擎为启用状态，在离开频道后仍然有效。
  ///
  /// * [enabled] 是否开启本地视频采集。 true :（默认）开启本地视频采集。 false : 关闭本地视频采集。关闭后，远端用户会接收不到本地用户的视频流；但本地用户依然可以接收远端用户的视频流。设置为 false 时，该方法不需要本地有摄像头。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableLocalVideo(bool enabled);

  /// 取消或恢复订阅所有远端用户的视频流。
  ///
  /// 成功调用该方法后，本地用户会取消或恢复订阅所有远端用户的视频流，包括在调用该方法后加入频道的用户的视频流。 SDK 默认在加入频道时订阅所有远端用户的视频流，如果要修改此行为，可以在调用 joinChannel 加入频道时设置 autoSubscribeVideo 为 false ，即可在加入频道时取消订阅所有用户的视频流。
  /// 如果在调用该方法之后又调用了 enableVideo 或 disableVideo ，则后调用的方法会生效。
  ///
  /// * [mute] 是否取消订阅所有远端用户的视频流。 true : 取消订阅所有用户的视频流。 false :（默认）订阅所有用户的视频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteAllRemoteVideoStreams(bool mute);

  /// 设置默认订阅的视频流类型。
  ///
  /// 取决于发送端的默认行为和调用 setDualStreamMode 的具体设置，接收端调用该方法分为以下几种情况：
  ///  SDK 默认在发送端开启小流自适应模式 (autoSimulcastStream)，即：发送端仅发送大流，仅主播身份的接收端可以调用该方法发起小流申请，发送端收到申请后开始自动发送小流，此时频道内所有用户均可调用该方法切换到小流订阅模式。
  ///  当发送端调用 setDualStreamMode 并将 mode 设置为 disableSimulcastStream （始终不发送小流），则调用该方法不生效。
  ///  当发送端调用 setDualStreamMode 并将 mode 设置为 enableSimulcastStream （始终发送小流），则主播或观众身份的接收端均可调用该方法切换到小流订阅模式。 在接收视频小流时，SDK 会根据视频窗口的大小动态调整对应视频流的大小，以节约带宽和计算资源。视频小流默认的宽高比和视频大流的宽高比一致。根据当前大流的宽高比，系统会自动分配小流的分辨率、帧率及码率。 如果你既调用了该方法，也调用了 setRemoteVideoStreamType ，则 SDK 以 setRemoteVideoStreamType 中的设置为准。
  ///
  /// * [streamType] 默认订阅的视频流类型: VideoStreamType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteDefaultVideoStreamType(VideoStreamType streamType);

  /// 取消或恢复订阅指定远端用户的视频流。
  ///
  /// * [uid] 指定用户的用户 ID。
  /// * [mute] 是否取消订阅指定远端用户的视频流。 true : 取消订阅指定用户的视频流。 false : （默认）订阅指定用户的视频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteRemoteVideoStream({required int uid, required bool mute});

  /// 设置订阅的视频流类型。
  ///
  /// 取决于发送端的默认行为和调用 setDualStreamMode 的具体设置，接收端调用该方法分为以下几种情况：
  ///  SDK 默认在发送端开启小流自适应模式 (autoSimulcastStream)，即：发送端仅发送大流，仅主播身份的接收端可以调用该方法发起小流申请，发送端收到申请后开始自动发送小流，此时频道内所有用户均可调用该方法切换到小流订阅模式。
  ///  当发送端调用 setDualStreamMode 并将 mode 设置为 disableSimulcastStream （始终不发送小流），则调用该方法不生效。
  ///  当发送端调用 setDualStreamMode 并将 mode 设置为 enableSimulcastStream （始终发送小流），则主播或观众身份的接收端均可调用该方法切换到小流订阅模式。 在接收视频小流时，SDK 会根据视频窗口的大小动态调整对应视频流的大小，以节约带宽和计算资源。视频小流默认的宽高比和视频大流的宽高比一致。根据当前大流的宽高比，系统会自动分配小流的分辨率、帧率及码率。
  ///  该方法在加入频道前后都能调用。
  ///  如果既调用了该方法，也调用了 setRemoteDefaultVideoStreamType ，则 SDK 以该方法中的设置为准。
  ///
  /// * [uid] 用户 ID。
  /// * [streamType] 视频流类型: VideoStreamType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteVideoStreamType(
      {required int uid, required VideoStreamType streamType});

  /// 设置远端视频流的订阅选项。
  ///
  /// 当远端发送双流时，可调用此方法来设置远端视频流的订阅选项。SDK 对远端视频流的默认订阅行为取决于注册的视频观测器类型：
  ///  如果注册的是 VideoFrameObserver 观测器，则默认订阅原始数据和编码后的数据。
  ///  如果注册的是 VideoEncodedFrameObserver 观测器，则默认仅订阅编码后的数据。
  ///  如果注册了两种观测器，则默认跟随后注册的视频观测器。举例来说，如果后注册的是 VideoFrameObserver 观测器，则默认订阅原始数据和编码后的数据。 如果你想修改以上默认行为，或者想针对不同 uid 设置不同的订阅选项，可调用该方法设置。
  ///
  /// * [uid] 远端用户 ID。
  /// * [options] 视频流的订阅设置，详见 VideoSubscriptionOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteVideoSubscriptionOptions(
      {required int uid, required VideoSubscriptionOptions options});

  /// 设置音频订阅黑名单。
  ///
  /// 你可以调用该方法指定不订阅的音频流。
  ///  该方法在加入频道前后均可调用。
  ///  音频订阅黑名单不受 muteRemoteAudioStream 、 muteAllRemoteAudioStreams 以及 ChannelMediaOptions 中的 autoSubscribeAudio 影响。
  ///  设置订阅黑名单后，如果离开当前频道后再重新加入频道，黑名单依然生效。
  ///  如果某个用户同时在音频订阅黑名单和白名单中，仅订阅黑名单生效。
  ///
  /// * [uidList] 订阅黑名单的用户 ID 列表。
  /// 如果你想指定不订阅某一发流用户的音频流，将该用户的 ID 加入此列表中。如果你想要将某一用户从订阅黑名单中移除，需要重新调用 setSubscribeAudioBlocklist 方法更新订阅黑名单的用户 ID 列表，使其不包含你想移除的用户的 uid 。
  /// * [uidNumber] 黑名单用户 ID 列表中的用户数量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setSubscribeAudioBlocklist(
      {required List<int> uidList, required int uidNumber});

  /// 设置音频订阅白名单。
  ///
  /// 你可以调用该方法指定想要订阅的音频流。
  ///  该方法在加入频道前后均可调用。
  ///  音频订阅白名单不受 muteRemoteAudioStream 、 muteAllRemoteAudioStreams 以及 ChannelMediaOptions 中的 autoSubscribeAudio 的影响。
  ///  设置订阅白名单后，如果离开当前频道后再重新加入频道，白名单依然生效。
  ///  如果某个用户同时在音频订阅黑名单和白名单中，仅订阅黑名单生效。
  ///
  /// * [uidList] 音频订阅白名单的用户 ID 列表。
  /// 如果你想指定订阅某一发流用户的音频流，将该用户的 ID 加入此列表中。如果你想要将某一用户从订阅白名单中移除，需要重新调用 setSubscribeAudioAllowlist 方法更新音频订阅白名单的用户 ID 列表，使其不包含你想移除的用户的 uid 。
  /// * [uidNumber] 白名单用户 ID 列表中的用户数量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setSubscribeAudioAllowlist(
      {required List<int> uidList, required int uidNumber});

  /// 设置视频订阅黑名单。
  ///
  /// 你可以调用该方法指定不订阅的视频流。
  ///  该方法在加入频道前后均可调用。
  ///  视频订阅黑名单不受 muteRemoteVideoStream 、 muteAllRemoteVideoStreams 以及 ChannelMediaOptions 中的 autoSubscribeVideo 的影响。
  ///  设置订阅黑名单后，如果离开当前频道后再重新加入频道，黑名单依然生效。
  ///  如果某个用户同时在音频订阅黑名单和白名单中，仅订阅黑名单生效。
  ///
  /// * [uidList] 视频订阅黑名单的用户 ID 列表。
  /// 如果你想指定不订阅某一发流用户的视频流，将该用户的 ID 加入此列表中。如果你想要将某一用户从订阅黑名单中移除，需要重新调用 setSubscribeVideoBlocklist 方法更新订阅黑名单的用户 ID 列表，使其不包含你想移除的用户的 uid 。
  /// * [uidNumber] 黑名单用户 ID 列表中的用户数量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setSubscribeVideoBlocklist(
      {required List<int> uidList, required int uidNumber});

  /// 设置视频订阅白名单。
  ///
  /// 你可以调用该方法指定想要订阅的视频流。
  ///  该方法在加入频道前后均可调用。
  ///  视频订阅白名单不受 muteRemoteVideoStream 、 muteAllRemoteVideoStreams 以及 ChannelMediaOptions 中的 autoSubscribeVideo 的影响。
  ///  设置订阅白名单后，如果离开当前频道后再重新加入频道，白名单依然生效。
  ///  如果某个用户同时在音频订阅黑名单和白名单中，仅订阅黑名单生效。
  ///
  /// * [uidList] 视频订阅白名单的用户 ID 列表。
  /// 如果你想指定仅订阅某一发流用户的视频流，将该用户的 ID 加入此列表中。如果你想要将某一用户从订阅白名单中移除，需要重新调用 setSubscribeVideoAllowlist 方法更新音频订阅白名单的用户 ID 列表，使其不包含你想移除的用户的 uid 。
  /// * [uidNumber] 白名单用户 ID 列表中的用户数量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setSubscribeVideoAllowlist(
      {required List<int> uidList, required int uidNumber});

  /// 启用用户音量提示。
  ///
  /// 该方法允许 SDK 定期向 App 报告本地发流用户和瞬时音量最高的远端用户（最多 3 位）的音量相关信息。
  ///
  /// * [interval] 指定音量提示的时间间隔：
  ///  ≤ 0: 禁用音量提示功能。
  ///  > 0: 返回音量提示的间隔，单位为毫秒。建议设置到大于 100 毫秒，不得小于 10 毫秒，否则会收不到 onAudioVolumeIndication 回调。
  /// * [smooth] 平滑系数，指定音量提示的灵敏度。取值范围为 [0,10]，建议值为 3。数字越大，波动越灵敏；数字越小，波动越平滑。
  /// * [reportVad] true ：开启本地人声检测功能。开启后， onAudioVolumeIndication 回调的 vad 参数会报告是否在本地检测到人声。 false ：（默认）关闭本地人声检测功能。除引擎自动进行本地人声检测的场景外， onAudioVolumeIndication 回调的 vad 参数不会报告是否在本地检测到人声。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableAudioVolumeIndication(
      {required int interval, required int smooth, required bool reportVad});

  /// 开始客户端录音并进行录音配置。
  ///
  /// SDK 支持通话过程中在客户端进行录音。调用该方法后，你可以录制频道内用户的音频，并得到一个录音文件。录音文件仅支持下列格式：
  ///  WAV: 音质保真度较高，文件较大。例如，采样率为 32000 Hz，录音时长为 10 分钟的文件大小约为 73 M。
  ///  AAC: 音质保真度较低，文件较小。例如，采样率为 32000 Hz，录音音质为 audioRecordingQualityMedium，录音时长为 10 分钟的文件大小约为 2 M。 用户离开频道后，录音会自动停止。
  ///
  /// * [config] 录音配置。详见 AudioRecordingConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startAudioRecording(AudioRecordingConfiguration config);

  /// 注册音频编码数据观测器。
  ///
  /// 请在加入频道后调用该方法。
  ///  由于该方法和 startAudioRecording 都会设置音频内容和音质，不建议该方法和 startAudioRecording 一起使用。否则，只有后调用的方法会生效。
  ///
  /// * [config] 编码后音频的观测器设置。详见 AudioEncodedFrameObserverConfig 。
  /// * [observer] 编码后音频的观测器。详见 AudioEncodedFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerAudioEncodedFrameObserver(
      {required AudioEncodedFrameObserverConfig config,
      required AudioEncodedFrameObserver observer});

  /// 停止客户端录音。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopAudioRecording();

  /// @nodoc
  Future<MediaPlayer?> createMediaPlayer();

  /// 销毁媒体播放器。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyMediaPlayer(MediaPlayer mediaPlayer);

  /// 创建音视频录制对象。
  ///
  /// 在开始音视频流录制前，你需要调用该方法创建一个音视频录制对象。SDK 支持录制本地或远端用户的多个音视频流，你可以多次调用该方法创建录制对象，并通过 info 参数指定需要录制的频道名称和发流的用户 ID。
  /// 成功创建后，你需要调用 setMediaRecorderObserver 注册录制对象的观测器来监听录制的相关回调，然后再调用 startRecording 开始录制。
  ///
  /// * [info] 需要录制的音视频流相关信息，详见 RecorderStreamInfo 。
  ///
  /// Returns
  /// 方法调用成功：返回一个 MediaRecorder 对象。
  ///  方法调用失败：返回空指针。
  Future<MediaRecorder?> createMediaRecorder(RecorderStreamInfo info);

  /// 销毁音视频录制对象。
  ///
  /// 当你不需要再录制音视频流时，可以调用该方法销毁对应的音视频录制对象。如果你正在录制，请先调用 stopRecording 停止录制，再调用该方法来销毁音视频录制对象。
  ///
  /// * [mediaRecorder] 待销毁的 MediaRecorder 对象。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyMediaRecorder(MediaRecorder mediaRecorder);

  /// 开始播放音乐文件。
  ///
  /// 该方法支持播放的音频文件格式见 [RTC SDK 支持播放哪些格式的音频文件](https://doc.shengwang.cn/faq/general-product-inquiry/audio-format)。如果本地音乐文件不存在、文件格式不支持或无法访问在线音乐文件 URL，则 SDK 会报告 audioMixingReasonCanNotOpen。
  ///  使用该方法播放时长较短的音效文件可能会导致播放失败。如需播放音效文件，建议使用 playEffect 。
  ///  如需多次调用该方法，请确保调用间隔大于 500 ms。
  ///  在 Android 平台上调用该方法时，请注意如下事项：
  ///  请确保使用 Android 4.2 或以上设备，且 API Level 不低于 16。
  ///  如果播放的是在线音乐文件，建议不要使用重定向地址。重定向地址在某些机型上可能无法打开。
  ///  如果在模拟器上调用该方法，则请确保音乐文件在 /sdcard/ 目录下，且格式为 MP3。
  ///
  /// * [filePath] 文件路径：
  ///  Android: 文件路径，需精确到文件名及后缀。支持在线文件的 URL 地址，本地文件的 URI 地址、绝对路径或以 /assets/ 开头的路径。通过绝对路径访问本地文件可能会遇到权限问题，建议使用 URI 地址访问本地文件。例如 content://com.android.providers.media.documents/document/audio%3A14441 。
  ///  Windows: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 C:\music\audio.mp4 。
  ///  iOS 或 macOS: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 /var/mobile/Containers/Data/audio.mp4 。
  /// * [loopback] 是否只在本地播放音乐文件： true ：只在本地播放音乐文件，只有本地用户能听到音乐。 false ：将本地播放的音乐文件发布至远端，本地用户和远端用户都能听到音乐。
  /// * [cycle] 音乐文件的播放次数。
  ///  > 0: 播放次数。例如，1 表示播放 1 次。
  ///  -1: 无限循环播放。
  /// * [startPos] 音乐文件的播放位置，单位为毫秒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startAudioMixing(
      {required String filePath,
      required bool loopback,
      required int cycle,
      int startPos = 0});

  /// 停止播放音乐文件。
  ///
  /// 当你调用 startAudioMixing 方法播放音乐文件后，如需停止播放，可调用该方法。如果仅需暂停播放，请调用 pauseAudioMixing 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopAudioMixing();

  /// 暂停播放音乐文件。
  ///
  /// 当你调用 startAudioMixing 方法播放音乐文件后，如需暂停播放，请调用该方法。如果你需要停止播放，请调用 stopAudioMixing 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pauseAudioMixing();

  /// 恢复播放音乐文件。
  ///
  /// 当你调用 pauseAudioMixing 暂停播放音乐文件后，如需恢复播放，请调用该方法。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> resumeAudioMixing();

  /// 指定当前音乐文件的播放音轨。
  ///
  /// 获取音乐文件的音轨数量后，你可以调用该方法指定任一音轨进行播放。例如，如果一个多音轨文件的不同音轨存放了不同语言的歌曲，则你可以调用该方法设置音乐文件的播放语言。
  ///  该方法支持的音频文件格式见 [RTC SDK 支持播放哪些格式的音频文件？](https://doc.shengwang.cn/faq/general-product-inquiry/audio-format)。
  ///  你需要在调用 startAudioMixing 并收到 onAudioMixingStateChanged(audioMixingStatePlaying) 回调后调用该方法。
  ///
  /// * [index] 指定的播放音轨。取值范围应大于等于 0 且小于 getAudioTrackCount 的返回值。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> selectAudioTrack(int index);

  /// 获取当前音乐文件的音轨索引。
  ///
  /// 你需要在调用 startAudioMixing 并收到 onAudioMixingStateChanged(audioMixingStatePlaying) 回调后调用该方法。
  ///
  /// Returns
  /// 方法调用成功时，返回当前音乐文件的音轨索引。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getAudioTrackCount();

  /// 调节音乐文件的播放音量。
  ///
  /// 该方法调节混音音乐文件在本端和远端的播放音量大小。 调用该方法不会影响 playEffect 方法中设置的音效文件播放音量。
  ///
  /// * [volume] 音乐文件音量范围为 0~100。100 （默认值）为原始文件音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustAudioMixingVolume(int volume);

  /// 调节音乐文件远端播放音量。
  ///
  /// 该方法调节混音音乐文件在远端的播放音量大小。
  ///
  /// * [volume] 音乐文件音量。取值范围为 [0,100]，100 （默认值）为原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustAudioMixingPublishVolume(int volume);

  /// 获取音乐文件的远端播放音量。
  ///
  /// 该接口可以方便开发者排查音量相关问题。 你需要在调用 startAudioMixing 并收到 onAudioMixingStateChanged(audioMixingStatePlaying) 回调后调用该方法。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功则返回音量值，范围为 [0,100]。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getAudioMixingPublishVolume();

  /// 调节音乐文件在本地播放的音量。
  ///
  /// * [volume] 音乐文件音量。取值范围为 [0,100]，100 （默认值）为原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustAudioMixingPlayoutVolume(int volume);

  /// 获取音乐文件的本地播放音量。
  ///
  /// 你可以调用该方法获取混音的音乐文件的本地播放音量，方便排查音量相关问题。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功则返回音量值，范围为 [0,100]。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getAudioMixingPlayoutVolume();

  /// 获取音乐文件总时长。
  ///
  /// 该方法获取音乐文件总时长，单位为毫秒。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功则返回音乐文件时长。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getAudioMixingDuration();

  /// 获取音乐文件的播放进度。
  ///
  /// 该方法获取当前音乐文件播放进度，单位为毫秒。
  ///  你需要在调用 startAudioMixing 并收到 onAudioMixingStateChanged(audioMixingStatePlaying) 回调后调用该方法。
  ///  如需多次调用 getAudioMixingCurrentPosition ，请确保调用间隔大于 500 ms。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功，返回当前音乐文件播放进度（ms）。0 表示当前音乐文件未开始播放。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getAudioMixingCurrentPosition();

  /// 设置音乐文件的播放位置。
  ///
  /// 该方法可以设置音频文件的播放位置，这样你可以根据实际情况播放文件，而非从头到尾播放整个文件。
  ///
  /// * [pos] 整数。进度条位置，单位为毫秒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioMixingPosition(int pos);

  /// 设置当前音频文件的声道模式。
  ///
  /// 在双声道音频文件中，左声道和右声道可以存储不同的音频数据。根据实际需要，你可以设置声道模式为原始模式、左声道模式、右声道模式或混合模式。 该方法仅适用于双声道的音频文件。
  ///
  /// * [mode] 声道模式。详见 AudioMixingDualMonoMode 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioMixingDualMonoMode(AudioMixingDualMonoMode mode);

  /// 调整本地播放的音乐文件的音调。
  ///
  /// 本地人声和播放的音乐文件混音时，调用该方法可以仅调节音乐文件的音调。
  ///
  /// * [pitch] 按半音音阶调整本地播放的音乐文件的音调，默认值为 0，即不调整音调。取值范围为 [-12,12]，每相邻两个值的音高距离相差半音。取值的绝对值越大，音调升高或降低得越多。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioMixingPitch(int pitch);

  /// 设置当前音乐文件的播放速度。
  ///
  /// 你需要在调用 startAudioMixing 并收到 onAudioMixingStateChanged 回调报告播放状态为 audioMixingStatePlaying 后再调用该方法。
  ///
  /// * [speed] 音乐文件的播放速度。推荐取值范围为 [50,400]，其中：
  ///  50: 0.5 倍速。
  ///  100: 原始速度。
  ///  400: 4 倍速。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  Future<void> setAudioMixingPlaybackSpeed(int speed);

  /// 获取音效文件的播放音量。
  ///
  /// 音量范围为 0~100。100 （默认值）为原始文件音量。 该方法需要在 playEffect 后调用。
  ///
  /// Returns
  /// 音效文件的音量。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getEffectsVolume();

  /// 设置音效文件的播放音量。
  ///
  /// * [volume] 播放音量。取值范围为 [0,100]。默认值为 100，表示原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setEffectsVolume(int volume);

  /// 将音效文件加载至内存。
  ///
  /// 为保证通信畅通，请注意控制预加载音效文件的大小。
  /// 该方法支持的预加载音频文件的格式见 [RTC SDK 支持播放哪些格式的音频文件](https://doc.shengwang.cn/faq/general-product-inquiry/audio-format)。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。
  /// * [filePath] 文件路径：
  ///  Android: 文件路径，需精确到文件名及后缀。支持在线文件的 URL 地址，本地文件的 URI 地址、绝对路径或以 /assets/ 开头的路径。通过绝对路径访问本地文件可能会遇到权限问题，建议使用 URI 地址访问本地文件。例如 content://com.android.providers.media.documents/document/audio%3A14441 。
  ///  Windows: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 C:\music\audio.mp4 。
  ///  iOS 或 macOS: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 /var/mobile/Containers/Data/audio.mp4 。
  /// * [startPos] 音效文件加载的起始位置，单位为毫秒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> preloadEffect(
      {required int soundId, required String filePath, int startPos = 0});

  /// 播放指定的本地或在线音效文件。
  ///
  /// 你可以多次调用该方法，传入不同的 soundID 和 filePath ，同时播放多个音效文件。为获得最佳用户体验，建议同时播放的音效文件不超过 3 个。 如果你需要播放在线音效文件，声网建议先将在线音效文件缓存到本地设备，调用 preloadEffect 将缓存的音效文件预加载到内存中，然后再调用此方法播放音效。否则，可能出现因在线音效文件加载超时、加载失败而导致的播放失败和无声的问题。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。 如果你已通过 preloadEffect 将音效加载至内存，请确保该参数与 preloadEffect 中设置的 soundId 相同。
  /// * [filePath] 播放文件的地址，支持在线文件的 URL 地址、播放文件的绝对路径，需精确到文件名及后缀。支持的音频格式包括 MP3、AAC、M4A、MP4、WAV、3GP 等。 如果你已通过 preloadEffect 将音效加载至内存，请确保该参数与 preloadEffect 中设置的 filePath 相同。
  /// * [loopCount] 音效循环播放的次数。
  ///  ≥ 0: 循环播放次数。例如，1 表示循环播放 1 次，即总计播放 2 次。
  ///  -1: 无限循环播放。
  /// * [pitch] 音效的音调，取值范围为 [0.5,2.0]。默认值为 1.0，表示原始音调。取值越小，则音调越低。
  /// * [pan] 音效的空间位置。取值范围为 [-1.0,1.0]，例如：
  ///  -1.0：音效出现在左边
  ///  0.0：音效出现在正前方
  ///  1.0：音效出现在右边
  /// * [gain] 音效的音量。取值范围为 [0.0,100.0]。默认值为 100.0，表示原始音量。取值越小，则音量越低。
  /// * [publish] 是否将音效发布至远端： true : 将音效发布至远端。本地用户和远端用户都能听到音效。 false : 不将音效发布至远端。只有本地用户能听到音效。
  /// * [startPos] 音效文件的播放位置，单位为毫秒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> playEffect(
      {required int soundId,
      required String filePath,
      required int loopCount,
      required double pitch,
      required double pan,
      required int gain,
      bool publish = false,
      int startPos = 0});

  /// 播放所有音效文件。
  ///
  /// 多次调用 preloadEffect 预加载多个音效文件后，你可以调用本方法播放所有预加载的音效文件。
  ///
  /// * [loopCount] 音效文件循环播放的次数：
  ///  -1: 无限循环播放音效文件，直至调用 stopEffect 或 stopAllEffects 后停止。
  ///  0: 播放音效文件一次。
  ///  1: 播放音效文件两次。
  /// * [pitch] 音效的音调。取值范围为 [0.5,2.0]。默认值为 1.0，代表原始音调。取值越小，则音调越低。
  /// * [pan] 音效的空间位置。取值范围为 [-1.0,1.0]:
  ///  -1.0: 音效出现在左边。
  ///  0: 音效出现在正前边。
  ///  1.0: 音效出现在右边。
  /// * [gain] 音效的音量。取值范围为 [0,100]。100 为默认值，代表原始音量。取值越小，则音量越低。
  /// * [publish] 是否将音效发布到远端： true : 将音效发布到远端。本地和远端用户都能听到该音效。 false : （默认）不将音效发布到远端。只能本地用户能听到该音效。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> playAllEffects(
      {required int loopCount,
      required double pitch,
      required double pan,
      required int gain,
      bool publish = false});

  /// 获取指定音效文件的播放音量。
  ///
  /// * [soundId] 音效文件的 ID。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功，返回播放音量。音量范围为 [0,100]。100 为原始音量。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getVolumeOfEffect(int soundId);

  /// 设置指定音效文件的播放音量。
  ///
  /// * [soundId] 指定音效的 ID。每个音效均有唯一的 ID。
  /// * [volume] 播放音量。取值范围为 [0,100]。默认值为 100，表示原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVolumeOfEffect({required int soundId, required int volume});

  /// 暂停音效文件播放。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pauseEffect(int soundId);

  /// 暂停所有音效文件播放。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pauseAllEffects();

  /// 恢复播放指定音效文件。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> resumeEffect(int soundId);

  /// 恢复播放所有音效文件。
  ///
  /// 当你调用 pauseAllEffects 暂停播放所有音效文件后，如需恢复播放，可以调用该方法。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> resumeAllEffects();

  /// 停止播放指定音效文件。
  ///
  /// 当你不需要再播放某一音效文件时，可以调用该方法停止播放。如果你仅需暂停播放，请调用 pauseEffect 。
  ///
  /// * [soundId] 指定音效文件的 ID。每个音效文件均有唯一的 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopEffect(int soundId);

  /// 停止播放所有音效文件。
  ///
  /// 当你不需要再播放音效文件时，可以调用该方法停止播放。如果你仅需暂停播放，请调用 pauseAllEffects 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopAllEffects();

  /// 从内存释放某个预加载的音效文件。
  ///
  /// 调用 preloadEffect 将音效文件加载至内存后，如需释放该音效文件，请调用该方法。
  ///
  /// * [soundId] 指定音效文件的 ID。每个音效文件均有唯一的 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> unloadEffect(int soundId);

  /// 从内存释放所有预加载音效文件。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> unloadAllEffects();

  /// 获取指定音效文件总时长。
  ///
  /// 该方法需要在加入频道后调用。
  ///
  /// * [filePath] 文件路径：
  ///  Android: 文件路径，需精确到文件名及后缀。支持在线文件的 URL 地址，本地文件的 URI 地址、绝对路径或以 /assets/ 开头的路径。通过绝对路径访问本地文件可能会遇到权限问题，建议使用 URI 地址访问本地文件。例如 content://com.android.providers.media.documents/document/audio%3A14441 。
  ///  Windows: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 C:\music\audio.mp4 。
  ///  iOS 或 macOS: 音频文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 /var/mobile/Containers/Data/audio.mp4 。
  ///
  /// Returns
  /// 方法调用成功，返回指定音效文件时长（毫秒）。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getEffectDuration(String filePath);

  /// 设置指定音效文件的播放位置。
  ///
  /// 成功设置后，本地音效文件会在指定位置开始播放。 该方法需要在 playEffect 后调用。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。
  /// * [pos] 音效文件的播放位置，单位为毫秒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setEffectPosition({required int soundId, required int pos});

  /// 获取指定音效文件的播放进度。
  ///
  /// 该方法需要在 playEffect 后调用。
  ///
  /// * [soundId] 音效的 ID。每个音效的 ID 具有唯一性。
  ///
  /// Returns
  /// 方法调用成功，返回指定音效文件的播放进度（毫秒）。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getEffectCurrentPosition(int soundId);

  /// 开启/关闭远端用户的语音立体声。
  ///
  /// 如果想调用 setRemoteVoicePosition 实现听声辨位的功能，请确保在加入频道前调用该方法开启远端用户的语音立体声。
  ///
  /// * [enabled] 是否开启远端用户语音立体声： true : 开启语音立体声。 false : 关闭语音立体声。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableSoundPositionIndication(bool enabled);

  /// 设置远端用户声音的 2D 位置，即水平面位置。
  ///
  /// 设置远端用户声音的 2D 位置和音量，方便本地用户听声辨位。
  /// 通过调用该接口设置远端用户声音出现的位置，左右声道的声音差异会产生声音的方位感，从而判断出远端用户的实时位置。在多人在线游戏场景，如吃鸡游戏中，该方法能有效增加游戏角色的方位感，模拟真实场景。
  ///  使用该方法需要在加入频道前调用 enableSoundPositionIndication 开启远端用户的语音立体声。
  ///  为获得最佳听觉体验，建议使用该方法时使用有线耳机。
  ///  该方法需要在加入频道后调用。
  ///
  /// * [uid] 远端用户的 ID
  /// * [pan] 设置远端用户声音的 2D 位置，取值范围为 [-1.0,1.0]:
  ///  （默认）0.0: 声音出现在正前方。
  ///  -1.0: 声音出现在左边。
  ///  1.0: 声音出现在右边。
  /// * [gain] 设置远端用户声音的音量，取值范围为 [0.0,100.0]，默认值为 100.0，表示该用户的原始音量。取值越小，则音量越低。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteVoicePosition(
      {required int uid, required double pan, required double gain});

  /// 开启或关闭空间音频。
  ///
  /// 开启空间音频后，你可以调用 setRemoteUserSpatialAudioParams 设置远端用户的空间音频参数。
  ///  该方法在加入频道前后均可调用。
  ///  该方法依赖于空间音频动态库 libagora_spatial_audio_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [enabled] 是否开启空间音频： true : 开启空间音频。 false : 关闭空间音频。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableSpatialAudio(bool enabled);

  /// 设置远端用户的空间音频参数。
  ///
  /// 该方法需要在 enableSpatialAudio 后调用。成功设置远端用户的空间音频参数后，本地用户听远端用户会有空间感。
  ///
  /// * [uid] 用户 ID。需与用户加入频道时填写的用户 ID 一致。
  /// * [params] 空间音频参数。详见 SpatialAudioParams 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteUserSpatialAudioParams(
      {required int uid, required SpatialAudioParams params});

  /// 设置预设的美声效果。
  ///
  /// 调用该方法可以为本地发流用户设置预设的人声美化效果。设置美声效果后，频道内所有用户都能听到该效果。根据不同的场景，你可以为用户设置不同的美声效果。
  ///  请勿将 setAudioProfile 的 profile 参数设置为 audioProfileSpeechStandard (1) 或 audioProfileIot (6)，否则该方法不生效。
  ///  该方法对人声的处理效果最佳，不建议调用该方法处理含音乐的音频数据。
  ///  调用 setVoiceBeautifierPreset ，不建议调用以下方法，否则 setVoiceBeautifierPreset 设置的效果会被覆盖： setAudioEffectPreset setAudioEffectParameters setLocalVoicePitch setLocalVoiceEqualization setLocalVoiceReverb setVoiceBeautifierParameters setVoiceConversionPreset
  ///  该方法依赖于美声动态库 libagora_audio_beauty_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [preset] 预设的美声效果选项，详见 VoiceBeautifierPreset 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVoiceBeautifierPreset(VoiceBeautifierPreset preset);

  /// 设置 SDK 预设的人声音效。
  ///
  /// 调用该方法可以为本地发流用户设置 SDK 预设的人声音效，且不会改变原声的性别特征。设置音效后，频道内所有用户都能听到该效果。
  ///  请勿将 setAudioProfile 的 profile 参数设置为 audioProfileSpeechStandard (1) 或 audioProfileIot (6)，否则该方法不生效。
  ///  如果调用 setAudioEffectPreset 并设置除 roomAcoustics3dVoice 或 pitchCorrection 外的枚举，请勿再调用 setAudioEffectParameters ，否则 setAudioEffectPreset 设置的效果会被覆盖。
  ///  调用 setAudioEffectPreset 后，不建议调用以下方法，否则 setAudioEffectPreset 设置的效果会被覆盖： setVoiceBeautifierPreset setLocalVoicePitch setLocalVoiceEqualization setLocalVoiceReverb setVoiceBeautifierParameters setVoiceConversionPreset
  ///  该方法依赖于美声动态库 libagora_audio_beauty_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [preset] 预设的音效选项，详见 AudioEffectPreset 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioEffectPreset(AudioEffectPreset preset);

  /// 设置预设的变声效果。
  ///
  /// 调用该方法可以为本地发流用户设置 SDK 预设的变声效果。设置变声效果后，频道内所有用户都能听到该效果。根据不同的场景，你可以为用户设置不同的变声效果。
  ///  请勿将 setAudioProfile 的 profile 参数设置为 audioProfileSpeechStandard (1) 或 audioProfileIot (6)，否则该方法不生效。
  ///  该方法对人声的处理效果最佳，不建议调用该方法处理含音乐的音频数据。
  ///  调用 setVoiceConversionPreset 后，不建议调用以下方法，否则 setVoiceConversionPreset 设置的效果会被覆盖： setAudioEffectPreset setAudioEffectParameters setVoiceBeautifierPreset setVoiceBeautifierParameters setLocalVoicePitch setLocalVoiceFormant setLocalVoiceEqualization setLocalVoiceReverb
  ///  该方法依赖于美声动态库 libagora_audio_beauty_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [preset] 预设的变声效果选项: VoiceConversionPreset 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVoiceConversionPreset(VoiceConversionPreset preset);

  /// 设置 SDK 预设人声音效的参数。
  ///
  /// 调用该方法可以对本地发流用户进行如下设置：
  ///  3D 人声音效：设置 3D 人声音效的环绕周期。
  ///  电音音效：设置电音音效的基础调式和主音音高。为方便用户自行调节电音音效，建议你将基础调式和主音音高配置选项与应用的 UI 元素绑定。 设置后，频道内所有用户都能听到该效果。 为获取更好的人声效果，建议你在调用该方法前进行以下操作：
  ///  调用 setAudioScenario 将音频场景设为高音质场景，即 audioScenarioGameStreaming (3)。
  ///  调用 setAudioProfile 将 profile 设为 audioProfileMusicHighQuality (4) 或 audioProfileMusicHighQualityStereo (5)。
  ///  该方法在加入频道前后都能调用。
  ///  请勿将 setAudioProfile 的 profile 参数设置为 audioProfileSpeechStandard (1) 或 audioProfileIot (6)，否则该方法不生效。
  ///  该方法对人声的处理效果最佳，不建议调用该方法处理含音乐的音频数据。
  ///  调用 setAudioEffectParameters 后，不建议调用以下方法，否则 setAudioEffectParameters 设置的效果会被覆盖： setAudioEffectPreset setVoiceBeautifierPreset setLocalVoicePitch setLocalVoiceEqualization setLocalVoiceReverb setVoiceBeautifierParameters setVoiceConversionPreset
  ///  该方法依赖于美声动态库 libagora_audio_beauty_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [preset] SDK 预设的音效，支持以下设置： roomAcoustics3dVoice ，3D 人声音效。
  ///  你需要在使用该枚举前将 setAudioProfile 的 profile 参数设置 为 audioProfileMusicStandardStereo (3) 或 audioProfileMusicHighQualityStereo (5)，否则该枚举设置无效。
  ///  启用 3D 人声后，用户需要使用支持双声道的音频播放设备才能听到预期效果。 pitchCorrection ，电音音效。
  /// * [param1] 如果 preset 设为 roomAcoustics3dVoice ，则 param1 表示 3D 人声音效的环绕周期。取值范围为 [1,60]，单位为秒。默认值为 10，表示人声会 10 秒环绕 360 度。
  ///  如果 preset 设为 pitchCorrection ，则 param1 表示电音音效的基础调式： 1 : （默认）自然大调。 2 : 自然小调。 3 : 和风小调。
  /// * [param2] 如果 preset 设为 roomAcoustics3dVoice ，你需要将 param2 设置为 0 。
  ///  如果 preset 设为 pitchCorrection ，则 param2 表示电音音效的主音音高： 1 : A 2 : A# 3 : B 4 : (Default) C 5 : C# 6 : D 7 : D# 8 : E 9 : F 10 : F# 11 : G 12 : G#
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioEffectParameters(
      {required AudioEffectPreset preset,
      required int param1,
      required int param2});

  /// 设置预设美声效果的参数。
  ///
  /// 调用该方法可以设置歌唱美声效果的性别特征和混响效果。该方法对本地发流用户进行设置。设置后，频道内所有用户都能听到该效果。
  /// 为获取更好的人声效果，建议你在调用该方法前进行以下操作：
  ///  调用 setAudioScenario 将音频场景设为高音质场景，即 audioScenarioGameStreaming (3)。
  ///  调用 setAudioProfile 将 profile 设为 audioProfileMusicHighQuality (4) 或 audioProfileMusicHighQualityStereo (5)。
  ///  该方法在加入频道前后都能调用。
  ///  请勿将 setAudioProfile 的 profile 参数设置为 audioProfileSpeechStandard (1) 或 audioProfileIot (6)，否则该方法不生效。
  ///  该方法对人声的处理效果最佳，不建议调用该方法处理含音乐的音频数据。
  ///  调用 setVoiceBeautifierParameters ，不建议调用以下方法，否则 setVoiceBeautifierParameters 设置的效果会被覆盖： setAudioEffectPreset setAudioEffectParameters setVoiceBeautifierPreset setLocalVoicePitch setLocalVoiceEqualization setLocalVoiceReverb setVoiceConversionPreset
  ///  该方法依赖于美声动态库 libagora_audio_beauty_extension.dll ，如果删除该动态库会导致无法正常开启该功能。
  ///
  /// * [preset] 预设的音效： SINGING_BEAUTIFIER : 歌唱美声。
  /// * [param1] 歌声的性别特征： 1 : 男声。 2 : 女声。
  /// * [param2] 歌声的混响效果： 1 : 歌声在小房间的混响效果。 2 : 歌声在大房间的混响效果。 3 : 歌声在大厅的混响效果。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setVoiceBeautifierParameters(
      {required VoiceBeautifierPreset preset,
      required int param1,
      required int param2});

  /// @nodoc
  Future<void> setVoiceConversionParameters(
      {required VoiceConversionPreset preset,
      required int param1,
      required int param2});

  /// 设置本地语音音调。
  ///
  /// * [pitch] 语音频率。可以 [0.5,2.0] 范围内设置。取值越小，则音调越低。默认值为 1.0，表示不需要修改音调。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalVoicePitch(double pitch);

  /// 设置共振峰比率以改变语音的音色。
  ///
  /// 共振峰比率是影响声音音色的一个参数，共振峰比率取值越小声音会更低沉，取值越大声音会更尖锐。设置共振峰比率后，频道内所有用户都能听到该效果。如果你想要在调整音色的同时改变音调，声网推荐你搭配 setLocalVoicePitch 一起使用。
  ///
  /// * [formantRatio] 共振峰比率，取值范围为 [-1.0，1.0]。默认值为 0.0，即不改变原声的音色。 声网推荐的取值范围为 [-0.4，0.6] ，超出此范围外音效听感可能不佳。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalVoiceFormant(double formantRatio);

  /// 设置本地语音音效均衡。
  ///
  /// * [bandFrequency] 频谱子带索引。取值范围是 [0,9]，分别代表音效的 10 个频带。对应的中心频率为 [31，62，125，250，500，1k，2k，4k，8k，16k] Hz。详见 AudioEqualizationBandFrequency 。
  /// * [bandGain] 每个 band 的增益，单位是 dB，每一个值的范围是 [-15,15]，默认值为 0。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalVoiceEqualization(
      {required AudioEqualizationBandFrequency bandFrequency,
      required int bandGain});

  /// 设置本地音效混响。
  ///
  /// SDK 提供一个使用更为简便的方法 setAudioEffectPreset ，直接实现流行、R&B、KTV 等预置的混响效果。 该方法在加入频道前后都能调用。
  ///
  /// * [reverbKey] 混响音效 Key。该方法共有 5 个混响音效 Key，详见 AudioReverbType 。
  /// * [value] 各混响音效 Key 所对应的值。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalVoiceReverb(
      {required AudioReverbType reverbKey, required int value});

  /// 设置预设的耳机均衡效果。
  ///
  /// 该方法主要应用于空间音频场景下，你可以选择预设的耳机均衡器收听音频，以达到预期的音频体验。 如果你使用的耳机已经具备良好的均衡效果，调用该方法时可能不会获得明显的体验提升效果，甚至可能导致体验下降。
  ///
  /// * [preset] 预设的耳机均衡效果。详见 HeadphoneEqualizerPreset 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setHeadphoneEQPreset(HeadphoneEqualizerPreset preset);

  /// 设置耳机均衡器的低频和高频参数。
  ///
  /// 在空间音频场景下，如果在调用 setHeadphoneEQPreset 方法使用预设的耳机均衡效果后仍未达到预期，你可以通过调用该方法进一步调节耳机均衡效果。
  ///
  /// * [lowGain] 耳机均衡器的低频参数。取值范围为 [-10,10]，取值越大，声音越低沉。
  /// * [highGain] 耳机均衡器的高频参数。取值范围为 [-10,10]，取值越大，声音越尖锐。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setHeadphoneEQParameters(
      {required int lowGain, required int highGain});

  /// 开启或关闭 AI 调音器功能。
  ///
  /// AI 调音器功能支持美化音质，调整音色风格。
  ///
  /// * [enabled] 是否开启 AI 调音器功能： true ：开启 AI 调音器功能。 false ：（默认）关闭 AI 调音器功能。
  /// * [type] AI 调音器音效类型，详见 VoiceAiTunerType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableVoiceAITuner(
      {required bool enabled, required VoiceAiTunerType type});

  /// 设置日志文件
  ///
  /// 废弃 弃用： 该方法已废弃，请在调用 initialize 时通过 context 参数设置日志文件路径。 设置 SDK 的输出 log 文件。SDK 运行时产生的所有 log 将写入该文件。 App 必须保证指定的目录存在而且可写。
  ///
  /// * [filePath] 日志文件的完整路径。该日志文件为 UTF-8 编码。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLogFile(String filePath);

  /// 设置日志输出等级。
  ///
  /// 废弃 弃用： 请改用 initialize 中的 logConfig 。 该方法设置 SDK 的输出日志输出等级。不同的输出等级可以单独或组合使用。日志级别顺序依次为 logFilterOff 、 logFilterCritical 、 logFilterError 、 logFilterWarn 、 logFilterInfo 和 logFilterDebug 。
  /// 选择一个级别，你就可以看到在该级别之前所有级别的日志信息。
  /// 例如，你选择 logFilterWarn 级别，就可以看到在 logFilterCritical 、 logFilterError 和 logFilterWarn 级别的日志信息。
  ///
  /// * [filter] 日志过滤等级。详见 LogFilterType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLogFilter(LogFilterType filter);

  /// 设置 SDK 的日志输出级别。
  ///
  /// 废弃 弃用： 该方法已废弃，请在调用 initialize 时通过 context 参数设置日志输出级别。 选择一个级别，你就可以看到该级别的日志信息。
  ///
  /// * [level] 日志级别。详见 LogLevel 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLogLevel(LogLevel level);

  /// 设置 SDK 输出的日志文件的大小。
  ///
  /// 废弃 弃用： 该方法已废弃，请改用 initialize 中的 logConfig 参数设置日志文件大小。 默认情况下，SDK 会生成 5 个 SDK 日志文件和 5 个 API 调用日志文件，规则如下：
  ///  SDK 日志文件的名称分别为： agorasdk.log 、 agorasdk.1.log 、 agorasdk.2.log 、 agorasdk.3.log 、 agorasdk.4.log 。
  ///  API 调用日志文件的名称分别为： agoraapi.log 、 agoraapi.1.log 、 agoraapi.2.log 、 agoraapi.3.log 、 agoraapi.4.log 。
  ///  每个 SDK 日志文件的默认大小为 2,048 KB；API 调用日志文件的默认大小为 2,048 KB。日志文件均为 UTF-8 编码。
  ///  最新的日志永远写在 agorasdk.log 和 agoraapi.log 中。
  ///  当 agorasdk.log 写满后，SDK 会按照以下顺序对日志文件进行操作：
  ///  删除 agorasdk.4.log 文件（如有）。
  ///  将 agorasdk.3.log 重命名为 agorasdk.4.log 。
  ///  将 agorasdk.2.log 重命名为 agorasdk.3.log 。
  ///  将 agorasdk.1.log 重命名为 agorasdk.2.log 。
  ///  新建 agorasdk.log 文件。 agoraapi.log 文件的覆盖规则与 agorasdk.log 相同。 该方法仅用于设置 agorasdk.log 文件的大小，对 agoraapi.log 不生效。
  ///
  /// * [fileSizeInKBytes] 单个 agorasdk.log 日志文件的大小，单位为 KB，取值范围为 [128,20480]，默认值为 2,048 KB。如果你将 fileSizeInKByte 设为小于 128 KB，SDK 会自动调整到 128 KB；如果你将 fileSizeInKByte 设为大于 20,480 KB，SDK 会自动调整到 20,480 KB。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLogFileSize(int fileSizeInKBytes);

  /// @nodoc
  Future<String> uploadLogFile();

  /// @nodoc
  Future<void> writeLog({required LogLevel level, required String fmt});

  /// 更新本地视图显示模式。
  ///
  /// 初始化本地用户视图后，你可以调用该方法更新本地用户视图的渲染和镜像模式。该方法只影响本地用户看到的视频画面，不影响本地视频的发布。 该方法仅对第一个摄像头 (primaryCameraSource) 生效。在自定义视频采集或使用其他类型视频源的场景下，你需要使用 setupLocalVideo 方法替代该方法。
  ///
  /// * [renderMode] 本地视图显示模式。详见 RenderModeType 。
  /// * [mirrorMode] 本地视图的镜像模式，详见 VideoMirrorModeType 。 如果你使用前置摄像头，默认启动本地用户视图镜像模式；如果你使用后置摄像头，默认关闭本地视图镜像模式。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalRenderMode(
      {required RenderModeType renderMode,
      VideoMirrorModeType mirrorMode =
          VideoMirrorModeType.videoMirrorModeAuto});

  /// 更新远端视图显示模式。
  ///
  /// 初始化远端用户视图后，你可以调用该方法更新远端用户视图在本地显示时的渲染和镜像模式。该方法只影响本地用户看到的视频画面。
  ///  请在调用 setupRemoteVideo 方法初始化远端视图后，调用该方法。
  ///  你可以在通话中多次调用该方法，多次更新远端用户视图的显示模式。
  ///
  /// * [uid] 远端用户 ID。
  /// * [renderMode] 远端用户视图的渲染模式，详见 RenderModeType 。
  /// * [mirrorMode] 远端用户视图的镜像模式，详见 VideoMirrorModeType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteRenderMode(
      {required int uid,
      required RenderModeType renderMode,
      required VideoMirrorModeType mirrorMode});

  /// 设置本地视频渲染的最大帧率。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  /// * [targetFps] 最大渲染帧率 (fps)。支持的参数值为：1、7、10、15、24、30、60。 请将此参数设置为低于视频实际帧率的渲染帧率，否则设置将不会生效。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalRenderTargetFps(
      {required VideoSourceType sourceType, required int targetFps});

  /// 设置视频在远端渲染的最大帧率。
  ///
  /// * [targetFps] 最大渲染帧率 (fps)。支持的参数值为：1、7、10、15、24、30、60。 请将此参数设置为低于视频实际帧率的渲染帧率，否则设置将不会生效。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteRenderTargetFps(int targetFps);

  /// 设置本地视频镜像。
  ///
  /// 废弃 弃用: 该方法已废弃。
  ///
  /// * [mirrorMode] 本地视频镜像模式。详见 VideoMirrorModeType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalVideoMirrorMode(VideoMirrorModeType mirrorMode);

  /// 在发送端开启或关闭双流模式并设置视频小流。
  ///
  /// 废弃 弃用： 从 v4.2.0 起废弃，请改用 setDualStreamMode 。 你可以在发流端调用该方法开启或关闭双流模式。双流指视频大流和视频小流：
  ///  视频大流：高分辨率、高帧率的视频流。
  ///  视频小流：低分辨率、低帧率的视频流。 开启双流模式后，你可以在收流端调用 setRemoteVideoStreamType 选择接收视频大流或视频小流。
  ///  该方法适用于发送端发送的所有类型的流，包括且不限于来自摄像头采集的视频流、屏幕共享流、自定义采集的视频流。
  ///  如果需要在多频道场景下开启视频双流，可以调用 enableDualStreamModeEx 方法。
  ///  该方法可以在加入频道前后调用。
  ///
  /// * [enabled] 是否开启双流模式： true : 开启双流模式。 false : (默认) 关闭双流模式。
  /// * [streamConfig] 视频小流的配置。详见 SimulcastStreamConfig 。 当设置 mode 为 disableSimulcastStream 时，再设置 streamConfig 不会生效。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableDualStreamMode(
      {required bool enabled, SimulcastStreamConfig? streamConfig});

  /// 在发送端设置双流模式并设置视频小流。
  ///
  /// SDK 默认在发送端开启小流自适应模式 (autoSimulcastStream)，即发送端不主动发送小流，主播身份的接收端可以调用 setRemoteVideoStreamType 发起小流申请，发送端收到申请后开始自动发送小流。
  ///  如果你想修改此行为，可以调用该方法并修改 mode 为 disableSimulcastStream （始终不发送小流）或 enableSimulcastStream （始终发送小流）。
  ///  如果你在进行修改后又想恢复该默认行为，可重新调用该方法，并将 mode 设置为 autoSimulcastStream 。 该方法和 enableDualStreamMode 的区别与联系如下：
  ///  调用该方法并设置 mode 为 disableSimulcastStream 时，跟调用 enableDualStreamMode 并设置 enabled 为 false 的效果相同。
  ///  调用该方法并设置 mode 为 enableSimulcastStream 时，跟调用 enableDualStreamMode 并设置 enabled 为 true 的效果相同。
  ///  两种方法均可在加入频道前后调用，若同时使用，则以后调用的方法中的设置为准。
  ///
  /// * [mode] 发送视频流的模式。详见 SimulcastStreamMode 。
  /// * [streamConfig] 视频小流的配置。详见 SimulcastStreamConfig 。 当设置 mode 为 disableSimulcastStream 时，再设置 streamConfig 不会生效。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setDualStreamMode(
      {required SimulcastStreamMode mode, SimulcastStreamConfig? streamConfig});

  /// @nodoc
  Future<void> setSimulcastConfig(SimulcastConfig simulcastConfig);

  /// 设置是否在本地播放外部音频源。
  ///
  /// 调用该方法设置在本地播放外部采集的音频源后，如需停止本地播放，可以再次调用该方法并设置 enabled 为 false 。
  /// 你可以调用 adjustCustomAudioPlayoutVolume 调节自定义音频采集轨道在本地播放的音量。 在调用该方法前，请确保你已经调用 createCustomAudioTrack 方法创建自定义音频采集轨道。
  ///
  /// * [trackId] 音频轨道 ID。将该参数设置为调用 createCustomAudioTrack 方法返回的自定义音频轨道 ID。
  /// * [enabled] 是否在本地播放外部音频源： true ：在本地播放。 false ：（默认）不在本地播放。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableCustomAudioLocalPlayback(
      {required int trackId, required bool enabled});

  /// 设置采集的原始音频数据格式。
  ///
  /// SDK 会通过该方法中的 samplesPerCall 、 sampleRate 和 channel 参数计算出采样间隔，计算公式为采样间隔 = samplesPerCall /(sampleRate × channel)。请确保采样间隔不小于 0.01 秒。SDK 会根据该采样间隔触发 onRecordAudioFrame 回调。
  ///
  /// * [sampleRate] 音频数据的采样率 (Hz)，可设置为 8000、 16000、 32000、44100 或 48000。
  /// * [channel] 音频数据的声道数，可设置为 1 或 2:
  ///  1: 单声道。
  ///  2: 双声道。
  /// * [mode] 音频帧的使用模式，详见 RawAudioFrameOpModeType 。
  /// * [samplesPerCall] 音频数据的采样点数，如旁路推流应用中通常为 1024。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRecordingAudioFrameParameters(
      {required int sampleRate,
      required int channel,
      required RawAudioFrameOpModeType mode,
      required int samplesPerCall});

  /// 设置播放的原始音频数据格式。
  ///
  /// SDK 会通过该方法中的 samplesPerCall 、 sampleRate 和 channel 参数计算出采样间隔，计算公式为采样间隔 = samplesPerCall /(sampleRate × channel)。请确保采样间隔不小于 0.01 秒。SDK 会根据该采样间隔触发 onPlaybackAudioFrame 回调。
  ///
  /// * [sampleRate] 音频数据的采样率 (Hz)，可设置为 8000、 16000、 24000、 32000、44100 或 48000。
  /// * [channel] 音频数据的声道数，可设置为 1 或 2:
  ///  1: 单声道。
  ///  2: 双声道。
  /// * [mode] 音频帧的使用模式，详见 RawAudioFrameOpModeType 。
  /// * [samplesPerCall] 音频数据的采样点数，如旁路推流应用中通常为 1024。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlaybackAudioFrameParameters(
      {required int sampleRate,
      required int channel,
      required RawAudioFrameOpModeType mode,
      required int samplesPerCall});

  /// 设置采集和播放音频混音后的原始音频数据格式。
  ///
  /// SDK 会通过该方法中的 samplesPerCall 、 sampleRate 和 channel 参数计算出采样间隔，计算公式为采样间隔 = samplesPerCall /(sampleRate × channel)。请确保采样间隔不小于 0.01 秒。SDK 会根据该采样间隔触发 onMixedAudioFrame 回调。
  ///
  /// * [sampleRate] 音频数据的采样率 (Hz)，可设置为 8000、 16000、 32000、44100 或 48000。
  /// * [channel] 音频数据的声道数，可设置为 1 或 2:
  ///  1: 单声道。
  ///  2: 双声道。
  /// * [samplesPerCall] 音频数据的采样点数，如旁路推流应用中通常为 1024。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setMixedAudioFrameParameters(
      {required int sampleRate,
      required int channel,
      required int samplesPerCall});

  /// 设置耳返的音频数据格式。
  ///
  /// 该方法用于设置 onEarMonitoringAudioFrame 回调的耳返音频数据格式。
  ///  调用该方法前，你需要先调用 enableInEarMonitoring ，将 includeAudioFilters 设置为 earMonitoringFilterBuiltInAudioFilters 或 earMonitoringFilterNoiseSuppression 。
  ///  SDK 会通过该方法中的 samplesPerCall 、 sampleRate 和 channel 参数计算出采样间隔，计算公式为采样间隔 = samplesPerCall /(sampleRate × channel)。请确保采样间隔不小于 0.01 秒。SDK 会根据该采样间隔触发 onEarMonitoringAudioFrame 回调。
  ///
  /// * [sampleRate] onEarMonitoringAudioFrame 中报告音频的采样率 (Hz)，可设置为 8000、 16000、 32000、44100 或 48000。
  /// * [channel] onEarMonitoringAudioFrame 中报告音频的声道数，可设置为 1 或 2:
  ///  1: 单声道。
  ///  2: 双声道。
  /// * [mode] 音频帧的使用模式，详见 RawAudioFrameOpModeType 。
  /// * [samplesPerCall] onEarMonitoringAudioFrame 中报告的音频的采样点数，如旁路推流应用中通常为 1024。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setEarMonitoringAudioFrameParameters(
      {required int sampleRate,
      required int channel,
      required RawAudioFrameOpModeType mode,
      required int samplesPerCall});

  /// 设置混音前的原始音频播放数据格式。
  ///
  /// SDK 会根据该采样间隔触发 onPlaybackAudioFrameBeforeMixing 回调。
  ///
  /// * [sampleRate] 音频数据的采样率 (Hz)，可设置为 8000、 16000、 32000、44100 或 48000。
  /// * [channel] 音频数据的声道数，可设置为 1 或 2:
  ///  1: 单声道。
  ///  2: 双声道。
  /// * [samplesPerCall] 设置 onPlaybackAudioFrameBeforeMixing 回调中返回音频数据的采样点数。在 RTMP 推流场景中，建议设置为 1024。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlaybackAudioFrameBeforeMixingParameters(
      {required int sampleRate,
      required int channel,
      required int samplesPerCall});

  /// 开启音频频谱监测。
  ///
  /// 如果你想获取本地或远端用户的音频频谱数据，请注册音频频谱观测器并开启音频频谱监测。 该方法在加入频道前后均可调用。
  ///
  /// * [intervalInMS] SDK 触发 onLocalAudioSpectrum 和 onRemoteAudioSpectrum 回调的时间间隔（毫秒）。 默认值为 100 毫秒。取值不得少于 10 毫秒，否则该方法会调用失败。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableAudioSpectrumMonitor({int intervalInMS = 100});

  /// 关闭音频频谱监测。
  ///
  /// 调用 enableAudioSpectrumMonitor 后，如果你想关闭音频频谱监测，请调用该方法。 该方法在加入频道前后均可调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> disableAudioSpectrumMonitor();

  /// 注册音频频谱观测器。
  ///
  /// 成功注册音频频谱观测器并调用 enableAudioSpectrumMonitor 开启音频频谱监测后，SDK 会按照你设置的时间间隔报告你在 AudioSpectrumObserver 类中实现的回调。 该方法在加入频道前后均可调用。
  ///
  /// * [observer] 音频频谱观测器。详见 AudioSpectrumObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerAudioSpectrumObserver(AudioSpectrumObserver observer);

  /// 取消注册音频频谱观测器。
  ///
  /// 调用 registerAudioSpectrumObserver 后，如果你想取消注册音频频谱观测器，请调用该方法。 该方法在加入频道前后均可调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterAudioSpectrumObserver(AudioSpectrumObserver observer);

  /// 调节音频采集信号音量。
  ///
  /// 如果你只需将音频信号静音，建议你使用 muteRecordingSignal 。
  ///
  /// * [volume] 音量，取值范围为 [0,400]。
  ///  0: 静音。
  ///  100: （默认）原始音量。
  ///  400: 原始音量的 4 倍，自带溢出保护。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustRecordingSignalVolume(int volume);

  /// 是否将录音信号静音。
  ///
  /// 如果你已经调用 adjustRecordingSignalVolume 调节了音频采集信号音量，则调用该方法并设置为 true 时，SDK 的行为如下：
  ///  记录调节后的音量。
  ///  将音频采集信号静音。 当你再次调用该方法并设置为 false 时，录音信号会恢复为静音前 SDK 记录的音量。
  ///
  /// * [mute] true : 静音。 false :（默认）原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> muteRecordingSignal(bool mute);

  /// 调节本地播放的所有远端用户信号音量。
  ///
  /// 该方法用于调节所有远端用户混音后在本地播放的信号音量，如果你需要调节指定远端用户在本地播放的信号音量，建议你调用 adjustUserPlaybackSignalVolume 。
  ///
  /// * [volume] 音量，取值范围为 [0,400]。
  ///  0: 静音。
  ///  100: （默认）原始音量。
  ///  400: 原始音量的 4 倍，自带溢出保护。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustPlaybackSignalVolume(int volume);

  /// 调节本地播放的指定远端用户信号音量。
  ///
  /// 你可以在通话中调用该方法调节指定远端用户在本地播放的音量。如需调节多个用户在本地播放的音量，则需多次调用该方法。
  ///
  /// * [uid] 远端用户 ID。
  /// * [volume] 音量，取值范围为 [0,400]。
  ///  0: 静音。
  ///  100: （默认）原始音量。
  ///  400: 原始音量的 4 倍，自带溢出保护。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustUserPlaybackSignalVolume(
      {required int uid, required int volume});

  /// 设置弱网环境下订阅的音视频流回退选项。
  ///
  /// 网络不理想的环境下，实时通信音视频的质量会下降。你可以调用该方法并将 option 设置为 streamFallbackOptionVideoStreamLow 或 streamFallbackOptionAudioOnly ，SDK 会在下行弱网且音视频质量严重受影响时，将视频流切换为小流或关闭视频流，从而保证音频质量。同时，SDK 会持续监控网络质量，并在网络质量改善时恢复订阅音视频流。
  /// 当订阅流回退为音频流或由音频流恢复为音视频流时，SDK 会触发 onRemoteSubscribeFallbackToAudioOnly 回调。
  ///
  /// * [option] 订阅流的回退选项。详见 StreamFallbackOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteSubscribeFallbackOption(StreamFallbackOptions option);

  /// @nodoc
  Future<void> setHighPriorityUserList(
      {required List<int> uidList,
      required int uidNum,
      required StreamFallbackOptions option});

  /// 启用/禁用插件。
  ///
  /// 如果要开启多个插件，需要多次调用该方法。
  ///  该方法调用成功后，无法再加载其他插件。
  ///
  /// * [provider] 提供插件的服务商名称。
  /// * [extension] 插件的名称。
  /// * [enable] 是否启用插件： true : 启用插件。 false : 禁用插件。
  /// * [type] 插件的媒体源类型。详见 MediaSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableExtension(
      {required String provider,
      required String extension,
      bool enable = true,
      MediaSourceType type = MediaSourceType.unknownMediaSource});

  /// 设置插件的属性。
  ///
  /// 开启插件后，你可以调用该方法设置插件的属性。 如果要设置多个插件的属性，需要多次调用该方法。
  ///
  /// * [provider] 提供插件的服务商名称。
  /// * [extension] 插件的名称。
  /// * [key] 插件属性的 Key。
  /// * [value] 插件属性 Key 对应的值。
  /// * [type] 插件的媒体源类型。详见 MediaSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExtensionProperty(
      {required String provider,
      required String extension,
      required String key,
      required String value,
      MediaSourceType type = MediaSourceType.unknownMediaSource});

  /// 获取插件的详细信息。
  ///
  /// * [provider] 提供插件的服务商名称。
  /// * [extension] 插件的名称。
  /// * [key] 插件属性的 Key。
  /// * [bufLen] 插件属性 JSON 字符串的最大长度。最大值为 512 字节。
  /// * [type] 插件的媒体源类型。详见 MediaSourceType 。
  ///
  /// Returns
  /// 方法调用成功，则返回插件信息。
  ///  方法调用失败，则返回空字符串。
  Future<String> getExtensionProperty(
      {required String provider,
      required String extension,
      required String key,
      required int bufLen,
      MediaSourceType type = MediaSourceType.unknownMediaSource});

  /// 开启声卡采集。
  ///
  /// 启用声卡采集功能后，声卡播放的声音会被合到本地音频流中，从而可以发送到远端。
  ///  该方法仅适用于 macOS 和 Windows 平台。
  ///  该方法在加入频道前后都能调用。
  ///  如果你调用了 disableAudio 关闭音频模块，声卡采集功能也会被关闭。如果你需要再次启用声卡采集功能，需要调用 enableAudio 启用音频模块后再次调用 enableLoopbackRecording 。
  ///
  /// * [enabled] 是否开启声卡采集: true : 开启声卡采集；系统声音 > 输出界面显示虚拟声卡名称。 false :（默认）关闭声卡采集；系统声音 > 输出界面不显示虚拟声卡名称。
  /// * [deviceName] macOS: 虚拟声卡的设备名。默认为空，代表使用 AgoraALD 虚拟声卡进行采集。
  ///  Windows: 声卡的设备名。默认为空，代表使用设备自带的声卡进行采集。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableLoopbackRecording(
      {required bool enabled, String? deviceName});

  /// 调节声卡采集信号音量。
  ///
  /// 调用 enableLoopbackRecording 开启声卡采集后，你可以调用该方法调节声卡采集的信号音量。
  ///
  /// * [volume] 音乐文件音量范围为 0~100。100 （默认值）为原始文件音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustLoopbackSignalVolume(int volume);

  /// @nodoc
  Future<int> getLoopbackRecordingVolume();

  /// 开启耳返功能。
  ///
  /// 该方法用于打开或关闭耳返功能。 用户必须使用耳机（有线和蓝牙均可）才能听到耳返效果。
  ///
  /// * [enabled] 开启/关闭耳返功能: true : 开启耳返功能。 false : （默认）关闭耳返功能。
  /// * [includeAudioFilters] 耳返 Audio filter 类型。详见 EarMonitoringFilterType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableInEarMonitoring(
      {required bool enabled,
      required EarMonitoringFilterType includeAudioFilters});

  /// 设置耳返音量。
  ///
  /// * [volume] 音量，取值范围为 [0,400]。
  ///  0: 静音。
  ///  100: （默认）原始音量。
  ///  400: 原始音量的 4 倍，自带溢出保护。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setInEarMonitoringVolume(int volume);

  /// 加载插件。
  ///
  /// 该方法用于将 SDK 外部插件（例如云市场插件和 SDK 拓展插件）添加到 SDK 中。 如果要加载多个插件，需要多次调用该方法。
  /// 该方法仅适用于 Windows 和 Android。
  ///
  /// * [path] 插件的动态库路径和名称。例如： /library/libagora_segmentation_extension.dll 。
  /// * [unloadAfterUse] 是否在插件使用完毕后自动卸载： true : 当 RtcEngine 销毁时自动卸载插件。 false : 不自动卸载插件，直到进程退出（推荐）。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> loadExtensionProvider(
      {required String path, bool unloadAfterUse = false});

  /// 设置插件服务商的属性。
  ///
  /// 你可以调用该方法设置插件服务商的属性，并根据服务商的类型初始化相关参数。 如果要设置多个插件服务商的属性，需要多次调用该方法。
  ///
  /// * [provider] 提供插件的服务商名称。
  /// * [key] 插件属性的 Key。
  /// * [value] 插件属性 Key 对应的值。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExtensionProviderProperty(
      {required String provider, required String key, required String value});

  /// 注册插件。
  ///
  /// 对于 SDK 外部的插件（例如云市场插件和 SDK 拓展插件），加载插件后，你需要调用该方法注册插件。SDK 内部插件（包含在 SDK 包中的插件）在初始化 RtcEngine 后会自动加载并注册，无需调用该方法。
  ///  如果要注册多个插件，需要多次调用该方法。
  ///  不同插件在 SDK 中处理数据的顺序由插件的注册顺序决定。即先注册的插件会先处理数据。
  ///
  /// * [provider] 提供插件的服务商名称。
  /// * [extension] 插件的名称。
  /// * [type] 插件的媒体源类型。详见 MediaSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> registerExtension(
      {required String provider,
      required String extension,
      MediaSourceType type = MediaSourceType.unknownMediaSource});

  /// 设置摄像头采集配置。
  ///
  /// 在调整摄像头的焦距配置前，建议先调用 queryCameraFocalLengthCapability 查询设备支持的焦距能力，再根据查询结果进行配置。
  /// 由于部分 Android 设备的限制，即使根据 queryCameraFocalLengthCapability 的查询结果设置焦距类型，设置结果也可能不生效。
  ///
  /// * [config] 摄像头采集配置，详见 CameraCapturerConfiguration 。 在该方法中，不需要设置 deviceId 参数。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraCapturerConfiguration(
      CameraCapturerConfiguration config);

  /// 创建一个自定义的视频轨道。
  ///
  /// 当你需要在频道中发布自定义采集视频时，可参考以下步骤：
  ///  调用该方法创建视频轨道并获得视频轨道 ID。
  ///  调用 joinChannel 加入频道时，将 ChannelMediaOptions 中的 customVideoTrackId 设置为你想要发布的视频轨道 ID，并将 publishCustomVideoTrack 设置为 true 。
  ///  调用 pushVideoFrame 将 videoTrackId 指定为步骤 2 中指定的视频轨道 ID，即可实现在频道内发布对应的自定义视频源。
  ///
  /// Returns
  /// 方法调用成功，返回视频轨道 ID 作为该视频轨道的唯一标识。
  ///  方法调用失败，返回 0xffffffff。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> createCustomVideoTrack();

  /// @nodoc
  Future<int> createCustomEncodedVideoTrack(SenderOptions senderOption);

  /// 销毁指定的视频轨道。
  ///
  /// * [videoTrackId] 调用 createCustomVideoTrack 方法返回的视频轨道 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyCustomVideoTrack(int videoTrackId);

  /// @nodoc
  Future<void> destroyCustomEncodedVideoTrack(int videoTrackId);

  /// 切换前置/后置摄像头。
  ///
  /// 你可以调用该方法在 App 运行期间基于可用摄像头的实际情况来动态切换摄像头，而无需重启视频流或重新配置视频源。 该方法仅适用于 Android 和 iOS。
  /// 该方法仅会对第一路摄像头采集的视频流进行摄像头切换操作，即调用 startCameraCapture 时设置为 videoSourceCamera (0) 的视频源。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> switchCamera();

  /// 检测设备是否支持摄像头缩放功能。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///
  /// Returns
  /// true : 设备支持相机缩放功能。 false : 设备不支持相机缩放功能。
  Future<bool> isCameraZoomSupported();

  /// 检查设备摄像头是否支持人脸检测。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///
  /// Returns
  /// true : 设备摄像头支持人脸检测。 false : 设备摄像头不支持人脸检测。
  Future<bool> isCameraFaceDetectSupported();

  /// 检测设备是否支持闪光灯常开。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///  一般情况下，App 默认开启前置摄像头，因此如果你的前置摄像头不支持闪光灯常开，直接使用该方法会返回 false 。如果需要检查后置摄像头是否支持闪光灯常开，需要先使用 switchCamera 切换摄像头，再使用该方法。
  ///  在系统版本 15 的 iPad 上，即使 isCameraTorchSupported 返回 true ，也可能因系统问题导致你无法通过 setCameraTorchOn 成功开启闪光灯。
  ///
  /// Returns
  /// true : 设备支持闪光灯常开。 false : 设备不支持闪光灯常开。
  Future<bool> isCameraTorchSupported();

  /// 检测设备是否支持手动对焦功能。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///
  /// Returns
  /// true : 设备支持手动对焦功能。 false : 设备不支持手动对焦功能。
  Future<bool> isCameraFocusSupported();

  /// 检测设备是否支持人脸对焦功能。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///
  /// Returns
  /// true : 设备支持人脸对焦功能。 false : 设备不支持人脸对焦功能。
  Future<bool> isCameraAutoFocusFaceModeSupported();

  /// 设置摄像头放大比例。
  ///
  /// 部分 iOS 设备的后置摄像头为多个摄像头组成的融合镜头，如双摄（广角和超广角）或三摄（广角、超广角和长焦），对于这种具备超广角能力的融合镜头，你可以调用 setCameraCapturerConfiguration 将 cameraFocalLengthType 设置为 cameraFocalLengthDefault (0)（标准镜头），然后调用该方法将摄像头缩放比例设置为小于 1.0 的数值，从而实现超广角的拍摄效果。
  ///  该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///
  /// * [factor] 摄像头放大比例。对不支持超广角的设备，取值范围从 1.0 到最大放大比例；对支持超广角的设备，取值范围从 0.5 到最大放大比例。你可以通过 getCameraMaxZoomFactor 方法获取设备支持的最大放大比例。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  方法调用失败: 返回值 < 0。
  Future<void> setCameraZoomFactor(double factor);

  /// 开启/关闭本地人脸检测。
  ///
  /// * [enabled] 是否开启人脸检测： true ：开启人脸检测。 false ：（默认）关闭人脸检测。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableFaceDetection(bool enabled);

  /// 获取摄像头支持的最大放大倍率。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///
  /// Returns
  /// 设备摄像头支持的最大放大倍率。
  Future<double> getCameraMaxZoomFactor();

  /// 设置手动对焦位置，并触发对焦。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///  成功调用该方法后，本地会触发 onCameraFocusAreaChanged 回调。
  ///
  /// * [positionX] 触摸点相对于视图的横坐标。
  /// * [positionY] 触摸点相对于视图的纵坐标。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraFocusPositionInPreview(
      {required double positionX, required double positionY});

  /// 设置是否打开闪光灯。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///
  /// * [isOn] 是否打开闪光灯： true : 打开闪光灯。 false :（默认）关闭闪光灯。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraTorchOn(bool isOn);

  /// 设置是否开启人脸对焦功能。
  ///
  /// SDK 默认在 Android 平台关闭人脸自动对焦，在 iOS 平台开启人脸自动对焦。如需自行设置人脸自动对焦，请调用该方法。 该方法仅适用于 Android 和 iOS。
  ///
  /// * [enabled] 是否开启人脸对焦： true : 开启人脸对焦功能。 false : 关闭人脸对焦功能。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraAutoFocusFaceModeEnabled(bool enabled);

  /// 检测设备是否支持手动曝光功能。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///
  /// Returns
  /// true : 设备支持手动曝光功能。 false : 设备不支持手动曝光功能。
  Future<bool> isCameraExposurePositionSupported();

  /// 设置手动曝光位置。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///  成功调用该方法后，本地会触发 onCameraExposureAreaChanged 回调。
  ///
  /// * [positionXinView] 触摸点相对于视图的横坐标。
  /// * [positionYinView] 触摸点相对于视图的纵坐标。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraExposurePosition(
      {required double positionXinView, required double positionYinView});

  /// 查询当前摄像头是否支持曝光调节。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 SDK 触发 onLocalVideoStateChanged 回调，返回本地视频状态为 localVideoStreamStateCapturing (1) 之后调用。
  ///  建议你在调用 setCameraExposureFactor 调节曝光系数前，先调用该方法查询当前摄像头是否支持曝光调节。
  ///  当你调用该方法时，查询的是当前正在使用的摄像头是否支持曝光调节，即调用 setCameraCapturerConfiguration 时指定的摄像头。
  ///
  /// Returns
  /// true ：方法调用成功。 false ：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<bool> isCameraExposureSupported();

  /// 设置当前摄像头的曝光系数。
  ///
  /// 当拍摄环境光线不足或过于明亮时，会影响视频采集的画质。为了获得更好的视频效果，你可以使用该方法调节摄像头的曝光系数。
  ///  该方法仅适用于 Android 和 iOS。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///  建议你在调用该方法前，先调用 isCameraExposureSupported 查询当前摄像头是否支持调节曝光系数。
  ///  当你调用该方法时，设置的是当前正在使用的摄像头的曝光系数，即调用 setCameraCapturerConfiguration 时指定的摄像头。
  ///
  /// * [factor] 摄像头的曝光系数。默认值为 0，表示使用摄像头的默认曝光量。取值越大，曝光量越大。视频图像过曝时，你可以降低曝光系数；视频图像欠曝且暗部细节丢失时，你可以增加曝光系数。如果你指定的曝光系数超出设备支持的范围，SDK 会自动调节为设备实际支持的范围。
  /// 在 Android 平台上，取值范围为 [-20.0,20.0]；在 iOS 平台上，取值范围为 [-8.0,8.0]。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraExposureFactor(double factor);

  /// 检测设备是否支持自动曝光功能。
  ///
  /// Returns
  /// true : 设备支持自动曝光功能。 false : 设备不支持自动曝光功能。
  Future<bool> isCameraAutoExposureFaceModeSupported();

  /// 设置是否开启自动曝光功能。
  ///
  /// * [enabled] 是否开启自动曝光： true : 开启自动曝光。 false : 关闭自动曝光。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraAutoExposureFaceModeEnabled(bool enabled);

  /// 设置摄像头防抖模式。
  ///
  /// 摄像头防抖模式默认关闭，你需要调用该方法开启并设置合适的防抖模式。 该方法仅适用于 iOS。
  ///  摄像头防抖只对视频分辨率大于 1280 × 720 以上的场景生效。
  ///  开启摄像头防抖后，摄像头防抖等级越高，相机的视角就越小、相机时延就越大。为保障用户体验，建议你将 mode 参数设置为 cameraStabilizationModeLevel1 。
  ///
  /// * [mode] 摄像头的防抖模式。详见 CameraStabilizationMode 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  Future<void> setCameraStabilizationMode(CameraStabilizationMode mode);

  /// 设置默认的音频路由。
  ///
  /// 手机设备一般有两个音频路由，一个是位于顶部的听筒，播放声音偏小；一个是位于底部的扬声器，播放声音偏大。设置默认的音频路由，就是在没有外接设备的前提下，设置系统使用听筒还是扬声器播放音频。
  /// 不同场景下，系统默认的音频路由也不同。具体如下：
  ///  语音通话：听筒
  ///  语音直播：扬声器
  ///  视频通话：扬声器
  ///  视频直播：扬声器 调用该 API 可以改变上述默认音频路由。 该方法仅适用于 Android 和 iOS 平台。
  /// 在调用该方法设置默认音频路由后，系统实际音频路由会随着外接音频设备（有线耳机或蓝牙耳机）的连接发生改变。详见[音频路由](https://doc.shengwang.cn/doc/rtc/android/advanced-features/audio-route)。
  ///
  /// * [defaultToSpeaker] 是否使用扬声器作为默认的音频路由： true : 设置默认音频路由为扬声器。 false : 设置默认音频路由为听筒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setDefaultAudioRouteToSpeakerphone(bool defaultToSpeaker);

  /// 开启或关闭扬声器播放。
  ///
  /// 不同场景下 SDK 默认的音频路由见[音频路由](https://doc.shengwang.cn/doc/rtc/android/advanced-features/audio-route)。 该方法仅适用于 Android 和 iOS 平台。
  ///  该方法只设置用户在当前频道内使用的音频路由，不会影响 SDK 默认的音频路由。如果用户离开当前频道并加入新的频道，则用户还是会使用 SDK 默认的音频路由。
  ///  如果用户使用了蓝牙耳机、有线耳机等外接音频播放设备，则该方法的设置无效，音频只会通过外接设备播放。当有多个外接设备时，音频会通过最后一个接入的设备播放。
  ///
  /// * [speakerOn] 设置是否开启扬声器播放： true : 开启。音频路由为扬声器。 false : 关闭。音频路由为听筒。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setEnableSpeakerphone(bool speakerOn);

  /// 检查扬声器状态启用状态。
  ///
  /// 该方法仅适用于 Android 和 iOS。
  ///
  /// Returns
  /// true : 扬声器已开启，语音会输出到扬声器。 false : 扬声器未开启，语音会输出到非扬声器（听筒，耳机等）。
  Future<bool> isSpeakerphoneEnabled();

  /// 选择通话音量模式下的音频路由。
  ///
  /// 该方法用于在通话音量模式（[MODE_IN_COMMUNICATION](https://developer.android.google.cn/reference/kotlin/android/media/AudioManager?hl=en#mode_in_communication)）下，将音频路由从蓝牙耳机切换为听筒、有线耳机或扬声器。 该方法仅适用于 Android。
  /// 该方法与 setEnableSpeakerphone 同时使用时可能引起冲突。声网建议你单独使用 setRouteInCommunicationMode 。
  ///
  /// * [route] 期望使用的音频路由:
  ///  -1：系统默认的音频路由。
  ///  0：带麦克风的耳机。
  ///  1：听筒。
  ///  2：不带麦克风的耳机。
  ///  3：设备自带的扬声器。
  ///  4：（暂不支持）外接的扬声器。
  ///  5：蓝牙耳机。
  ///  6：USB 设备。
  ///
  /// Returns
  /// 无实际意义。
  Future<void> setRouteInCommunicationMode(int route);

  /// 查询摄像头是否支持人像锁定。
  ///
  /// 在调用 enableCameraCenterStage 开启人像锁定功能前，建议你先调用该方法查询当前设备是否支持人像锁定。 该方法仅适用于 iOS 和 macOS。
  ///
  /// Returns
  /// true : 当前摄像头支持人像锁定。 false : 当前摄像头不支持人像锁定。
  Future<bool> isCameraCenterStageSupported();

  /// 开启或关闭人像锁定功能。
  ///
  /// 人像锁定功能默认关闭，你需要调用该方法开启。如果需要关闭该功能，则需重新调用该方法并将 enabled 设置为 false 。 该方法仅适用于 iOS 和 macOS。
  /// 由于该功能对设备性能要求较高，你需要在以下类型或更高性能的设备上使用该功能：
  ///  iPad：
  ///  12.9 英寸 iPad Pro（第五代）
  ///  11 英寸 iPad Pro（第三代）
  ///  iPad（第九代）
  ///  iPad mini（第六代）
  ///  iPad Air（第五代）
  ///  2020 年 M1 MacBook Pro 13 英寸 + iPhone 11（将 iPhone 作为 MacBook 的外接摄像头使用） 声网建议你在开启该功能前，先调用 isCameraCenterStageSupported 查询当前设备是否支持人像锁定。
  ///
  /// * [enabled] 是否开启人像锁定功能： true ：开启人像锁定。 false ：关闭人像锁定。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  Future<void> enableCameraCenterStage(bool enabled);

  /// 获取可共享的屏幕和窗口对象列表。
  ///
  /// 屏幕共享或窗口共享前，你可以调用该方法获取可共享的屏幕和窗口的对象列表，方便用户通过列表中的缩略图选择共享某个显示器的屏幕或某个窗口。列表中包含窗口 ID 和屏幕 ID 等重要信息，你可以获取到 ID 后再调用 startScreenCaptureByWindowId 或 startScreenCaptureByDisplayId 开启共享。 该方法仅适用于 macOS 和 Windows。
  ///
  /// * [thumbSize] 屏幕或窗口的缩略图的目标尺寸（宽高单位为像素）。SDK 会在保证原图不变形的前提下，缩放原图，使图片最长边和目标尺寸的最长边的长度一致。例如，原图宽高为 400 × 300， thumbSize 为 100 x 100，缩略图实际尺寸为 100 × 75。如果目标尺寸大于原图尺寸，缩略图即为原图，SDK 不进行缩放操作。
  /// * [iconSize] 程序所对应的图标的目标尺寸（宽高单位为像素）。SDK 会在保证原图不变形的前提下，缩放原图，使图片最长边和目标尺寸的最长边的长度一致。例如，原图宽高为 400 × 300， iconSize 为 100 × 100，图标实际尺寸为 100 × 75。如果目标尺寸大于原图尺寸，图标即为原图，SDK 不进行缩放操作。
  /// * [includeScreen] 除了窗口信息外，SDK 是否返回屏幕信息： true ：SDK 返回屏幕和窗口信息。 false ：SDK 仅返回窗口信息。
  ///
  /// Returns
  /// ScreenCaptureSourceInfo 数组。
  Future<List<ScreenCaptureSourceInfo>> getScreenCaptureSources(
      {required SIZE thumbSize,
      required SIZE iconSize,
      required bool includeScreen});

  /// 设置 SDK 对 Audio Session 的操作权限。
  ///
  /// 默认情况下，SDK 和 App 对 Audio Session 都有操作权限。如果你只需使用 App 对 Audio Session 进行操作，你可以调用该方法限制 SDK 对 Audio Session 的操作权限。
  /// 该方法在加入频道前后都能调用。一旦调用该方法限制了 SDK 对 Audio Session 的操作权限，该限制会在 SDK 需要更改 Audio Session 时生效。
  ///  该方法仅适用于 iOS 平台。
  ///  该方法不会限制 App 对 Audio Session 的操作权限。
  ///
  /// * [restriction] SDK 对 Audio Session 的操作权限，详见 AudioSessionOperationRestriction 。该参数为 Bit Mask，每个 Bit 对应一个权限。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAudioSessionOperationRestriction(
      AudioSessionOperationRestriction restriction);

  /// 开始采集指定屏幕的视频流。
  ///
  /// 采集一个屏幕或该屏幕部分区域的视频流。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [displayId] 指定待共享的屏幕 ID。 对于 Windows 平台，如果你需要同时共享两个屏幕（主屏 + 副屏），可以在调用该方法时，将 displayId 设置为 -1 。
  /// * [regionRect] （可选）指定待共享区域相对于整个屏幕的位置。如需共享整个屏幕，则填 nil 。
  /// 详见 Rectangle 。
  /// * [captureParams] 屏幕共享的参数配置。默认的视频编码分辨率为 1920 × 1080，即 2073600 像素。该像素值为计费标准。详见 ScreenCaptureParameters 。 屏幕共享流的视频属性只需通过该参数设置，与 setVideoEncoderConfiguration 无关。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startScreenCaptureByDisplayId(
      {required int displayId,
      required Rectangle regionRect,
      required ScreenCaptureParameters captureParams});

  /// 开始采集指定屏幕区域的视频流。
  ///
  /// 废弃 弃用： 该方法已废弃。请改用 startScreenCaptureByDisplayId 。如果你需要在设备外接其他显示屏的情况下开启屏幕共享，强烈建议你使用 startScreenCaptureByDisplayId 。 共享一个屏幕或该屏幕的部分区域。你需要在该方法中指定想要共享的屏幕区域。
  /// 该方法在加入频道前后均可调用，区别如下：
  ///  如果在加入频道前调用该方法，然后调用 joinChannel 加入频道，并设置 publishScreenTrack 或 publishSecondaryScreenTrack 为 true ，即可开始屏幕共享。
  ///  如果在加入频道后调用该方法，然后调用 updateChannelMediaOptions 更新频道媒体选项，并设置 publishScreenTrack 或 publishSecondaryScreenTrack 为 true ，即可开始屏幕共享。 该方法仅适用于 Windows 平台。
  ///
  /// * [screenRect] 指定待共享的屏幕相对于虚拟屏的位置。
  /// * [regionRect] 指定待共享区域相对于整个屏幕的位置。如不填，则表示共享整个屏幕。详见 Rectangle 。如果设置的共享区域超出了屏幕的边界，则只共享屏幕内的内容；如果将 width 或 height 设为 0 ，则共享整个屏幕。
  /// * [captureParams] 屏幕共享的编码参数配置。默认的分辨率为 1920 x 1080，即 2073600 像素。该像素值为计费标准。详见 ScreenCaptureParameters 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startScreenCaptureByScreenRect(
      {required Rectangle screenRect,
      required Rectangle regionRect,
      required ScreenCaptureParameters captureParams});

  /// 获取音频设备信息。
  ///
  /// 调用该方法后，你可以获取音频设备是否支持极低延时采集和播放。
  ///  该方法仅适用于 Android 平台。
  ///  该方法在加入频道前后均可调用。
  ///
  /// Returns
  /// 包含音频设备信息的 DeviceInfo 对象。
  ///  非空：方法调用成功。
  ///  空：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<DeviceInfo> getAudioDeviceInfo();

  /// 开始采集指定窗口的视频流。
  ///
  /// 共享一个窗口或该窗口的部分区域。用户需要在该方法中指定想要共享的窗口 ID。
  /// 该方法支持共享通用 Windows 平台（UWP）应用窗口。声网使用最新版 SDK 对主流的 UWP 应用进行了测试，结果如下： 系统版本 软件名称 兼容版本 是否支持 Windows 10 Chrome 76.0.3809.100 否 Office Word 18.1903.1152.0 是 Office Excel 18.1903.1152.0 否 Office PPT 18.1903.1152.0 是 WPS Word 11.1.0.9145 是 WPS Excel 11.1.0.9145 是 WPS PPT 11.1.0.9145 是 系统自带的 Media Player 所有版本 是 Windows 8 Chrome 所有版本 是 Office Word 所有版本 是 Office Excel 所有版本 是 Office PPT 所有版本 是 WPS Word 11.1.0.9098 是 WPS Excel 11.1.0.9098 是 WPS PPT 11.1.0.9098 是 系统自带的 Media Player 所有版本 是 Windows 7 Chrome 73.0.3683.103 否 Office Word 所有版本 是 Office Excel 所有版本 是 Office PPT 所有版本 是 WPS Word 11.1.0.9098 否 WPS Excel 11.1.0.9098 否 WPS PPT 11.1.0.9098 是 系统自带的 Media Player 所有版本 否 该方法仅适用于 macOS 和 Windows 平台。
  /// SDK 的窗口共享功能依赖于 WGC（Windows Graphics Capture）或 GDI（Graphics Device Interface）采集，WGC 在早于 Windows 10 2004 的系统上无法设置关闭鼠标采集，因此，当你在搭载早于 Windows 10 2004 系统的设备上进行窗口共享时，可能出现 captureMouseCursor(false) 不生效的现象。详见 ScreenCaptureParameters 。
  ///
  /// * [windowId] 指定待共享的窗口 ID。
  /// * [regionRect] （可选）指定待共享区域相对于整个屏幕的位置。如不填，则表示共享整个屏幕。详见 Rectangle 。如果设置的共享区域超出了窗口的边界，则只共享窗口内的内容；如果宽或高为 0，则共享整个窗口。
  /// * [captureParams] 屏幕共享的参数配置。默认的分辨率为 1920 x 1080，即 2073600 像素。该像素值为计费标准。详见 ScreenCaptureParameters 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startScreenCaptureByWindowId(
      {required int windowId,
      required Rectangle regionRect,
      required ScreenCaptureParameters captureParams});

  /// 设置屏幕共享内容类型。
  ///
  /// SDK 会根据不同的内容类型，使用不同的算法对共享效果进行优化。如果不调用该方法，SDK 会将屏幕共享的内容默认为 contentHintNone，即无指定的内容类型。 该方法在开始屏幕共享前后都能调用。
  ///
  /// * [contentHint] 屏幕共享的内容类型。详见 VideoContentHint 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setScreenCaptureContentHint(VideoContentHint contentHint);

  /// 更新屏幕采集的区域。
  ///
  /// 请在开启屏幕共享或窗口共享后调用该方法。
  ///
  /// * [regionRect] 待共享区域相对于整个屏幕或窗口的位置，如不填，则表示共享整个屏幕或窗口。详见 Rectangle 。如果设置的共享区域超出了屏幕或窗口的边界，则只共享屏幕或窗口内的内容；如果将 width 或 height 设为 0，则共享整个屏幕或窗口。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateScreenCaptureRegion(Rectangle regionRect);

  /// 更新屏幕采集的参数配置。
  ///
  /// 该方法仅适用于 Windows 和 macOS 平台。
  ///  请在开启屏幕共享或窗口共享后调用该方法。
  ///
  /// * [captureParams] 屏幕共享的编码参数配置。详见 ScreenCaptureParameters 。 屏幕共享流的视频属性只需通过该参数设置，与 setVideoEncoderConfiguration 无关。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateScreenCaptureParameters(
      ScreenCaptureParameters captureParams);

  /// 开始屏幕采集。
  ///
  /// 该方法仅适用于 Android 和 iOS 平台。
  ///  屏幕共享流的计费标准以 ScreenVideoParameters 中的 dimensions 值为准：
  ///  当你未传值时，以 1280 × 720 计费。
  ///  当你传值时，以你传入的值计费。
  ///  在 iOS 平台上，屏幕共享仅适用于 iOS 12.0 及以上。
  ///  在 iOS 平台上，如果你使用音频自采集而非 SDK 采集音频，为避免应用退后台后屏幕共享停止，建议你对应用添加保活处理逻辑。
  ///  在 iOS 平台上，该功能对设备性能要求较高，建议你在 iPhone X 及之后机型上使用。
  ///  在 iOS 平台上，该方法依赖于屏幕共享动态库 AgoraReplayKitExtension.xcframework ，如果删除该动态库会导致无法正常开启屏幕共享。
  ///  在 Android 平台上，如果用户未授予 App 屏幕采集权限，SDK 会上报 onPermissionError(2) 回调。
  ///  在 Android 9 及之后版本上，为避免应用退后台后被系统杀死，建议你在 /app/Manifests/AndroidManifest.xml 文件中添加前台服务权限： android.permission.FOREGROUND_SERVICE 。
  ///  因 Android 性能限制，屏幕共享不支持 Android TV。
  ///  因 Android 系统限制，使用华为手机进行屏幕共享时，为避免崩溃，请不要在共享过程中调节屏幕共享流的视频编码分辨率。
  ///  因 Android 系统限制，部分小米手机不支持屏幕共享时采集系统音频。
  ///  为提高屏幕共享时采集系统音频的成功率，建议你在加入频道前通过 setAudioScenario 方法设置音频场景为 audioScenarioGameStreaming 。
  ///
  /// * [captureParams] 屏幕共享的编码参数配置。详见 ScreenCaptureParameters2 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startScreenCapture(ScreenCaptureParameters2 captureParams);

  /// 更新屏幕采集的参数配置。
  ///
  /// 如果在开启屏幕共享时未采集系统音频、然后想要更新参数配置、发布系统音频，可参考以下步骤：
  ///  调用该方法并设置 captureAudio 为 true 。
  ///  调用 updateChannelMediaOptions 设置 publishScreenCaptureAudio 为 true ，即可发布屏幕采集的音频。
  ///  该方法仅适用于 Android 和 iOS 平台。
  ///  在 iOS 平台上，屏幕共享仅适用于 iOS 12.0 及以上。
  ///
  /// * [captureParams] 屏幕共享的编码参数配置。详见 ScreenCaptureParameters2 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateScreenCapture(ScreenCaptureParameters2 captureParams);

  /// 查询设备在屏幕共享时支持的最高帧率。
  ///
  /// Returns
  /// 方法调用成功时，返回设备支持的最高帧率。详见 ScreenCaptureFramerateCapability 。
  ///  <0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> queryScreenCaptureCapability();

  /// 查询摄像头支持的焦距能力。
  ///
  /// 如需开启摄像头广角、超广角拍摄模式，建议你先调用该方法查询设备是否具备相应的焦距能力，再根据查询结果调用 setCameraCapturerConfiguration 调整摄像头的焦距配置，以达到最佳的摄像头采集效果。 该方法仅适用于 Android 和 iOS。
  ///
  /// Returns
  /// 返回 FocalLengthInfo 对象数组，其中包含摄像头的方向和焦距类型。
  Future<List<FocalLengthInfo>> queryCameraFocalLengthCapability();

  /// 设置 SDK 外部的 MediaProjection 采集屏幕视频流。
  ///
  /// 成功调用该方法后，你设置的外部 MediaProjection 会替换掉 SDK 申请的 MediaProjection 采集屏幕视频流。
  /// 当停止屏幕共享或销毁 RtcEngine 时，SDK 会自动释放 MediaProjection。 该方法仅适用于 Android。
  /// 在调用该方法前，必须先申请 MediaProjection 权限。
  ///
  /// * [mediaProjection] 一个 [MediaProjection](https://developer.android.com/reference/android/media/projection/MediaProjection) 对象，用于采集屏幕视频流。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExternalMediaProjection(int mediaProjection);

  /// 设置屏幕共享的场景。
  ///
  /// 开启屏幕共享或窗口共享时，你可以调用该方法设置屏幕共享的场景，SDK 会根据你设置的场景调整共享画面的画质。 声网建议你在加入频道前调用该方法。
  ///
  /// * [screenScenario] 屏幕共享的场景，详见 ScreenScenarioType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setScreenCaptureScenario(ScreenScenarioType screenScenario);

  /// 停止屏幕采集。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopScreenCapture();

  /// 获取通话 ID。
  ///
  /// 客户端在每次加入频道后会生成一个对应的 callId ，标识该客户端的此次通话。你可以调用该方法获取 callId 参数，然后在调用 rate 、 complain 等方法时填入。
  ///
  /// Returns
  /// 通话 ID。
  Future<String> getCallId();

  /// 给通话评分。
  ///
  /// 该方法需要在用户离开频道后调用。
  ///
  /// * [callId] 通话 ID。你可以通过调用 getCallId 获取该参数。
  /// * [rating] 给通话的评分，最低 1 分，最高 5 分。
  /// * [description] 给通话的描述。长度应小于 800 字节。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> rate(
      {required String callId,
      required int rating,
      required String description});

  /// 投诉通话质量。
  ///
  /// 该方法允许用户就通话质量进行投诉。需要在离开频道后调用。
  ///
  /// * [callId] 通话 ID。你可以通过调用 getCallId 获取该参数。
  /// * [description] 通话的描述。长度应小于 800 字节。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> complain({required String callId, required String description});

  /// 开始非转码推流。
  ///
  /// 声网推荐你使用更加完善的服务端推流功能，详见[实现服务端旁路推流](https://doc.shengwang.cn/doc/media-push/restful/landing-page)。
  /// 调用该方法，你可以向指定的旁路推流地址推送直播音视频流。该方法每次只能向一个地址推送媒体流，如果你需要向多个地址转码推流，则需多次调用该方法。
  /// 调用该方法后，SDK 会在本地触发 onRtmpStreamingStateChanged 回调，报告推流的状态。
  ///  请在加入频道后调用该方法。
  ///  只有直播场景下的主播才能调用该方法。
  ///  调用该方法推流失败后，如果你想要重新推流，那么请你务必先调用 stopRtmpStream ，再调用该方法重推，否则 SDK 会返回与上次推流失败时一样的错误码。
  ///
  /// * [url] 旁路推流地址。格式为 RTMP 或 RTMPS。字符长度不能超过 1024 字节。不支持中文字符等特殊字符。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startRtmpStreamWithoutTranscoding(String url);

  /// 开始旁路推流并设置转码属性。
  ///
  /// 声网推荐你使用更加完善的服务端推流功能，详见[实现服务端旁路推流](https://doc.shengwang.cn/doc/media-push/restful/landing-page)。
  /// 调用该方法，你可以向指定的旁路推流地址推送直播音视频流并设置转码属性。该方法每次只能向一个地址推送媒体流，如果你需要向多个地址转码推流，则需多次调用该方法。
  /// 一次推流代表一个推流任务，最大并发任务数默认为 200，表示你在一个声网项目下最多同时运行 200 个推流任务，如需更高配额，请[联系技术支持](https://ticket.shengwang.cn/)。
  /// 调用该方法后，SDK 会在本地触发 onRtmpStreamingStateChanged 回调，报告推流的状态。
  ///  请在加入频道后调用该方法。
  ///  只有直播场景下的主播才能调用该方法。
  ///  调用该方法推流失败后，如果你想要重新推流，那么请你务必先调用 stopRtmpStream ，再调用该方法重推，否则 SDK 会返回与上次推流失败时一样的错误码。
  ///
  /// * [url] 旁路推流地址。格式为 RTMP 或 RTMPS。字符长度不能超过 1024 字节。不支持中文字符等特殊字符。
  /// * [transcoding] 旁路推流的转码属性，详见 LiveTranscoding 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startRtmpStreamWithTranscoding(
      {required String url, required LiveTranscoding transcoding});

  /// 更新旁路推流转码属性。
  ///
  /// 声网推荐你使用更加完善的服务端推流功能，详见[实现服务端旁路推流](https://doc.shengwang.cn/doc/media-push/restful/landing-page)。
  /// 开启转码推流后，你可以根据场景需求，动态更新转码属性。转码属性更新后，SDK 会触发 onTranscodingUpdated 回调。
  ///
  /// * [transcoding] 旁路推流的转码属性，详见 LiveTranscoding 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateRtmpTranscoding(LiveTranscoding transcoding);

  /// 开启本地合图。
  ///
  /// 调用该方法后，你可以在本地将多路视频流合并为一路视频流。例如：将摄像头采集的视频流、屏幕共享流、媒体播放器中的视频流、远端视频流、视频文件、图片等合并为一路视频流，然后将已合图的视频流发布到频道中。
  ///  本地合图对 CPU 的消耗较高，声网建议你在性能较高的设备上开启该功能。
  ///  如果你需要对本地采集的视频流进行合图，SDK 支持如下采集组合：
  ///  在 Windows 平台上，最多支持 4 路摄像头采集的视频流 + 4 路屏幕共享流合图。
  ///  在 macOS 平台上，最多支持 4 路摄像头采集的视频流 + 1 路屏幕共享流合图。
  ///  在 Android 和 iOS 平台上，最多支持 2 路摄像头采集的视频流（需要设备本身支持双摄或支持外接摄像头）+ 1 路屏幕共享合图。
  ///  在进行合图配置时，需确保采集人像的摄像头视频流在合图中的图层编号大于屏幕共享流的图层编号，否则人像会被屏幕共享覆盖、无法显示在最终合图的视频流中。
  ///
  /// * [config] 本地合图的配置，详见 LocalTranscoderConfiguration 。
  ///  参与本地合图的每一路视频流的分辨率最大为 4096 × 2160，如果超出此限制，会导致合图不生效。
  ///  合图后的视频流最大分辨率为 4096 × 2160。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startLocalVideoTranscoder(LocalTranscoderConfiguration config);

  /// 更新本地合图配置。
  ///
  /// 调用 startLocalVideoTranscoder 后，如果你希望更新本地合图配置，请调用该方法。 如果你想要更新用于合图的的本地采集视频源类型，比如：增加第二路摄像头或者屏幕采集的视频，需要在 startCameraCapture 或 startScreenCaptureBySourceType 之后调用该方法。
  ///
  /// * [config] 本地合图的配置，详见 LocalTranscoderConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateLocalTranscoderConfiguration(
      LocalTranscoderConfiguration config);

  /// 结束旁路推流。
  ///
  /// 声网推荐你使用更加完善的服务端推流功能，详见[实现服务端旁路推流](https://doc.shengwang.cn/doc/media-push/restful/landing-page)。
  /// 调用该方法，你可以结束指定的旁路推流地址上的直播。该方法每次只能结束一个推流地址上的直播，如果你需要结束多个推流地址的直播，则需多次调用该方法。
  /// 调用该方法后，SDK 会在本地触发 onRtmpStreamingStateChanged 回调，报告推流的状态。
  ///
  /// * [url] 旁路推流地址。格式为 RTMP 或 RTMPS。字符长度不能超过 1024 字节。不支持中文字符等特殊字符。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopRtmpStream(String url);

  /// 停止本地合图。
  ///
  /// 调用 startLocalVideoTranscoder 后，如果你希望停止本地合图，请调用该方法。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopLocalVideoTranscoder();

  /// 开启本地音频合流。
  ///
  /// 该方法支持在本地将多路音频流合并为一路音频流。例如：将本地麦克风采集的音频流、媒体播放器中的音频流、声卡采集的音频流、远端音频流等合并为一路音频流，然后将合流后的音频流发布到频道中。
  ///  如果你要对本地采集的音频流进行合流，可以将 ChannelMediaOptions 中的 publishMixedAudioTrack 设置为 true ，则可将合流后的音频流发布到频道中。
  ///  如果你要对远端音频流进行合流，需确保远端音频流已在频道内发布并且已被订阅。 为了保证音频质量，建议参与本地合流的音频流数量不超过 10 个。
  ///
  /// * [config] 本地音频合流的配置。详见 LocalAudioMixerConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startLocalAudioMixer(LocalAudioMixerConfiguration config);

  /// 更新本地音频合流的配置。
  ///
  /// 调用 startLocalAudioMixer 后，如果你希望更新本地音频合流的配置，请调用该方法。 为了保证音频质量，建议参与本地合流的音频流数量不超过 10 个。
  ///
  /// * [config] 本地音频合流的配置。详见 LocalAudioMixerConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateLocalAudioMixerConfiguration(
      LocalAudioMixerConfiguration config);

  /// 停止本地音频合流。
  ///
  /// 调用 startLocalAudioMixer 后，如果你希望停止本地音频合流，请调用该方法。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopLocalAudioMixer();

  /// 开始通过摄像头采集视频。
  ///
  /// 调用该方法可以通过指定 sourceType 同时开启多路摄像头采集。 在 iOS 平台上调用该方法前，如果要开启多路摄像头采集，需要在调用该方法前，先调用 enableMultiCamera 并设置 enabled 为 true 。
  ///
  /// * [sourceType] 视频源的类型。详见 VideoSourceType 。
  ///  iOS 设备最多支持 2 路摄像头采集的视频流（要求设备配备多摄像头或支持外接摄像头）。
  ///  Android 设备最多支持 4 路摄像头采集的视频流（要求设备配备多摄像头或支持外接摄像头）。
  ///  桌面端最多支持 4 路摄像头采集的视频流。
  /// * [config] 视频采集配置。详见 CameraCapturerConfiguration 。 在 iOS 平台上，该参数无实际作用。请使用 enableMultiCamera 中的 config 参数设置视频采集配置。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startCameraCapture(
      {required VideoSourceType sourceType,
      required CameraCapturerConfiguration config});

  /// 停止通过摄像头采集视频。
  ///
  /// 调用 startCameraCapture 开启一路或多路摄像头采集的视频流后，你可以调用该方法，通过设置 sourceType 停止一路或多路摄像头的视频采集。 在 iOS 平台上，如果要关闭多路摄像头采集，需要在调用该方法之后调用 enableMultiCamera 并设置 enabled 为 false 。
  /// 如果你正在使用本地合图功能，调用该方法停止通过第一个摄像头采集视频，会造成本地合图中断。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopCameraCapture(VideoSourceType sourceType);

  /// 设置采集视频的旋转角度。
  ///
  /// 该方法仅适用于 Windows。
  ///  该方法必须在 enableVideo 后调用，设置结果在摄像头成功开启后生效，即 SDK 触发 onLocalVideoStateChanged 回调返回本地视频状态为 localVideoStreamStateCapturing (1) 后。
  ///  当视频采集设备不带重力感应功能时，你可以调用该方法手动调整采集到的视频画面的旋转角度。
  ///
  /// * [type] 视频源类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCameraDeviceOrientation(
      {required VideoSourceType type, required VideoOrientation orientation});

  /// @nodoc
  Future<void> setScreenCaptureOrientation(
      {required VideoSourceType type, required VideoOrientation orientation});

  /// 获取当前网络连接状态。
  ///
  /// Returns
  /// 当前网络连接状态。详见 ConnectionStateType 。
  Future<ConnectionStateType> getConnectionState();

  /// 添加主回调事件。
  ///
  /// 接口类 RtcEngineEventHandler 用于 SDK 向 App 发送回调事件通知，App 通过继承该接口类的方法获取 SDK 的事件通知。
  /// 接口类的所有方法都有缺省（空）实现，App 可以根据需要只继承关心的事件。在回调方法中，App 不应该做耗时或者调用可能会引起阻塞的 API（如 sendStreamMessage ），
  /// 否则可能影响 SDK 的运行。
  ///
  /// * [eventHandler] 待添加的回调事件，详见 RtcEngineEventHandler 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerEventHandler(RtcEngineEventHandler eventHandler);

  /// 删除指定的回调事件。
  ///
  /// 该方法用于删除已添加的所有回调事件。
  ///
  /// * [eventHandler] 待删除的回调事件。详见 RtcEngineEventHandler 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterEventHandler(RtcEngineEventHandler eventHandler);

  /// @nodoc
  Future<void> setRemoteUserPriority(
      {required int uid, required PriorityType userPriority});

  /// 开启或关闭内置加密。
  ///
  /// 用户离开频道后，SDK 会自动关闭加密。如需重新开启加密，你需要在用户再次加入频道前调用该方法。
  ///  同一频道内的所有用户在调用该方法时，必须设置相同的加密模式和密钥。
  ///  如果开启了内置加密，则不能使用旁路推流功能。
  ///
  /// * [enabled] 是否开启内置加密： true : 开启内置加密。 false :（默认）关闭内置加密。
  /// * [config] 配置内置加密模式和密钥。详见 EncryptionConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableEncryption(
      {required bool enabled, required EncryptionConfig config});

  /// 创建数据流。
  ///
  /// 如你需要更加全面的低延时、高并发、可扩展的实时消息及状态同步解决方案，推荐使用[实时消息](https://doc.shengwang.cn/doc/rtm2/flutter/landing-page)。
  /// 在 RtcEngine 生命周期内，每个用户最多只能创建 5 个数据流。离开频道时数据流会被销毁，如需使用需要重新创建数据流。
  ///
  /// * [config] 数据流设置。详见 DataStreamConfig 。
  ///
  /// Returns
  /// 创建的数据流的 ID：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> createDataStream(DataStreamConfig config);

  /// 发送数据流。
  ///
  /// 调用 createDataStream 后，你可以调用该方法向频道内所有用户发送数据流消息。
  /// SDK 对该方法的实现进行了如下限制：
  ///  频道内每个客户端最多可以同时拥有 5 个数据通道，所有数据通道共用的总发包码率限制为 30 KB/s。
  ///  每个数据通道每秒最多能发送 60 个包，每个包最大为 1 KB。 成功调用该方法后，远端会触发 onStreamMessage 回调，远端用户可以在该回调中获取接收到的流消息；若调用失败，远端会触发 onStreamMessageError 回调。 如你需要更加全面的低延时、高并发、可扩展的实时消息及状态同步解决方案，推荐使用[实时消息](https://doc.shengwang.cn/doc/rtm2/flutter/landing-page)。
  ///  该方法需要在加入频道后、且调用 createDataStream 创建数据通道之后调用。
  ///  该方法仅适用于主播用户。
  ///
  /// * [streamId] 数据流 ID。可以通过 createDataStream 获取。
  /// * [data] 待发送的数据。
  /// * [length] 数据长度。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> sendStreamMessage(
      {required int streamId, required Uint8List data, required int length});

  /// @nodoc
  Future<void> sendRdtMessage(
      {required int uid,
      required RdtStreamType type,
      required String data,
      required int length});

  /// @nodoc
  Future<void> sendMediaControlMessage(
      {required int uid, required String data, required int length});

  /// 添加本地视频水印。
  ///
  /// 废弃 弃用：该方法已废弃，请改用 addVideoWatermarkWithConfig 。 该方法将一张 PNG 图片作为水印添加到本地发布的直播视频流上，同一直播频道中的用户、旁路直播观众和采集设备都能看到或采集到该水印图片。当前只支持在直播视频流中添加一个水印，后添加的水印会替换掉之前添加的水印。
  /// 水印坐标和 setVideoEncoderConfiguration 方法中的设置有依赖关系：
  ///  如果视频编码方向（ OrientationMode ）固定为横屏或自适应模式下的横屏，那么水印使用横屏坐标。
  ///  如果视频编码方向（ OrientationMode ）固定为竖屏或自适应模式下的竖屏，那么水印使用竖屏坐标。
  ///  设置水印坐标时，水印的图像区域不能超出 setVideoEncoderConfiguration 方法中设置的视频尺寸，否则超出部分将被裁剪。
  ///  你需要在调用 enableVideo 方法之后再调用该方法。
  ///  如果你只是在旁路推流时添加水印，你可以使用该方法或 startRtmpStreamWithTranscoding 方法设置水印。
  ///  待添加水印图片必须是 PNG 格式。该方法支持所有像素格式的 PNG 图片：RGBA、RGB、Palette、Gray 和 Alpha_gray。
  ///  如果待添加的 PNG 图片的尺寸与你在该方法中设置的尺寸不一致，SDK 会对 PNG 图片进行缩放或裁剪，以与设置相符。
  ///  如果你已设置本地视频为镜像模式，那么此处的本地水印也为镜像。为避免本地用户看本地视频时的水印也被镜像，建议你不要对本地视频同时使用镜像和水印功能，请在应用层实现本地水印功能。
  ///
  /// * [watermarkUrl] 待添加的水印图片的本地路径。该方法支持从本地绝对/相对路径添加水印图片。
  /// * [options] 待添加的水印图片的设置选项，详见 WatermarkOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> addVideoWatermark(
      {required String watermarkUrl, required WatermarkOptions options});

  /// 从本地视频中移除水印图像。
  ///
  /// 自从 自 v6.6.2 版本新增。 该方法根据指定的唯一 ID，从本地视频流中移除之前添加的水印图像。
  ///
  /// * [id] 要移除的水印的 ID。该值需与添加水印时使用的 ID 相同。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> removeVideoWatermark(String id);

  /// 删除已添加的视频水印。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> clearVideoWatermarks();

  /// @nodoc
  Future<void> pauseAudio();

  /// @nodoc
  Future<void> resumeAudio();

  /// 打开与 Web SDK 的互通（仅在直播场景适用）。
  ///
  /// 废弃 弃用: 该方法已废弃，SDK 自动开启与 Web SDK 的互通，无需调用该方法开启。 该方法打开或关闭与 Web SDK 的互通。如果有用户通过 Web SDK 加入频道，请确保调用该方法，否则 Web 端用户看 Native 端的画面会是黑屏。
  /// 该方法仅在直播场景下适用，通信场景下默认互通是打开的。
  ///
  /// * [enabled] 是否打开与 Web SDK 的互通： true : 打开互通。 false : (默认) 关闭互通。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableWebSdkInteroperability(bool enabled);

  /// 发送自定义上报消息。
  ///
  /// 声网提供自定义数据上报和分析服务。该服务当前处于免费内测期。内测期提供的能力为 6 秒内最多上报 10 条数据，每条自定义数据不能超过 256 字节，每个字符串不能超过 100 字节。如需试用该服务，请[联系销售](https://www.shengwang.cn/contact-sales/)开通并商定自定义数据格式。
  Future<void> sendCustomReportMessage(
      {required String id,
      required String category,
      required String event,
      required String label,
      required int value});

  /// 注册媒体 metadata 观测器用于接收或发送 metadata。
  ///
  /// 你需要自行实现 MetadataObserver 类并在本方法中指定 metadata 类型。本方法允许你为视频流添加同步的 metadata，用于多样化的直播互动，如发送购物链接、电子优惠券和在线测试。 请在 joinChannel 前调用该方法。
  ///
  /// * [observer] metadata 观测器。详见 MetadataObserver 。
  /// * [type] metadata 类型。目前仅支持 videoMetadata 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerMediaMetadataObserver(
      {required MetadataObserver observer, required MetadataType type});

  /// 取消注册媒体 metadata 观测器。
  ///
  /// * [observer] metadata 观测器，详见 MetadataObserver 。
  /// * [type] metadata 类型。目前仅支持 videoMetadata 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterMediaMetadataObserver(
      {required MetadataObserver observer, required MetadataType type});

  /// @nodoc
  Future<void> startAudioFrameDump(
      {required String channelId,
      required int uid,
      required String location,
      required String uuid,
      required String passwd,
      required int durationMs,
      required bool autoUpload});

  /// @nodoc
  Future<void> stopAudioFrameDump(
      {required String channelId, required int uid, required String location});

  /// 设置是否开启 AI 降噪功能并设置降噪模式。
  ///
  /// 你可以调用开方法来开启 AI 降噪功能。该功能可以在保证语音质量的前提下，智能化检测并降低周围环境中多种稳态与非稳态噪声，使人声更加清晰。
  /// 稳态噪声指在任何时间点上都具有相同频率的噪声，常见的稳态噪声有：
  ///  电视机噪声
  ///  空调噪声
  ///  工厂机器噪声等 非稳态噪声是指随时间而快速变化的噪声，常见的非稳态噪声有：
  ///  雷声
  ///  爆炸声
  ///  破裂声等
  ///  该方法依赖于 AI 降噪动态库，如果删除该动态库会导致无法正常开启该功能。AI 降噪动态库名称见[插件列表](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/reduce-app-size#%E6%8F%92%E4%BB%B6%E5%88%97%E8%A1%A8)。
  ///  目前暂不推荐在 Android 6.0 及以下版本的设备上开启该功能。
  ///
  /// * [enabled] 是否开启 AI 降噪功能： true ：开启 AI 降噪功能。 false ：（默认）关闭 AI 降噪功能。
  /// * [mode] 降噪模式，详见 AudioAinsMode 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAINSMode(
      {required bool enabled, required AudioAinsMode mode});

  /// 注册本地用户 User Account。
  ///
  /// 该方法为本地用户注册一个 User Account。注册成功后，该 User Account 即可标识该本地用户的身份，用户可以使用它加入频道。
  /// 该方法为可选。如果你希望用户使用 User Account 加入频道，可参考下列任意一种方式实现：
  ///  先调用 registerLocalUserAccount 方法注册 Account，再调用 joinChannelWithUserAccount 方法加入频道，可以缩短进入频道的时间。
  ///  直接调用 joinChannelWithUserAccount 方法加入频道。
  ///  请确保在该方法中设置的 userAccount 在频道中的唯一性。
  ///  为保证通信质量，请确保频道内使用同一类型的数据标识用户身份。即同一频道内需要统一使用 UID 或 User Account。如果有用户通过 Web SDK 加入频道，请确保 Web 加入的用户也是同样类型。
  ///
  /// * [appId] 你的项目在控制台注册的 App ID。
  /// * [userAccount] 用户 User Account。该参数用于标识实时音视频互动频道中的用户。你需要自行设置和管理用户的 User Account，并确保同一频道中每个用户的 User Account 是唯一的。该参数为必填，最大不超过 255 字节，不可填 null 。以下为支持的字符集范围（共 89 个字符）：
  ///  26 个小写英文字母 a-z
  ///  26 个大写英文字母 A-Z
  ///  10 个数字 0-9
  ///  空格
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> registerLocalUserAccount(
      {required String appId, required String userAccount});

  /// 使用 User Account 和 Token 加入频道，并设置频道媒体选项。
  ///
  /// 调用该方法前，如果你未调用 registerLocalUserAccount 注册一个 User Account，调用该方法加入频道时，SDK 会自动为你创建一个 User Account。先调用 registerLocalUserAccount 方法注册 Account，再调用此方法加入频道，可以缩短进入频道的时间。
  /// 用户成功加入频道后，默认订阅频道内所有其他用户的音频流和视频流，因此产生用量并影响计费。如果想取消订阅，可以通过调用相应的 mute 方法实现。 为保证通信质量，请确保频道内使用同一类型的数据标识用户身份。即同一频道内需要统一使用 UID 或 User Account。如果有用户通过 Web SDK 加入频道，请确保 Web 加入的用户也是同样类型。
  ///  该方法仅支持用户一次加入一个频道。
  ///  使用不同 App ID 的 App 不能互通。
  ///  加入频道前，请确保用于生成 Token 的 App ID 和调用 initialize 方法初始化引擎时使用的是同一个 App ID，否则使用 Token 加入频道会失败。
  ///
  /// * [token] 在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  ///  （推荐）如果你的项目开启了安全模式，即选择 APP ID + Token 为鉴权机制，则该参数为必填。
  ///  如果你的项目仅开启调试模式，即选择 APP ID 为鉴权机制，则无需填入 Token 即可加入频道。成功加入频道 24 小时后会自动退出该频道。
  ///  如果你需要同时加入多个频道或在频道间频繁切换，声网推荐你使用通配 Token 以避免每加入一个新的频道都需向服务端申请一个新的 Token，详见 [使用通配 Token](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/wildcard-token)。
  /// * [userAccount] 用户 User Account。该参数用于标识实时音视频互动频道中的用户。你需要自行设置和管理用户的 User Account，并确保同一频道中每个用户的 User Account 是唯一的。 该参数为必填，最大不超过 255 字节，不可填 null 。以下为支持的字符集范围（共 89 个字符）：
  ///  26 个小写英文字母 a-z
  ///  26 个大写英文字母 A-Z
  ///  10 个数字 0-9
  ///  空格
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  /// * [options] 频道媒体设置选项。详见 ChannelMediaOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2：传入的参数无效。例如，使用了不合法的 Token， uid 参数未设置为整型，或 ChannelMediaOptions 成员值不合法。你需要填入有效的参数，重新加入频道。
  ///  -3： RtcEngine 对象初始化失败。你需要重新初始化 RtcEngine 对象。
  ///  -7： RtcEngine 对象尚未初始化。你需要在调用该方法前成功初始化 RtcEngine 对象。
  ///  -8： RtcEngine 对象内部状态错误。可能的原因是：调用 startEchoTest 开始通话回路测试后，未调用 stopEchoTest 停止测试就调用该方法加入频道。你需要在该方法前调用 stopEchoTest 。
  ///  -17：加入频道被拒绝。可能的原因是用户已经在频道中。建议通过 onConnectionStateChanged 回调判断用户是否在频道中。除收到 connectionStateDisconnected (1) 状态外，不要再次调用该方法加入频道。
  ///  -102：频道名无效。你需要在 channelId 中填入有效的频道名，重新加入频道。
  ///  -121：用户 ID 无效。你需要在 uid 中填入有效的用户 ID，重新加入频道。
  Future<void> joinChannelWithUserAccount(
      {required String token,
      required String channelId,
      required String userAccount,
      ChannelMediaOptions? options});

  /// 使用 User Account 和 Token 加入频道，并设置频道媒体选项。
  ///
  /// 调用该方法前，如果你未调用 registerLocalUserAccount 注册一个 User Account，调用该方法加入频道时，SDK 会自动为你创建一个 User Account。先调用 registerLocalUserAccount 方法注册 Account，再调用此方法加入频道，可以缩短进入频道的时间。
  /// 用户成功加入频道后，默认订阅频道内所有其他用户的音频流和视频流，因此产生用量并影响计费。如果想取消订阅，可以通过设置 options 参数或调用相应的 mute 方法实现。 为保证通信质量，请确保频道内使用同一类型的数据标识用户身份。即同一频道内需要统一使用 UID 或 User Account。如果有用户通过 Web SDK 加入频道，请确保 Web 加入的用户也是同样类型。
  ///  该方法仅支持用户一次加入一个频道。
  ///  使用不同 App ID 的 App 不能互通。
  ///  加入频道前，请确保用于生成 Token 的 App ID 和调用 initialize 方法初始化引擎时使用的是同一个 App ID，否则使用 Token 加入频道会失败。
  ///
  /// * [token] 在服务端生成的用于鉴权的动态密钥。详见[使用 Token 鉴权](https://doc.shengwang.cn/doc/rtc/flutter/basic-features/token-authentication)。
  ///  （推荐）如果你的项目开启了安全模式，即选择 APP ID + Token 为鉴权机制，则该参数为必填。
  ///  如果你的项目仅开启调试模式，即选择 APP ID 为鉴权机制，则无需填入 Token 即可加入频道。成功加入频道 24 小时后会自动退出该频道。
  ///  如果你需要同时加入多个频道或在频道间频繁切换，声网推荐你使用通配 Token 以避免每加入一个新的频道都需向服务端申请一个新的 Token，详见 [使用通配 Token](https://doc.shengwang.cn/doc/rtc/flutter/best-practice/wildcard-token)。
  /// * [userAccount] 用户 User Account。该参数用于标识实时音视频互动频道中的用户。你需要自行设置和管理用户的 User Account，并确保同一频道中每个用户的 User Account 是唯一的。 该参数为必填，最大不超过 255 字节，不可填 null 。以下为支持的字符集范围（共 89 个字符）：
  ///  26 个小写英文字母 a-z
  ///  26 个大写英文字母 A-Z
  ///  10 个数字 0-9
  ///  空格
  ///  "!"、"#"、"$"、"%"、"&"、"("、")"、"+"、"-"、":"、";"、"<"、"="、"."、">"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","
  /// * [options] 频道媒体设置选项。详见 ChannelMediaOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2：传入的参数无效。例如，使用了不合法的 Token， uid 参数未设置为整型，或 ChannelMediaOptions 成员值不合法。你需要填入有效的参数，重新加入频道。
  ///  -3： RtcEngine 对象初始化失败。你需要重新初始化 RtcEngine 对象。
  ///  -7： RtcEngine 对象尚未初始化。你需要在调用该方法前成功初始化 RtcEngine 对象。
  ///  -8： RtcEngine 对象内部状态错误。可能的原因是：调用 startEchoTest 开始通话回路测试后，未调用 stopEchoTest 停止测试就调用该方法加入频道。你需要在该方法前调用 stopEchoTest 。
  ///  -17：加入频道被拒绝。可能的原因是用户已经在频道中。建议通过 onConnectionStateChanged 回调判断用户是否在频道中。除收到 connectionStateDisconnected (1) 状态外，不要再次调用该方法加入频道。
  ///  -102：频道名无效。你需要在 channelId 中填入有效的频道名，重新加入频道。
  ///  -121：用户 ID 无效。你需要在 uid 中填入有效的用户 ID，重新加入频道。
  Future<void> joinChannelWithUserAccountEx(
      {required String token,
      required String channelId,
      required String userAccount,
      required ChannelMediaOptions options});

  /// 通过 User Account 获取用户信息。
  ///
  /// 远端用户加入频道后，SDK 会获取到该远端用户的 UID 和 User Account，然后缓存一个包含了远端用户 UID 和 User Account 的映射表，并在本地触发 onUserInfoUpdated 回调。收到回调后，调用该方法传入 User Account 来获取包含了指定用户 UID 的 UserInfo 对象。
  ///
  /// * [userAccount] 用户 User Account。
  ///
  /// Returns
  /// 方法调用成功，返回 UserInfo 对象。
  ///  方法调用失败，则返回 null 。
  Future<UserInfo> getUserInfoByUserAccount(String userAccount);

  /// 通过 UID 获取用户信息。
  ///
  /// 远端用户加入频道后，SDK 会获取到该远端用户的 UID 和 User Account，然后缓存一个包含了远端用户 UID 和 User Account 的映射表，并在本地触发 onUserInfoUpdated 回调。收到回调后，调用该方法传入 UID 来获取包含了指定用户 User Account 的 UserInfo 对象。
  ///
  /// * [uid] 用户 ID。
  ///
  /// Returns
  /// 方法调用成功，返回 UserInfo 对象。
  ///  方法调用失败，则返回 null 。
  Future<UserInfo> getUserInfoByUid(int uid);

  /// 开始或更新跨频道媒体流转发。
  ///
  /// 首次成功调用该方法将开始跨频道转发媒体流。如需将流转发到多个目标频道，或退出当前的转发频道，可以再次调用该方法添加或移除转发的目标频道。该功能最多支持将媒体流转发至 6 个目标频道。
  /// 成功调用该方法后，SDK 会触发 onChannelMediaRelayStateChanged 回调，报告当前的跨频道媒体流转发状态。常见状态如下：
  ///  如果 onChannelMediaRelayStateChanged 回调报告 relayStateRunning (2) 和 relayOk (0)， 则表示 SDK 开始在源频道和目标频道之间转发媒体流。
  ///  如果 onChannelMediaRelayStateChanged 回调报告 relayStateFailure (3)， 则表示跨频道媒体流转发出现异常。
  ///  请在成功加入频道后调用该方法。
  ///  在直播场景中，只有角色为主播的用户才能调用该方法。
  ///  跨频道媒体流转发功能需要[联系技术支持](https://ticket.shengwang.cn/)开通。
  ///  该功能不支持 String 型 UID。
  ///
  /// * [configuration] 跨频道媒体流转发参数配置。详见 ChannelMediaRelayConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -1: 一般性的错误（未明确归类）。
  ///  -2: 参数无效。
  ///  -8：内部状态错误。可能因为用户角色不是主播。
  Future<void> startOrUpdateChannelMediaRelay(
      ChannelMediaRelayConfiguration configuration);

  /// 停止跨频道媒体流转发。一旦停止，主播会退出所有目标频道。
  ///
  /// 成功调用该方法后，SDK 会触发 onChannelMediaRelayStateChanged 回调。如果报告 relayStateIdle (0) 和 relayOk (0)，则表示已停止转发媒体流。 如果该方法调用不成功，SDK 会触发 onChannelMediaRelayStateChanged 回调，并报告状态码 relayErrorServerNoResponse (2) 或 relayErrorServerConnectionLost (8)。你可以调用 leaveChannel 方法离开频道，跨频道媒体流转发会自动停止。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -5: 方法调用被拒绝。当前没有正在进行的跨频道媒体流转发。
  Future<void> stopChannelMediaRelay();

  /// 暂停向所有目标频道转发媒体流。
  ///
  /// 开始跨频道转发媒体流后，如果你需要暂停向所有频道转发媒体流，可以调用该方法；暂停后，如果要恢复跨频道媒体流转发，可以调用 resumeAllChannelMediaRelay 方法。 该方法需要在调用 startOrUpdateChannelMediaRelay 开始跨频道媒体流转发后调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pauseAllChannelMediaRelay();

  /// 恢复向所有目标频道转发媒体流。
  ///
  /// 调用 pauseAllChannelMediaRelay 方法后，如果你需要恢复向所有目标频道转发媒体流，可以调用该方法。 该方法需要在 pauseAllChannelMediaRelay 后调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -5: 方法调用被拒绝。当前没有暂停的跨频道媒体流转发。
  Future<void> resumeAllChannelMediaRelay();

  /// @nodoc
  Future<void> setDirectCdnStreamingAudioConfiguration(
      AudioProfileType profile);

  /// @nodoc
  Future<void> setDirectCdnStreamingVideoConfiguration(
      VideoEncoderConfiguration config);

  /// @nodoc
  Future<void> startDirectCdnStreaming(
      {required DirectCdnStreamingEventHandler eventHandler,
      required String publishUrl,
      required DirectCdnStreamingMediaOptions options});

  /// @nodoc
  Future<void> stopDirectCdnStreaming();

  /// @nodoc
  Future<void> updateDirectCdnStreamingMediaOptions(
      DirectCdnStreamingMediaOptions options);

  /// 开启虚拟节拍器。
  ///
  /// 废弃 自 v6.6.2 版本废弃。
  ///  开启虚拟节拍器后，SDK 会从头开始播放指定的音频文件，并根据你在 AgoraRhythmPlayerConfig 中设置的 beatsPerMinute 控制每个文件的播放时长。例如，将 beatsPerMinute 设为 60 ，则 SDK 会 1 秒播放 1 个节拍。如果文件时长超过了节拍时长，则 SDK 只播放节拍时长部分的音频。
  ///  虚拟节拍器的声音默认不会发布至远端，如果你希望远端用户听到虚拟节拍器的声音，你可以在调用该方法后，将 ChannelMediaOptions 中的 publishRhythmPlayerTrack 设为 true 。
  ///
  /// * [sound1] 强拍文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 C:\music\audio.mp4 。支持的音频文件格式见 [RTC SDK 支持播放哪些格式的音频文件](https://doc.shengwang.cn/faq/general-product-inquiry/audio-format)。
  /// * [sound2] 弱拍文件的绝对路径或 URL 地址，需精确到文件名及后缀。例如 C:\music\audio.mp4 。支持的音频文件格式见 [RTC SDK 支持播放哪些格式的音频文件](https://doc.shengwang.cn/faq/general-product-inquiry/audio-format)。
  /// * [config] 节拍器配置。详见 AgoraRhythmPlayerConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startRhythmPlayer(
      {required String sound1,
      required String sound2,
      required AgoraRhythmPlayerConfig config});

  /// 关闭虚拟节拍器。
  ///
  /// 调用 startRhythmPlayer 后，你可以调用该方法关闭虚拟节拍器。 该方法仅适用于 Android 和 iOS。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopRhythmPlayer();

  /// 配置虚拟节拍器。
  ///
  /// 废弃 自 v6.6.2 版本废弃。
  ///  调用 startRhythmPlayer 后，你可以调用该方法重新配置虚拟节拍器。
  ///  开启虚拟节拍器后，SDK 会从头开始播放指定的音频文件，并根据你在 AgoraRhythmPlayerConfig 中设置的 beatsPerMinute 控制每个文件的播放时长。例如，将 beatsPerMinute 设为 60 ，则 SDK 会 1 秒播放 1 个节拍。如果文件时长超过了节拍时长，则 SDK 只播放节拍时长部分的音频。
  ///  虚拟节拍器的声音默认不会发布至远端，如果你希望远端用户听到虚拟节拍器的声音，你可以在调用该方法后，将 ChannelMediaOptions 中的 publishRhythmPlayerTrack 设为 true 。
  ///
  /// * [config] 节拍器配置。详见 AgoraRhythmPlayerConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> configRhythmPlayer(AgoraRhythmPlayerConfig config);

  /// 对视频截图。
  ///
  /// 该方法用于对指定用户的视频流进行截图，生成一张 JPG 格式的图片，并保存至指定的路径。
  ///  该方法是异步操作，调用返回时 SDK 并没有真正获取截图。
  ///  该方法用于本地视频截图时，是对 ChannelMediaOptions 中指定发布的视频流进行截图。
  ///  如果用户的视频经过前处理，例如，添加了水印或美颜，生成的截图会包含前处理效果。
  ///
  /// * [uid] 用户 ID。如果要对本地用户的视频截图，则设为 0。
  /// * [filePath] 请确保目录存在且可写。 截图的本地保存路径，需精确到文件名及格式，例如：
  ///  Windows: C:\Users\<user_name>\AppData\Local\Agora\<process_name>\example.jpg
  ///  iOS: /App Sandbox/Library/Caches/example.jpg
  ///  macOS: ～/Library/Logs/example.jpg
  ///  Android: /storage/emulated/0/Android/data/<package name>/files/example.jpg
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> takeSnapshot({required int uid, required String filePath});

  /// 开启/关闭本地截图上传。
  ///
  /// 开启本地截图上传后，SDK 会根据你在 ContentInspectConfig 中设置的模块类型和频率对本地用户发送的视频进行截图和上传。截图完成后，声网服务器会以 HTTPS 请求的形式，向你的服务器发送回调通知，并将所有截图发送至你指定的第三方云存储。
  ///  调用该方法前，请确保已在声网控制台开通本地截图上传服务。
  ///  视频审核模块选择声网自研插件截图上传（ contentInspectSupervision ）时需集成本地截图上传动态库 libagora_content_inspect_extension.dll ，如果删除该动态库会导致无法正常开启本地截图上传功能。
  ///
  /// * [enabled] 设置是否开启本地截图上传： true ：开启本地截图上传。 false ：关闭本地截图上传。
  /// * [config] 本地截图上传配置。详见 ContentInspectConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableContentInspect(
      {required bool enabled, required ContentInspectConfig config});

  /// 调节自定义音频采集轨道在远端播放的音量。
  ///
  /// 调用该方法设置音频在远端播放的音量后，如果你想重新调整音量，你可以再次调用该方法。 在调用该方法前，请确保你已经调用 createCustomAudioTrack 方法创建自定义音频采集轨道。
  ///
  /// * [trackId] 音频轨道 ID。将该参数设置为调用 createCustomAudioTrack 方法返回的自定义音频轨道 ID。
  /// * [volume] 自定义采集音频的播放音量，取值范围为 [0,100]。0 表示静音，100 表示原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustCustomAudioPublishVolume(
      {required int trackId, required int volume});

  /// 调节自定义音频采集轨道在本地播放的音量。
  ///
  /// 调用该方法设置音频在本地播放的音量后，如果你想重新调整音量，你可以再次调用该方法。 在调用该方法前，请确保你已经调用 createCustomAudioTrack 方法创建自定义音频采集轨道。
  ///
  /// * [trackId] 音频轨道 ID。将该参数设置为调用 createCustomAudioTrack 方法返回的自定义音频轨道 ID。
  /// * [volume] 自定义采集音频的播放音量，取值范围为 [0,100]。0 表示静音，100 表示原始音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> adjustCustomAudioPlayoutVolume(
      {required int trackId, required int volume});

  /// 设置云代理服务。
  ///
  /// 当用户的网络访问受到防火墙限制时，你需要将声网提供的 IP 和端口号添加到防火墙白名单，然后调用该方法开启云代理，并通过 proxyType 参数设置云代理类型。
  /// 成功连接云代理后，SDK 会触发 onConnectionStateChanged (connectionStateConnecting, connectionChangedSettingProxyServer) 回调。
  /// 如果你想关闭已设置的 Force UDP 或 Force TCP 云代理，请调用 setCloudProxy(noneProxy) 。
  /// 如果你想更改已设置的云代理类型，请先调用 setCloudProxy(noneProxy) ，再调用 setCloudProxy 并传入你期望的 proxyType 值。
  ///  建议你在频道外调用该方法。
  ///  如果用户处于内网防火墙环境下，使用 Force UDP 云代理时，旁路推流和跨频道媒体流转发功能不可用。
  ///  使用 Force UDP 云代理时，调用 startAudioMixing 方法时无法播放 HTTP 协议的在线音频文件。旁路推流和跨频道媒体流转发功能会使用 TCP 协议的云代理。
  ///
  /// * [proxyType] 云代理类型，详见 CloudProxyType 。
  /// 该参数为必填参数，如果你不赋值，SDK 会报错。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setCloudProxy(CloudProxyType proxyType);

  /// 配置与声网私有媒体服务器接入模块的连接。
  ///
  /// 成功部署声网私有媒体服务器并在内网终端集成 4.x RTC SDK 后，你可以调用该方法指定 Local Access Point，给 SDK 分配接入模块。 该方法仅在部署声网混合云方案后生效。你可以[联系销售](https://www.shengwang.cn/contact-sales/)了解和部署声网混合云。
  ///
  /// * [config] Local Access Point 配置。详见 LocalAccessPointConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLocalAccessPoint(LocalAccessPointConfiguration config);

  /// 设置音频的高级选项。
  ///
  /// 如果你对音频处理有进阶需求，例如需要采集和发送立体声，可以调用该方法设置音频的高级选项。 你需要在 joinChannel 、 enableAudio 和 enableLocalAudio 前调用该方法。
  ///
  /// * [options] 音频的高级选项。详见 AdvancedAudioOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAdvancedAudioOptions(
      {required AdvancedAudioOptions options, int sourceType = 0});

  /// 设置发流端音画同步。
  ///
  /// 同一用户可能使用两个设备分别发送音频流和视频流，为保证接收端听到和看到的音频和视频的时间同步性，你可以在视频发送端调用该方法，并传入音频发送端的频道名、用户 ID。 SDK 会以发送的音频流的时间戳为基准进行自动调节发送的视频流，以保证即使在两个发送端的上行网络情况不一致（如分别使用 Wi-Fi 和 4G 网络）的情况下，也能让接收到的音视频具有时间同步性。 建议你在加入频道前调用该方法。
  ///
  /// * [channelId] 标识音频发送端所在频道的频道名。
  /// * [uid] 音频发送端的用户 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setAVSyncSource({required String channelId, required int uid});

  /// 设置是否开启垫片推流功能。
  ///
  /// 在发布视频流时，你可以调用该方法使用自定义图片来替代当前发布的视频流画面进行推流。
  /// 开启该功能后，你可以通过 ImageTrackOptions 参数自定义垫片图片；在你关闭垫片功能之后，远端用户看到的依旧是当前你发布的视频流画面。
  ///
  /// * [enable] 是否开启垫片推流： true ：开启垫片推流。 false ：（默认）关闭垫片推流。
  /// * [options] 垫片图片设置，详见 ImageTrackOptions 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableVideoImageSource(
      {required bool enable, required ImageTrackOptions options});

  /// 获取 SDK 当前的 Monotonic Time。
  ///
  /// Monotonic Time 是指一个单调递增的时间序列，它的值会随着时间的推移而增加。单位为毫秒。
  /// 在自定义视频采集、自定义音频采集场景中，为确保音视频同步，声网建议你调用该方法获取 SDK 当前的 Monotonic Time 后，将该值传入采集的视频帧（ VideoFrame ）、音频帧（ AudioFrame ）的时间戳参数。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功，返回 SDK 当前的 Monotonic Time（毫秒）。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getCurrentMonotonicTimeInMs();

  /// 获取本地网络连接类型。
  ///
  /// 你可以在任何阶段通过该方法获取正在使用的网络类型。 该方法在加入频道前后均可调用。
  ///
  /// Returns
  /// ≥ 0: 方法调用成功，返回本地网络连接类型。
  ///  0：网络连接已断开。
  ///  1：网络类型为 LAN。
  ///  2：网络类型为 Wi-Fi（包含热点）。
  ///  3：网络类型为 2G 移动网络。
  ///  4：网络类型为 3G 移动网络。
  ///  5：网络类型为 4G 移动网络。
  ///  6：网络类型为 5G 移动网络。
  ///  < 0: 方法调用失败，返回错误码。
  ///  -1：网络连接类型未知。
  Future<int> getNetworkType();

  /// SDK 的 JSON 配置信息，用于提供技术预览或特别定制功能。
  ///
  /// * [parameters] JSON 字符串形式的参数。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setParameters(String parameters);

  /// 开启视频帧渲染数据打点。
  ///
  /// 成功调用该方法后，SDK 会以调用该方法的时刻作为起点，并通过 onVideoRenderingTracingResult 回调报告视频帧渲染的相关信息。
  ///  如果你未调用该方法，SDK 默认以调用 joinChannel 加入频道的时刻为起始点开始打点，自动开始跟踪视频的渲染事件。你可以根据实际业务场景，在合适的时机调用该方法，进行自定义打点。
  ///  离开当前频道后，SDK 会自动重置该时间点为下一次加入频道的时刻。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startMediaRenderingTracing();

  /// 开启音视频帧加速渲染。
  ///
  /// 成功调用该方法后，SDK 会开启加速出图和出声模式，可加快用户加入频道后的首帧出图与出声速度。 主播端和观众端都需调用该方法开启音视频帧加速渲染才可体验该功能。
  /// 一旦成功调用该方法，只能通过调用 release 方法销毁 RtcEngine 对象来取消加速渲染。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> enableInstantMediaRendering();

  /// 获取当前的 NTP (网络时间协议) 时间。
  ///
  /// 在实时合唱的场景中，特别是在各个接收端由于网络原因导致下行链路不一致的情况下，你可以调用该方法来获取当前的 NTP 时间作为基准时间，以对齐多个接收端的歌词和音乐，实现合唱同步。
  ///
  /// Returns
  /// 当前 NTP 时间的 Unix 时间戳 (毫秒)。
  Future<int> getNtpWallTimeInMs();

  /// 查询设备是否支持指定进阶功能。
  ///
  /// 查询当前设备能力是否满足虚拟背景、美颜等进阶功能的要求。
  ///
  /// * [type] 进阶功能类型，详见 FeatureType 。
  ///
  /// Returns
  /// true : 设备支持指定进阶功能。 false : 设备不支持指定进阶功能。
  Future<bool> isFeatureAvailableOnDevice(FeatureType type);

  /// @nodoc
  Future<void> sendAudioMetadata(
      {required Uint8List metadata, required int length});

  /// @nodoc
  Future<HdrCapability> queryHDRCapability(VideoModuleType videoModule);

  /// 向本地视频流添加水印图像。
  ///
  /// 自从 自 v6.6.2 版本新增。 你可以使用该方法在本地视频流中叠加水印图像，并通过 WatermarkConfig 设置水印在预览画面中的位置、大小和可见性。
  ///
  /// * [configs] 水印配置。详见 WatermarkConfig 。
  ///
  /// Returns
  /// 0：方法调用成功。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> addVideoWatermarkWithConfig(WatermarkConfig configs);

  /// 开始屏幕采集并指定视频源。
  ///
  /// 该方法仅适用于 macOS 和 Windows 平台。
  ///  如果调用该方法开始屏幕采集，则停止屏幕采集时需要调用 stopScreenCaptureBySourceType 。
  ///  在 Windows 平台上，最多支持 4 路屏幕采集的视频流。
  ///  在 macOS 平台上，最多支持 1 路屏幕采集的视频流。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。 在 macOS 平台上，仅支持将该参数设置为 videoSourceScreen (2)。
  /// * [config] 屏幕采集配置。详见 ScreenCaptureConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startScreenCaptureBySourceType(
      {required VideoSourceType sourceType,
      required ScreenCaptureConfiguration config});

  /// 停止对指定的视频源进行屏幕采集。
  ///
  /// 该方法仅适用于 macOS 和 Windows 平台。
  ///
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopScreenCaptureBySourceType(VideoSourceType sourceType);

  /// 销毁 RtcEngine 对象。
  ///
  /// 该方法释放 SDK 使用的所有资源。有些 App 只在用户需要时才进行实时音视频通信，不需要时则将资源释放出来用于其他操作，该方法适用于此类情况。
  /// 调用该方法后，你将无法再使用 SDK 的其它方法和回调。如需再次使用实时音视频通信功能， 你必须依次重新调用 createAgoraRtcEngine 和 initialize 方法创建一个新的 RtcEngine 对象。
  ///  该方法为同步调用。需要等待 RtcEngine 资源释放后才能执行其他操作（例如：创建一个新的 RtcEngine 对象），因此建议在子线程中调用该方法，避免主线程阻塞。
  ///  不建议在 SDK 的回调中调用 release ，否则由于 SDK 要等待回调返回才能回收相关的对象资源，会造成死锁。
  ///
  /// * [sync] 该方法是否为同步调用： true :该方法为同步调用。 false :该方法为异步调用。目前该方法仅支持同步调用，请不要将该参数设置为该值。
  Future<void> release({bool sync = false});

  /// 开启视频预览。
  ///
  /// 该方法用于启动本地视频预览。
  ///  本地预览默认开启镜像功能。
  ///  在离开频道后，本地预览依然处于开启状态。你需要调用 stopPreview 关闭本地预览。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startPreviewWithoutSourceType();

  /// 获取 AudioDeviceManager 对象，以管理音频设备。
  ///
  /// Returns
  /// 一个 AudioDeviceManager 对象。
  AudioDeviceManager getAudioDeviceManager();

  /// 获取 VideoDeviceManager 对象，以管理视频设备。
  ///
  /// Returns
  /// 一个 VideoDeviceManager 对象。
  VideoDeviceManager getVideoDeviceManager();

  /// 获取 MusicContentCenter 。
  ///
  /// Returns
  /// 一个 MusicContentCenter 对象。
  MusicContentCenter getMusicContentCenter();

  /// 获取 MediaEngine 对象。
  ///
  /// 该方法需要在初始化 RtcEngine 对象后调用。
  ///
  /// Returns
  /// MediaEngine 对象。
  MediaEngine getMediaEngine();

  /// 获取 LocalSpatialAudioEngine 对象。
  ///
  /// 该方法需要在初始化 RtcEngine 对象后调用。
  ///
  /// Returns
  /// 一个 LocalSpatialAudioEngine 对象。
  LocalSpatialAudioEngine getLocalSpatialAudioEngine();

  /// @nodoc
  H265Transcoder getH265Transcoder();

  /// 发送媒体附属信息。
  ///
  /// 如果成功发送了媒体附属信息，接收端会收到 onMetadataReceived 回调。
  ///
  /// * [metadata] 媒体附属信息。详见 Metadata 。
  /// * [sourceType] 视频源的类型，详见 VideoSourceType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> sendMetaData(
      {required Metadata metadata, required VideoSourceType sourceType});

  /// 设置媒体附属信息的最大大小。
  ///
  /// 调用 registerMediaMetadataObserver 后，你可以调用本方法来设置媒体附属信息的最大大小。
  ///
  /// * [size] 媒体附属信息的最大大小。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setMaxMetadataSize(int size);

  /// 取消注册音频编码数据观测器。
  ///
  /// * [observer] 音频编码数据观测器。详见 AudioEncodedFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterAudioEncodedFrameObserver(AudioEncodedFrameObserver observer);

  /// 获取 Native SDK 的 C++ 句柄。
  ///
  /// 该方法获取 Native SDK 引擎 的 C++ 句柄，用于包括注册音视频回调在内的特殊场景。
  ///
  /// Returns
  /// SDK 引擎的 Native 句柄。
  Future<int> getNativeHandle();

  /// 在指定观测位置进行视频截图。
  ///
  /// 该方法用于对指定用户的视频流进行截图，生成一张 JPG 格式的图片，并保存至指定的路径。
  ///  该方法是异步操作，调用返回时 SDK 并没有真正获取截图。
  ///  该方法用于本地视频截图时，是对 ChannelMediaOptions 中指定发布的视频流进行截图。
  ///
  /// * [uid] 用户 ID。如果要对本地用户的视频截图，则设为 0。
  /// * [config] 截图设置，详见 SnapshotConfig 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> takeSnapshotWithConfig(
      {required int uid, required SnapshotConfig config});
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum QualityReportFormatType {
  /// @nodoc
  @JsonValue(0)
  qualityReportJson,

  /// @nodoc
  @JsonValue(1)
  qualityReportHtml,
}

/// @nodoc
extension QualityReportFormatTypeExt on QualityReportFormatType {
  /// @nodoc
  static QualityReportFormatType fromValue(int value) {
    return $enumDecode(_$QualityReportFormatTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$QualityReportFormatTypeEnumMap[this]!;
  }
}

/// 设备状态。
@JsonEnum(alwaysCreate: true)
enum MediaDeviceStateType {
  /// 0: 设备就绪。
  @JsonValue(0)
  mediaDeviceStateIdle,

  /// 1: 设备正在使用。
  @JsonValue(1)
  mediaDeviceStateActive,

  /// 2: 设备被禁用。
  @JsonValue(2)
  mediaDeviceStateDisabled,

  /// 3: 设备已插入。
  @JsonValue(3)
  mediaDeviceStatePluggedIn,

  /// 4: 没有此设备。
  @JsonValue(4)
  mediaDeviceStateNotPresent,

  /// 8: 设备被拔出。
  @JsonValue(8)
  mediaDeviceStateUnplugged,
}

/// @nodoc
extension MediaDeviceStateTypeExt on MediaDeviceStateType {
  /// @nodoc
  static MediaDeviceStateType fromValue(int value) {
    return $enumDecode(_$MediaDeviceStateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaDeviceStateTypeEnumMap[this]!;
  }
}

/// @nodoc
@JsonEnum(alwaysCreate: true)
enum VideoProfileType {
  /// @nodoc
  @JsonValue(0)
  videoProfileLandscape120p,

  /// @nodoc
  @JsonValue(2)
  videoProfileLandscape120p3,

  /// @nodoc
  @JsonValue(10)
  videoProfileLandscape180p,

  /// @nodoc
  @JsonValue(12)
  videoProfileLandscape180p3,

  /// @nodoc
  @JsonValue(13)
  videoProfileLandscape180p4,

  /// @nodoc
  @JsonValue(20)
  videoProfileLandscape240p,

  /// @nodoc
  @JsonValue(22)
  videoProfileLandscape240p3,

  /// @nodoc
  @JsonValue(23)
  videoProfileLandscape240p4,

  /// @nodoc
  @JsonValue(30)
  videoProfileLandscape360p,

  /// @nodoc
  @JsonValue(32)
  videoProfileLandscape360p3,

  /// @nodoc
  @JsonValue(33)
  videoProfileLandscape360p4,

  /// @nodoc
  @JsonValue(35)
  videoProfileLandscape360p6,

  /// @nodoc
  @JsonValue(36)
  videoProfileLandscape360p7,

  /// @nodoc
  @JsonValue(37)
  videoProfileLandscape360p8,

  /// @nodoc
  @JsonValue(38)
  videoProfileLandscape360p9,

  /// @nodoc
  @JsonValue(39)
  videoProfileLandscape360p10,

  /// @nodoc
  @JsonValue(100)
  videoProfileLandscape360p11,

  /// @nodoc
  @JsonValue(40)
  videoProfileLandscape480p,

  /// @nodoc
  @JsonValue(42)
  videoProfileLandscape480p3,

  /// @nodoc
  @JsonValue(43)
  videoProfileLandscape480p4,

  /// @nodoc
  @JsonValue(45)
  videoProfileLandscape480p6,

  /// @nodoc
  @JsonValue(47)
  videoProfileLandscape480p8,

  /// @nodoc
  @JsonValue(48)
  videoProfileLandscape480p9,

  /// @nodoc
  @JsonValue(49)
  videoProfileLandscape480p10,

  /// @nodoc
  @JsonValue(50)
  videoProfileLandscape720p,

  /// @nodoc
  @JsonValue(52)
  videoProfileLandscape720p3,

  /// @nodoc
  @JsonValue(54)
  videoProfileLandscape720p5,

  /// @nodoc
  @JsonValue(55)
  videoProfileLandscape720p6,

  /// @nodoc
  @JsonValue(60)
  videoProfileLandscape1080p,

  /// @nodoc
  @JsonValue(62)
  videoProfileLandscape1080p3,

  /// @nodoc
  @JsonValue(64)
  videoProfileLandscape1080p5,

  /// @nodoc
  @JsonValue(66)
  videoProfileLandscape1440p,

  /// @nodoc
  @JsonValue(67)
  videoProfileLandscape1440p2,

  /// @nodoc
  @JsonValue(70)
  videoProfileLandscape4k,

  /// @nodoc
  @JsonValue(72)
  videoProfileLandscape4k3,

  /// @nodoc
  @JsonValue(1000)
  videoProfilePortrait120p,

  /// @nodoc
  @JsonValue(1002)
  videoProfilePortrait120p3,

  /// @nodoc
  @JsonValue(1010)
  videoProfilePortrait180p,

  /// @nodoc
  @JsonValue(1012)
  videoProfilePortrait180p3,

  /// @nodoc
  @JsonValue(1013)
  videoProfilePortrait180p4,

  /// @nodoc
  @JsonValue(1020)
  videoProfilePortrait240p,

  /// @nodoc
  @JsonValue(1022)
  videoProfilePortrait240p3,

  /// @nodoc
  @JsonValue(1023)
  videoProfilePortrait240p4,

  /// @nodoc
  @JsonValue(1030)
  videoProfilePortrait360p,

  /// @nodoc
  @JsonValue(1032)
  videoProfilePortrait360p3,

  /// @nodoc
  @JsonValue(1033)
  videoProfilePortrait360p4,

  /// @nodoc
  @JsonValue(1035)
  videoProfilePortrait360p6,

  /// @nodoc
  @JsonValue(1036)
  videoProfilePortrait360p7,

  /// @nodoc
  @JsonValue(1037)
  videoProfilePortrait360p8,

  /// @nodoc
  @JsonValue(1038)
  videoProfilePortrait360p9,

  /// @nodoc
  @JsonValue(1039)
  videoProfilePortrait360p10,

  /// @nodoc
  @JsonValue(1100)
  videoProfilePortrait360p11,

  /// @nodoc
  @JsonValue(1040)
  videoProfilePortrait480p,

  /// @nodoc
  @JsonValue(1042)
  videoProfilePortrait480p3,

  /// @nodoc
  @JsonValue(1043)
  videoProfilePortrait480p4,

  /// @nodoc
  @JsonValue(1045)
  videoProfilePortrait480p6,

  /// @nodoc
  @JsonValue(1047)
  videoProfilePortrait480p8,

  /// @nodoc
  @JsonValue(1048)
  videoProfilePortrait480p9,

  /// @nodoc
  @JsonValue(1049)
  videoProfilePortrait480p10,

  /// @nodoc
  @JsonValue(1050)
  videoProfilePortrait720p,

  /// @nodoc
  @JsonValue(1052)
  videoProfilePortrait720p3,

  /// @nodoc
  @JsonValue(1054)
  videoProfilePortrait720p5,

  /// @nodoc
  @JsonValue(1055)
  videoProfilePortrait720p6,

  /// @nodoc
  @JsonValue(1060)
  videoProfilePortrait1080p,

  /// @nodoc
  @JsonValue(1062)
  videoProfilePortrait1080p3,

  /// @nodoc
  @JsonValue(1064)
  videoProfilePortrait1080p5,

  /// @nodoc
  @JsonValue(1066)
  videoProfilePortrait1440p,

  /// @nodoc
  @JsonValue(1067)
  videoProfilePortrait1440p2,

  /// @nodoc
  @JsonValue(1070)
  videoProfilePortrait4k,

  /// @nodoc
  @JsonValue(1072)
  videoProfilePortrait4k3,

  /// @nodoc
  @JsonValue(30)
  videoProfileDefault,
}

/// @nodoc
extension VideoProfileTypeExt on VideoProfileType {
  /// @nodoc
  static VideoProfileType fromValue(int value) {
    return $enumDecode(_$VideoProfileTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoProfileTypeEnumMap[this]!;
  }
}

/// SDK 版本信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SDKBuildInfo implements AgoraSerializable {
  /// @nodoc
  const SDKBuildInfo({this.build, this.version});

  /// SDK 编译号。
  @JsonKey(name: 'build')
  final int? build;

  /// SDK 版本号。格式为字符串，如 6.0.0。
  @JsonKey(name: 'version')
  final String? version;

  /// @nodoc
  factory SDKBuildInfo.fromJson(Map<String, dynamic> json) =>
      _$SDKBuildInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SDKBuildInfoToJson(this);
}

/// VideoDeviceInfo 类，包含视频设备的 ID 和设备名称。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoDeviceInfo implements AgoraSerializable {
  /// @nodoc
  const VideoDeviceInfo({this.deviceId, this.deviceName});

  /// 设备 ID。
  @JsonKey(name: 'deviceId')
  final String? deviceId;

  /// 设备名称。
  @JsonKey(name: 'deviceName')
  final String? deviceName;

  /// @nodoc
  factory VideoDeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoDeviceInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VideoDeviceInfoToJson(this);
}

/// AudioDeviceInfo 类，包含音频设备的 ID 和设备名称。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioDeviceInfo implements AgoraSerializable {
  /// @nodoc
  const AudioDeviceInfo({this.deviceId, this.deviceTypeName, this.deviceName});

  /// 设备 ID。
  @JsonKey(name: 'deviceId')
  final String? deviceId;

  /// 音频设备类型，如：built-in、USB、HDMI 等。
  @JsonKey(name: 'deviceTypeName')
  final String? deviceTypeName;

  /// 设备名称。
  @JsonKey(name: 'deviceName')
  final String? deviceName;

  /// @nodoc
  factory AudioDeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioDeviceInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioDeviceInfoToJson(this);
}
