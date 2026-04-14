import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'audio_device_manager.g.dart';

/// 设备 ID 的最大长度。
@JsonEnum(alwaysCreate: true)
enum MaxDeviceIdLengthType {
  /// 设备 ID 的最大长度为 512 个字符。
  @JsonValue(512)
  maxDeviceIdLength,
}

/// @nodoc
extension MaxDeviceIdLengthTypeExt on MaxDeviceIdLengthType {
  /// @nodoc
  static MaxDeviceIdLengthType fromValue(int value) {
    return $enumDecode(_$MaxDeviceIdLengthTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MaxDeviceIdLengthTypeEnumMap[this]!;
  }
}

/// 音频设备管理方法。
abstract class AudioDeviceManager {
  /// 获取系统中所有的播放设备列表。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 方法调用成功，返回 AudioDeviceInfo 数组，包含所有音频播放设备的设备 ID 和设备名称。
  ///  方法调用失败: 返回空列表。
  Future<List<AudioDeviceInfo>> enumeratePlaybackDevices();

  /// 获取系统中所有的音频采集设备列表。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 方法调用成功，返回一个 AudioDeviceInfo 数组，包含所有音频采集设备的设备 ID 和设备名称。
  ///  方法调用失败: 返回空列表。
  Future<List<AudioDeviceInfo>> enumerateRecordingDevices();

  /// 指定播放设备。
  ///
  /// 该方法可以更改当前的音频路由，但不会改变系统默认的音频路由。假设系统默认的音频路由是扬声器 1，你在加入频道前调用该方法设置当前的音频路由为扬声器 2，如果在此时进行设备检测，SDK 会对扬声器 2 进行检测。检测结束后，当你加入频道时 SDK 依然会选择使用系统默认的音频路由，即扬声器 1。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceId] 指定播放设备。由 enumeratePlaybackDevices 获取。插拔设备不会影响 deviceId 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlaybackDevice(String deviceId);

  /// 获取当前音频播放设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 当前音频播放设备。
  Future<String> getPlaybackDevice();

  /// 获取音频播放设备信息。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// AudioDeviceInfo 对象，包含音频播放设备的设备 ID 和设备名称。
  Future<AudioDeviceInfo> getPlaybackDeviceInfo();

  /// 设置播放设备音量。
  ///
  /// 该方法仅适用于 Windows 平台。
  ///
  /// * [volume] 播放设备音量。取值范围为 [0,255]。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlaybackDeviceVolume(int volume);

  /// 获取播放设备音量。
  ///
  /// Returns
  /// 播放设备音量。取值范围 [0,255]。
  Future<int> getPlaybackDeviceVolume();

  /// 指定音频采集设备。
  ///
  /// 该方法可以更改当前的音频采集设备，但不改变系统默认的音频采集设备。假设系统默认的音频采集设备是麦克风 1，你在加入频道前调用该方法设置当前的音频路由为蓝牙耳机 1，如果在此时进行设备检测，SDK 会对蓝牙耳机 1 进行检测。检测结束后，当你加入频道时 SDK 依然会选择使用系统默认的音频采集设备，即麦克风 1。 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [deviceId] 音频采集设备的 Device ID。可通过 enumerateRecordingDevices 获取。插拔设备不会影响 deviceId 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRecordingDevice(String deviceId);

  /// 获取当前音频采集设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 当前音频采集设备。
  Future<String> getRecordingDevice();

  /// 获取音频采集设备信息。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// AudioDeviceInfo 对象，包含音频采集设备的设备 ID 和设备名称。
  Future<AudioDeviceInfo> getRecordingDeviceInfo();

  /// 设置音频采集设备音量。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [volume] 音频采集设备音量。取值范围 [0,255]。0 代表无声，255 代表最大音量。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRecordingDeviceVolume(int volume);

  /// 获取音频采集设备音量。
  ///
  /// 该方法仅适用于 Windows 平台。
  ///
  /// Returns
  /// 音频采集设备音量。取值范围 [0,255]。
  Future<int> getRecordingDeviceVolume();

