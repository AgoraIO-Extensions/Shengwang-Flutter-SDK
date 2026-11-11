import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_media_engine.g.dart';

/// 声道模式。
@JsonEnum(alwaysCreate: true)
enum AudioMixingDualMonoMode {
  /// 0：原始模式。
  @JsonValue(0)
  audioMixingDualMonoAuto,

  /// 1：左声道模式。该模式用左声道的音频替换右声道的音频，即用户只能听到左声道的音频。
  @JsonValue(1)
  audioMixingDualMonoL,

  /// 2：右声道模式。该模式用右声道的音频替换左声道的音频，即用户只能听到右声道的音频。
  @JsonValue(2)
  audioMixingDualMonoR,

  /// 3：混合模式。该模式将左右声道的数据叠加，即用户能同时听到左声道和右声道的音频。
  @JsonValue(3)
  audioMixingDualMonoMix,
}

/// @nodoc
extension AudioMixingDualMonoModeExt on AudioMixingDualMonoMode {
  /// @nodoc
  static AudioMixingDualMonoMode fromValue(int value) {
    return $enumDecode(_$AudioMixingDualMonoModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioMixingDualMonoModeEnumMap[this]!;
  }
}

/// MediaEngine 类。
abstract class MediaEngine {
  /// 注册音频观测器对象。
  ///
  /// 该方法用于注册音频观测器对象，即注册回调。当需要 SDK 触发 onMixedAudioFrame 、 onRecordAudioFrame 、 onPlaybackAudioFrame 、 onPlaybackAudioFrameBeforeMixing 和 onEarMonitoringAudioFrame 回调时，需要调用该方法注册回调。
  ///
  /// * [observer] 接口对象实例。详见 AudioFrameObserver 。建议在收到 onLeaveChannel 后调用，来释放音频观测器对象。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerAudioFrameObserver(AudioFrameObserver observer);

  /// 注册原始视频观测器对象。
  ///
  /// 如果你想要观测原始视频帧 (如 YUV 或 RGBA 格式)，声网推荐你通过该方法注册一个 VideoFrameObserver 类。
  /// 调用该方法注册视频观测器时，你可以根据需要注册 VideoFrameObserver 类中的回调。在成功注册视频观测器后，SDK 会在捕捉到每个视频帧时，触发你所注册的上述回调。 在处理回调时，你需要考虑视频帧中 width 和 height 参数的变化，因为观测得到的视频帧可能会随以下情况变化：
  ///  当网络状况差时，分辨率会阶梯式下降。
  ///  当用户自行调整分辨率时，回调中报告的分辨率也会变化。
  ///
  /// * [observer] 接口对象实例。详见 VideoFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0：方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerVideoFrameObserver(VideoFrameObserver observer);

  /// 为编码后的视频图像注册视频帧接收观测器。
  ///
  /// 如果你只想要观测编码后的视频帧 (如 H.264 格式)，而不需要对视频进行解码和渲染，声网推荐你通过该方法注册一个 VideoEncodedFrameObserver 类。 该方法需要在加入频道前调用。
  ///
  /// * [observer] 视频帧接收观测器，详见 VideoEncodedFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerVideoEncodedFrameObserver(VideoEncodedFrameObserver observer);

  /// 注册一个人脸信息观测器。
  ///
  /// 你可以调用该方法注册 onFaceInfo 回调获取声网语音驱动插件处理后的人脸信息。调用该方法注册人脸信息观测器时，你可以根据需要注册 FaceInfoObserver 类中的回调。在成功注册人脸信息观测器后，SDK 会在捕捉到经过语音驱动插件转换的人脸信息时，触发你所注册的回调。
  ///  该方法需要在加入频道前调用。
  ///  调用该方法前，你需要确保已调用 enableExtension 启用语音驱动插件。
  ///
  /// * [observer] 人脸信息观测器，详见 FaceInfoObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  void registerFaceInfoObserver(FaceInfoObserver observer);

  /// 推送外部音频帧。
  ///
  /// 调用该方法通过音频轨道推送外部音频帧。
  ///
  /// * [frame] 外部音频帧。详见 AudioFrame 。
  /// * [trackId] 音频轨道 ID。如果你要发布自定义的外部音频源，则将该参数设置为你想要发布的自定义音频轨道 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pushAudioFrame({required AudioFrame frame, int trackId = 0});

