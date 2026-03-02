import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_spatial_audio.g.dart';

/// 远端用户或媒体播放器的空间位置信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RemoteVoicePositionInfo implements AgoraSerializable {
  /// @nodoc
  const RemoteVoicePositionInfo({this.position, this.forward});

  /// 在世界坐标系中的坐标。该参数是长度为 3 的数组，三个值依次表示前、右、上的坐标值。
  @JsonKey(name: 'position')
  final List<double>? position;

  /// @nodoc
  @JsonKey(name: 'forward')
  final List<double>? forward;

  /// @nodoc
  factory RemoteVoicePositionInfo.fromJson(Map<String, dynamic> json) =>
      _$RemoteVoicePositionInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RemoteVoicePositionInfoToJson(this);
}

/// 隔声区域的设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SpatialAudioZone implements AgoraSerializable {
  /// @nodoc
  const SpatialAudioZone(
      {this.zoneSetId,
      this.position,
      this.forward,
      this.right,
      this.up,
      this.forwardLength,
      this.rightLength,
      this.upLength,
      this.audioAttenuation});

  /// 隔声区域的 ID。
  @JsonKey(name: 'zoneSetId')
  final int? zoneSetId;

  /// 隔声区域的空间中心点。该参数是长度为 3 的数组，三个值依次表示前、右、上的坐标值。
  @JsonKey(name: 'position')
  final List<double>? position;

  /// 以 position 为起点，向前的单位向量。该参数是长度为 3 的数组，三个值依次表示前、右、上的坐标值。
  @JsonKey(name: 'forward')
  final List<double>? forward;

  /// 以 position 为起点，向右的单位向量。该参数是长度为 3 的数组，三个值依次表示前、右、上的坐标值。
  @JsonKey(name: 'right')
  final List<double>? right;

  /// 以 position 为起点，向上的单位向量。该参数是长度为 3 的数组，三个值依次表示前、右、上的坐标值。
  @JsonKey(name: 'up')
  final List<double>? up;

  /// 将整个隔声区域看做一个立方体，表示向前的边长，单位为游戏引擎的单位长度。
  @JsonKey(name: 'forwardLength')
  final double? forwardLength;

  /// 将整个隔声区域看做一个立方体，表示向右的边长，单位为游戏引擎的单位长度。
  @JsonKey(name: 'rightLength')
  final double? rightLength;

  /// 将整个隔声区域看做一个立方体，表示向上的边长，单位为游戏引擎的单位长度。
  @JsonKey(name: 'upLength')
  final double? upLength;

  /// 隔声区域以内的用户和外部用户互通时的声音衰减系数，取值范围为 [0,1]。其中：
  ///  0：广播模式，即音量和音色均不随距离衰减，无论距离远近，本地用户听到的音量和音色都无变化。
  ///  (0,0.5)：弱衰减模式，即音量和音色在传播过程中仅发生微弱衰减，跟真实环境相比，声音可以传播得更远。
  ///  0.5：模拟音量在真实环境下的衰减，效果等同于不设置 audioAttenuation 参数。
  ///  (0.5,1]：强衰减模式 (默认值为 1) ，即音量和音色在传播过程中发生迅速衰减。
  @JsonKey(name: 'audioAttenuation')
  final double? audioAttenuation;

  /// @nodoc
  factory SpatialAudioZone.fromJson(Map<String, dynamic> json) =>
      _$SpatialAudioZoneFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SpatialAudioZoneToJson(this);
}

/// 该类通过 SDK 计算用户坐标，实现空间音频。
///
/// 该类继承自 BaseSpatialAudioEngine 。调用该类下其他 API 前，你需要调用 initialize 方法初始化该类。
abstract class LocalSpatialAudioEngine {
  /// @nodoc
  Future<void> release();

  /// 初始化 LocalSpatialAudioEngine 。
  ///
  /// 在调用 LocalSpatialAudioEngine 类的其他方法前，你需要先调用该方法初始化 LocalSpatialAudioEngine 。
  ///  SDK 只支持每个 App 创建一个 LocalSpatialAudioEngine 实例。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> initialize();