  /// 指定声卡采集设备。
  ///
  /// SDK 默认采用当前的播放设备作为声卡采集设备，如果想要指定其他音频设备作为声卡采集设备，则调用该方法并设置 deviceId 为你想要指定的声卡采集设备。
  /// 该方法可以更改当前的音频采集设备，但不改变系统默认的音频采集设备。假设系统默认的音频采集设备是麦克风 1，你在加入频道前调用该方法设置当前的音频路由为声卡 1，如果在此时进行设备检测，SDK 会对声卡 1 做设备检测。检测结束后，当你加入频道时 SDK 依然会选择使用系统默认的音频采集设备，即麦克风 1。 该方法仅适用于 Windows 和 macOS。
  /// 该方法适用的场景如下：
  /// 使用 App A 播放音乐，通过蓝牙耳机播放；同时使用 App B 进行视频会议，通过扬声器播放。
  ///  如果设置声卡采集设备为蓝牙耳机，则 SDK 会将 App A 中的音乐发布到远端。
  ///  如果设置声卡采集设备设置为扬声器，则 SDK 不会将 App A 中的音乐发布到远端。
  ///  如果设置声卡采集设备为蓝牙耳机后，又改用有线耳机播放 App A 中的音乐，则需要重新调用该方法，设置声卡采集设备为有线耳机，则 SDK 会继续将 App A 中的音乐发布到远端。
  ///
  /// * [deviceId] 指定 SDK 的声卡采集设备。由 enumeratePlaybackDevices 获取。插拔设备不会影响 deviceId 。
  /// 最大长度为 MaxDeviceIdLengthType 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setLoopbackDevice(String deviceId);

  /// 获取当前的声卡采集设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 当前声卡采集设备的 ID。
  Future<String> getLoopbackDevice();

  /// 设置播放设备静音。
  ///
  /// * [mute] 是否设置播放设备为静音： true : 播放设备设为静音。 false : 播放设备不设为静音。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlaybackDeviceMute(bool mute);

  /// 获取当前播放设备静音状态。
  ///
  /// Returns
  /// true : 播放设备为静音状态。 false : 播放设备为非静音状态。
  Future<bool> getPlaybackDeviceMute();

  /// 设置当前音频采集设备静音。
  ///
  /// * [mute] 是否设置音频采集设备静音： true : 采集设备静音。 false : 采集设备为非静音。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRecordingDeviceMute(bool mute);

  /// 获取当前音频采集设备静音状态。
  ///
  /// Returns
  /// true : 采集设备为静音状态。 false : 采集设备为非静音状态。
  Future<bool> getRecordingDeviceMute();

  /// 启动音频播放设备测试。
  ///
  /// 该方法用于测试本地音频播放设备是否能正常工作。启动测试后，SDK 播放指定的音频文件，测试者如果能听到声音，说明播放设备能正常工作。
  /// 调用该方法后，SDK 会每隔 100 毫秒触发一次 onAudioVolumeIndication 回调，报告 uid = 1 及播放设备的音量信息。
  /// 该方法和 startEchoTest 的区别在于该方法检测本地的音频播放设备能否正常工作，后者可以检测音视频设备及网络是否正常。 该方法需要在加入频道前调用。测试完成后，如需加入频道，请确保先调用 stopPlaybackDeviceTest 停止设备测试。
  ///
  /// * [testAudioFilePath] 音频文件的绝对路径，路径字符串使用 UTF-8 编码格式。
  ///  支持文件格式: wav、mp3、m4a、aac。
  ///  支持文件采样率: 8000、16000、32000、44100、48000。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startPlaybackDeviceTest(String testAudioFilePath);

  /// 停止音频播放设备测试。
  ///
  /// 该方法用于停止音频播放设备测试。调用 startPlaybackDeviceTest 后，必须调用该方法停止测试。 该方法需要在加入频道前调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopPlaybackDeviceTest();