  /// 拉取远端音频数据。
  ///
  /// 调用该方法后，App 会采取主动拉取的方式获取远端已解码和混音后的音频数据，用于音频播放。 该方法和 onPlaybackAudioFrame 回调均可用于获取远端混音后的音频播放数据。在调用 setExternalAudioSink 开启外部音频渲染后，App 将无法从 onPlaybackAudioFrame 回调中获得数据。因此，请根据实际的业务需求在该方法和 onPlaybackAudioFrame 回调之间进行选择。二者的处理机制不同，具体区别如下：
  ///  调用该方法后，App 会主动拉取音频数据。通过设置音频数据，SDK 可以调整缓存，帮助 App 处理延时，从而有效避免音频播放抖动。
  ///  注册 onPlaybackAudioFrame 回调后，SDK 通过该回调将音频数据传输给 App。App 在处理音频帧的延迟时，可能会导致音频播放抖动。 该方法仅用于拉取远端混音后的音频播放数据，如需获取采集的原始音频数据、混音前每条拉流单独的原始音频播放数据等，可以通过调用 registerAudioFrameObserver 注册相应的回调。
  ///
  /// * [frame] 指向 AudioFrame 的指针。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pullAudioFrame(AudioFrame frame);

  /// 设置外部视频源。
  ///
  /// 调用该方法启用外部视频源后，你可以调用 pushVideoFrame 向 SDK 推送外部视频数据。 不支持在频道内动态切换视频源。如果已调用该方法启用外部视频源并加入频道，若想切换为内部视频源，必须先退出频道，然后调用该方法关闭外部视频源，再重新加入频道。
  ///
  /// * [enabled] 是否启用外部视频源： true : 启用外部视频源。SDK 准备接收外部视频帧。 false :（默认）不启用外部视频源。
  /// * [useTexture] 是否使用 Texture 格式的外部视频帧： true : 使用 Texture 格式的外部视频帧。 false : 不使用 Texture 格式的外部视频帧。
  /// * [sourceType] 外部视频帧是否编码，详见 ExternalVideoSourceType 。
  /// * [encodedVideoOption] 视频编码选项。如果 sourceType 为 encodedVideoFrame ，则需要设置该参数。你可以[联系技术支持](https://ticket.shengwang.cn/)了解如何设置该参数。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExternalVideoSource(
      {required bool enabled,
      required bool useTexture,
      ExternalVideoSourceType sourceType = ExternalVideoSourceType.videoFrame,
      SenderOptions encodedVideoOption = const SenderOptions()});

  /// @nodoc
  Future<void> setExternalRemoteEglContext(int eglContext);

