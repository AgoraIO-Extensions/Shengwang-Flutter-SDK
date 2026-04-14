import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_rhythm_player.g.dart';

/// 虚拟节拍器状态。
@JsonEnum(alwaysCreate: true)
enum RhythmPlayerStateType {
  /// 810：虚拟节拍器未开启或已关闭。
  @JsonValue(810)
  rhythmPlayerStateIdle,

  /// 811：正在打开节拍音频文件。
  @JsonValue(811)
  rhythmPlayerStateOpening,

  /// 812：正在解码节拍音频文件。
  @JsonValue(812)
  rhythmPlayerStateDecoding,

  /// 813：正在播放节拍音频文件。
  @JsonValue(813)
  rhythmPlayerStatePlaying,

  /// 814：开启虚拟节拍器失败。你可以通过报告的错误码 errorCode 排查错误原因，也可以重新尝试开启虚拟节拍器。
  @JsonValue(814)
  rhythmPlayerStateFailed,
}

/// @nodoc
extension RhythmPlayerStateTypeExt on RhythmPlayerStateType {
  /// @nodoc
  static RhythmPlayerStateType fromValue(int value) {
    return $enumDecode(_$RhythmPlayerStateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RhythmPlayerStateTypeEnumMap[this]!;
  }
}

/// 虚拟节拍器错误信息。
@JsonEnum(alwaysCreate: true)
enum RhythmPlayerReason {
  /// 0：正常播放节拍音频文件，没有错误。
  @JsonValue(0)
  rhythmPlayerReasonOk,

  /// 1：一般性错误，没有明确原因。
  @JsonValue(1)
  rhythmPlayerReasonFailed,

  /// 801：打开节拍音频文件出错。
  @JsonValue(801)
  rhythmPlayerReasonCanNotOpen,

  /// 802：播放节拍音频文件出错。
  @JsonValue(802)
  rhythmPlayerReasonCanNotPlay,

  /// 803：节拍音频文件时长超出限制。最大时长为 1.2 秒。
  @JsonValue(803)
  rhythmPlayerReasonFileOverDurationLimit,
}

/// @nodoc
extension RhythmPlayerReasonExt on RhythmPlayerReason {
  /// @nodoc
  static RhythmPlayerReason fromValue(int value) {
    return $enumDecode(_$RhythmPlayerReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RhythmPlayerReasonEnumMap[this]!;
  }
}

/// 虚拟节拍器配置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AgoraRhythmPlayerConfig implements AgoraSerializable {
  /// @nodoc
  const AgoraRhythmPlayerConfig({this.beatsPerMeasure, this.beatsPerMinute});

  /// 每小节的拍数，取值范围为 [1,9]。默认值为 4，即每小节包含 1 个强拍和 3 个弱拍。
  @JsonKey(name: 'beatsPerMeasure')
  final int? beatsPerMeasure;

  /// 节拍速度（拍/分钟），取值范围为 [60,360]。默认值为 60，即 1 分钟有 60 拍。
  @JsonKey(name: 'beatsPerMinute')
  final int? beatsPerMinute;

  /// @nodoc
  factory AgoraRhythmPlayerConfig.fromJson(Map<String, dynamic> json) =>
      _$AgoraRhythmPlayerConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AgoraRhythmPlayerConfigToJson(this);
}