  /// 更新远端用户的空间位置信息。
  ///
  /// 成功调用该方法后，SDK 会根据本地和远端用户的相对位置计算空间音频参数。 该方法需要在 joinChannel 后调用。
  ///
  /// * [uid] 用户 ID。需与用户加入频道时填写的用户 ID 一致。
  /// * [posInfo] 远端用户的空间位置信息。详见 RemoteVoicePositionInfo 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> updateRemotePosition(
      {required int uid, required RemoteVoicePositionInfo posInfo});

  /// @nodoc
  Future<void> updateRemotePositionEx(
      {required int uid,
      required RemoteVoicePositionInfo posInfo,
      required RtcConnection connection});

  /// 删除指定远端用户的空间位置信息。
  ///
  /// 成功调用该方法后，本地用户将听不到指定的远端用户。
  /// 离开频道后，为避免计算资源的浪费，你需要调用该方法删除指定远端用户的空间位置信息。否则，该用户的空间位置信息会一直被保存。当远端用户人数大于 setMaxAudioRecvCount 中设定的可接收音频流数时，会按照相对距离依次自动取消订阅距离最远的用户的音频流。
  ///
  /// * [uid] 用户 ID。需与用户加入频道时填写的用户 ID 一致。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> removeRemotePosition(int uid);

  /// @nodoc
  Future<void> removeRemotePositionEx(
      {required int uid, required RtcConnection connection});

  /// @nodoc
  Future<void> clearRemotePositionsEx(RtcConnection connection);

  /// @nodoc
  Future<void> updateSelfPositionEx(
      {required List<double> position,
      required List<double> axisForward,
      required List<double> axisRight,
      required List<double> axisUp,
      required RtcConnection connection});

  /// @nodoc
  Future<void> setMaxAudioRecvCount(int maxCount);

  /// @nodoc
  Future<void> setAudioRecvRange(double range);

  /// @nodoc
  Future<void> setDistanceUnit(double unit);

  /// @nodoc
  Future<void> updateSelfPosition(
      {required List<double> position,
      required List<double> axisForward,
      required List<double> axisRight,
      required List<double> axisUp});

  /// @nodoc
  Future<void> updatePlayerPositionInfo(
      {required int playerId, required RemoteVoicePositionInfo positionInfo});

  /// @nodoc
  Future<void> setParameters(String params);

  /// @nodoc
  Future<void> muteLocalAudioStream(bool mute);

  /// @nodoc
  Future<void> muteAllRemoteAudioStreams(bool mute);

  /// @nodoc
  Future<void> muteRemoteAudioStream({required int uid, required bool mute});

  /// 设置指定用户的声音衰减效果。
  ///
  /// * [uid] 用户 ID。需与用户加入频道时填写的用户 ID 一致。
  /// * [attenuation] 针对该用户的声音衰减系数，取值范围为[0,1]。其中：
  /// * [forceSet] 是否强制设定该用户的声音衰减效果： true ：强制使用 attenuation 设置该用户的声音衰减效果，此时 SpatialAudioZone 中的 audioAttenuation 中设置的隔声区域衰减系数对该用户不生效。 false ：不强制使用 attenuation 设置用户的声音衰减效果，分为以下两种情况。
  ///  如果音源和听声者分属于隔声区域内部和外部，则声音衰减效果由 SpatialAudioZone 中的 audioAttenuation 决定。
  ///  如果音源和听声者在同一个隔声区域内或同在隔声区域外，则声音衰减效果由该方法中的 attenuation 决定。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setRemoteAudioAttenuation(
      {required int uid, required double attenuation, required bool forceSet});

  /// @nodoc
  Future<void> setZones(
      {required List<SpatialAudioZone> zones, required int zoneCount});

  /// @nodoc
  Future<void> setPlayerAttenuation(
      {required int playerId,
      required double attenuation,
      required bool forceSet});

  /// 删除所有远端用户的空间位置信息。
  ///
  /// 成功调用该方法后，本地用户将听不到所有远端用户。
  /// 离开频道后，为避免计算资源的浪费，你也可以调用该方法删除所有远端用户的空间位置信息。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> clearRemotePositions();
}