  /// 启动音频采集设备测试。
  ///
  /// 该方法用于测试本地音频采集设备是否能正常工作。调用该方法后，SDK 会按设置的时间间隔触发 onAudioVolumeIndication 回调，报告 uid = 0 及采集设备的音量信息。
  /// 该方法和 startEchoTest 的区别在于该方法检测本地的音频采集设备能否正常工作，后者可以检测音视频设备及网络是否正常。 该方法需要在加入频道前调用。测试完成后，如需加入频道，请确保先调用 stopRecordingDeviceTest 停止设备测试。
  ///
  /// * [indicationInterval] SDK 触发 onAudioVolumeIndication 回调的时间间隔，单位为毫秒，最小取值为 10，否则会收不到 onAudioVolumeIndication 回调，SDK 会返回错误码 -2 。声网推荐你将该值设为 100。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  -2: 参数设置错误，请重新设置参数。
  Future<void> startRecordingDeviceTest(int indicationInterval);

  /// 停止音频采集设备测试。
  ///
  /// 该方法用于停止音频采集设备测试。调用 startRecordingDeviceTest 后，必须调用该方法停止测试。 该方法需要在加入频道前调用。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopRecordingDeviceTest();

  /// 开始音频设备回路测试。
  ///
  /// 该方法测试音频采集和播放设备是否能正常工作。一旦测试开始，音频采集设备会采集本地音频，然后使用音频播放设备播放出来。SDK 会按设置的时间间隔触发两个 onAudioVolumeIndication 回调，分别报告音频采集设备（ uid = 0）和音频播放设置（ uid = 1）的音量信息。
  ///  该方法仅适用于 Windows 和 macOS。
  ///  该方法在加入频道前后都可调用。
  ///  该方法仅支持主播角色调用。
  ///  该方法仅在本地进行音频设备测试，不涉及网络连接。
  ///  完成测试后，必须调用 stopAudioDeviceLoopbackTest 停止音频设备回路测试。
  ///
  /// * [indicationInterval] SDK 触发 onAudioVolumeIndication 回调的时间间隔，单位为毫秒。建议设置到大于 200 毫秒。不得少于 10 毫秒，否则会收不到 onAudioVolumeIndication 回调。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> startAudioDeviceLoopbackTest(int indicationInterval);

  /// 停止音频设备回路测试。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///  该方法在加入频道前后都可调用。
  ///  该方法仅支持主播角色调用。
  ///  在调用 startAudioDeviceLoopbackTest 后，必须调用该方法停止音频设备回路测试。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> stopAudioDeviceLoopbackTest();

  /// 设置 SDK 使用的音频播放设备跟随系统默认的音频播放设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [enable] 是否跟随系统默认的音频播放设备： true ：跟随。当系统默认音频播放设备发生改变时，SDK 立即切换音频播放设备。 false ：不跟随。只有当 SDK 使用的音频播放设备被移除后，SDK 才切换至系统默认的音频播放设备。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> followSystemPlaybackDevice(bool enable);

  /// 设置 SDK 使用的音频采集设备跟随系统默认的音频采集设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// * [enable] 是否跟随系统默认的音频采集设备： true ：跟随。当系统默认的音频采集设备改变时，SDK 立即切换音频采集设备。 false ：不跟随。只有当 SDK 使用的音频采集设备被移除后，SDK 才切换至系统默认的音频采集设备。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> followSystemRecordingDevice(bool enable);

  /// 设置声卡采集设备是否跟随系统默认的播放设备。
  ///
  /// 方法仅适用于 Windows 和 macOS。
  ///
  /// * [enable] 是否跟随系统默认的播放设备： true ：跟随。当系统默认播放设备发生改变时，SDK 立即跟随切换声卡采集设备。 false ：不跟随。只有当 SDK 使用的声卡采集设备被移除后，SDK 才切换至系统默认的音频播放设备。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> followSystemLoopbackDevice(bool enable);

  /// 释放 AudioDeviceManager 对象占用的所有资源。
  Future<void> release();

  /// 获取系统默认的音频播放设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 默认音频播放设备的信息。详见 AudioDeviceInfo 。
  Future<AudioDeviceInfo> getPlaybackDefaultDevice();

  /// 获取系统默认的音频采集设备。
  ///
  /// 该方法仅适用于 Windows 和 macOS。
  ///
  /// Returns
  /// 默认音频采集设备的信息。详见 AudioDeviceInfo 。
  Future<AudioDeviceInfo> getRecordingDefaultDevice();
}