  /// 设置外部音频采集参数。
  ///
  /// 废弃 弃用： 该方法已废弃，请改用 createCustomAudioTrack 。
  ///
  /// * [enabled] 是否开启使用外部音频源的功能： true ：开启外部音频源。 false ：（默认）关闭外部音频源。
  /// * [sampleRate] 外部音频源的采样率 (Hz)，可设置为 8000 ， 16000 ， 32000 ， 44100 或 48000 。
  /// * [channels] 外部音频源的声道数，可设置为 1 （单声道）或 2 （双声道）。
  /// * [localPlayback] 是否在本地播放外部音频源： true ：在本地播放。 false ：（默认）不在本地播放。
  /// * [publish] 是否将音频发布到远端： true ：（默认）发布到远端。 false ：不发布到远端。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExternalAudioSource(
      {required bool enabled,
      required int sampleRate,
      required int channels,
      bool localPlayback = false,
      bool publish = true});

  /// 创建一个自定义音频采集轨道。
  ///
  /// 如需在频道中发布自定义采集音频，可参考以下步骤：
  ///  调用该方法创建音频轨道并获得音频轨道 ID。
  ///  调用 joinChannel 加入频道时，将 ChannelMediaOptions 中的 publishCustomAudioTrackId 设置为你想要发布的音频轨道 ID，并将 publishCustomAudioTrack 设置为 true 。
  ///  调用 pushAudioFrame 将 trackId 指定为步骤 2 中指定的音频轨道 ID，即可实现在频道内发布对应的自定义音频源。 该方法需要在加入频道前调用。
  ///
  /// * [trackType] 自定义音频轨道类型。详见 AudioTrackType 。 如指定 audioTrackDirect ，则必须在调用 joinChannel 加入频道时，将 ChannelMediaOptions 中的 publishMicrophoneTrack 设为 false ，否则加入频道失败并返回错误码 -2。
  /// * [config] 自定义音频轨道配置。详见 AudioTrackConfig 。
  ///
  /// Returns
  /// 方法调用成功，返回音频轨道 ID 作为该音频轨道的唯一标识。
  ///  方法调用失败，返回 0xffffffff。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> createCustomAudioTrack(
      {required AudioTrackType trackType, required AudioTrackConfig config});

  /// 销毁指定的音频轨道。
  ///
  /// * [trackId] 调用 createCustomAudioTrack 方法返回的自定义音频轨道 ID。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyCustomAudioTrack(int trackId);

  /// 设置外部音频渲染。
  ///
  /// 调用该方法开启外部音频渲染后，你可以调用 pullAudioFrame 拉取远端音频数据。App 可以对拉取到的原始音频数据进行处理后再渲染，获取想要的音频效果。 调用该方法开启外部音频渲染后，App 将无法从 onPlaybackAudioFrame 回调中获得数据。
  ///
  /// * [enabled] 设置是否开启外部音频渲染： true ：开启外部音频渲染。 false ：（默认）关闭外部音频渲染。
  /// * [sampleRate] 外部音频渲染的采样率 (Hz)，可设置为 16000，32000，44100 或 48000。
  /// * [channels] 外部音频渲染的声道数:
  ///  1: 单声道
  ///  2: 双声道
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setExternalAudioSink(
      {required bool enabled, required int sampleRate, required int channels});

  /// @nodoc
  Future<void> enableCustomAudioLocalPlayback(
      {required int trackId, required bool enabled});

  /// 将外部原始视频帧通过自定义视频轨道发布到频道中。
  ///
  /// 当你需要在频道中发布自定义采集视频时，可参考以下步骤：
  ///  调用 createCustomVideoTrack 方法创建视频轨道并获得视频轨道 ID。
  ///  调用 joinChannel 加入频道时，将 ChannelMediaOptions 中的 customVideoTrackId 设置为你想要发布的视频轨道 ID，并将 publishCustomVideoTrack 设置为 true 。
  ///  调用该方法将 videoTrackId 指定为步骤 2 中指定的视频轨道 ID，即可实现在频道内发布对应的自定义视频源。 调用该方法后，即使你停止推送外部视频帧到 SDK，自定义采集的视频流仍然会被计入视频时长用量并产生费用，声网建议你根据实际情况采取相应措施避免此类视频计费：
  ///  如果你不再需要采集外部视频数据，可以调用 destroyCustomVideoTrack 销毁自定义采集的视频轨道。
  ///  如果你只想将采集到的外部视频数据用于本地预览、而不在频道内发布，可以调用 muteLocalVideoStream 取消发送视频流，或调用 updateChannelMediaOptions 将 publishCustomVideoTrack 设置为 false 。
  ///
  /// * [frame] 待推送的视频帧。详见 ExternalVideoFrame 。
  /// * [videoTrackId] 调用 createCustomVideoTrack 方法返回的视频轨道 ID。 如果你只需推送一路外部视频流， videoTrackId 设置为 0 即可。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> pushVideoFrame(
      {required ExternalVideoFrame frame, int videoTrackId = 0});

  /// @nodoc
  Future<void> pushEncodedVideoImage(
      {required Uint8List imageBuffer,
      required int length,
      required EncodedVideoFrameInfo videoEncodedFrameInfo,
      int videoTrackId = 0});

  /// @nodoc
  Future<void> release();

  /// 取消注册音频帧观测器。
  ///
  /// * [observer] 音频帧观测器，观测每帧音频的接收，详见 AudioFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterAudioFrameObserver(AudioFrameObserver observer);

  /// 取消注册视频帧观测器。
  ///
  /// * [observer] 视频帧观测器，观测每帧视频的接收, 详见 VideoFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterVideoFrameObserver(VideoFrameObserver observer);

  /// 为编码后的视频图像取消注册视频帧接收观测器。
  ///
  /// * [observer] 视频帧观测器，观测每帧视频的接收, 详见 VideoEncodedFrameObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterVideoEncodedFrameObserver(VideoEncodedFrameObserver observer);

  /// 取消注册人脸信息观测器。
  ///
  /// * [observer] 人脸信息观测器，详见 FaceInfoObserver 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。
  void unregisterFaceInfoObserver(FaceInfoObserver observer);
}
