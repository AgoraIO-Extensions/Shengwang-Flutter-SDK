import '/src/_serializable.dart';
import '/src/binding_forward_export.dart';
part 'agora_music_content_center.g.dart';

/// 音乐资源的播放模式。
@JsonEnum(alwaysCreate: true)
enum MusicPlayMode {
  /// 0：原唱。
  @JsonValue(0)
  kMusicPlayModeOriginal,

  /// 1：伴唱。
  @JsonValue(1)
  kMusicPlayModeAccompany,

  /// 2：导唱。
  @JsonValue(2)
  kMusicPlayModeLeadSing,
}

/// @nodoc
extension MusicPlayModeExt on MusicPlayMode {
  /// @nodoc
  static MusicPlayMode fromValue(int value) {
    return $enumDecode(_$MusicPlayModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicPlayModeEnumMap[this]!;
  }
}

/// 音乐资源的加载状态。
@JsonEnum(alwaysCreate: true)
enum PreloadState {
  /// 0：音乐资源加载完成。
  @JsonValue(0)
  kPreloadStateCompleted,

  /// 1：音乐资源加载失败。
  @JsonValue(1)
  kPreloadStateFailed,

  /// 2：音乐资源正在加载中。
  @JsonValue(2)
  kPreloadStatePreloading,

  /// 3：缓存的音乐资源已被移除。
  @JsonValue(3)
  kPreloadStateRemoved,
}

/// @nodoc
extension PreloadStateExt on PreloadState {
  /// @nodoc
  static PreloadState fromValue(int value) {
    return $enumDecode(_$PreloadStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PreloadStateEnumMap[this]!;
  }
}

/// 音乐内容中心的请求状态码。
@JsonEnum(alwaysCreate: true)
enum MusicContentCenterStateReason {
  /// 0：请求成功。
  @JsonValue(0)
  kMusicContentCenterReasonOk,

  /// 1：一般错误，无明确归因。
  @JsonValue(1)
  kMusicContentCenterReasonError,

  /// 2：网关异常。可能的原因有：
  ///  当前使用的 Token 已过期。请重新生成 Token。
  ///  传入的 Token 无效。请确保你使用的是 RTM Token。
  ///  网络错误。请检查你的网络。
  @JsonValue(2)
  kMusicContentCenterReasonGateway,

  /// 3：权限错误或音乐资源不存在。请确保你的项目已开通声网音乐内容中心权限，请[联系技术支持](https://ticket.shengwang.cn/)。
  @JsonValue(3)
  kMusicContentCenterReasonPermissionAndResource,

  /// 4：内部数据解析错误。请[联系技术支持](https://ticket.shengwang.cn/)。
  @JsonValue(4)
  kMusicContentCenterReasonInternalDataParse,

  /// 5：音乐资源加载时出错。请[联系技术支持](https://ticket.shengwang.cn/)。
  @JsonValue(5)
  kMusicContentCenterReasonMusicLoading,

  /// 6：音乐资源解密时出错。请[联系技术支持](https://ticket.shengwang.cn/)。
  @JsonValue(6)
  kMusicContentCenterReasonMusicDecryption,

  /// 7：HTTP 内部出现错误。请稍后重试。
  @JsonValue(7)
  kMusicContentCenterReasonHttpInternalError,
}

/// @nodoc
extension MusicContentCenterStateReasonExt on MusicContentCenterStateReason {
  /// @nodoc
  static MusicContentCenterStateReason fromValue(int value) {
    return $enumDecode(_$MusicContentCenterStateReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicContentCenterStateReasonEnumMap[this]!;
  }
}

/// 音乐榜单的详细信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicChartInfo implements AgoraSerializable {
  /// @nodoc
  const MusicChartInfo({this.chartName, this.id});

  /// 榜单名。
  @JsonKey(name: 'chartName')
  final String? chartName;

  /// 音乐榜单的 ID。
  @JsonKey(name: 'id')
  final int? id;

  /// @nodoc
  factory MusicChartInfo.fromJson(Map<String, dynamic> json) =>
      _$MusicChartInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MusicChartInfoToJson(this);
}

/// 音乐资源的缓存状态。
@JsonEnum(alwaysCreate: true)
enum MusicCacheStatusType {
  /// 0: 音乐资源已缓存。
  @JsonValue(0)
  musicCacheStatusTypeCached,

  /// 1: 音乐资源正在缓存。
  @JsonValue(1)
  musicCacheStatusTypeCaching,
}

/// @nodoc
extension MusicCacheStatusTypeExt on MusicCacheStatusType {
  /// @nodoc
  static MusicCacheStatusType fromValue(int value) {
    return $enumDecode(_$MusicCacheStatusTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicCacheStatusTypeEnumMap[this]!;
  }
}

/// 缓存的音乐资源的相关信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicCacheInfo implements AgoraSerializable {
  /// @nodoc
  const MusicCacheInfo({this.songCode, this.status});

  /// 音乐资源的编号，用于标识音乐资源。
  @JsonKey(name: 'songCode')
  final int? songCode;

  /// 音乐资源的缓存状态，详见 MusicCacheStatusType 。
  @JsonKey(name: 'status')
  final MusicCacheStatusType? status;

  /// @nodoc
  factory MusicCacheInfo.fromJson(Map<String, dynamic> json) =>
      _$MusicCacheInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MusicCacheInfoToJson(this);
}

/// 音乐榜单的详细信息。
abstract class MusicChartCollection {
  /// 获取本次请求的音乐榜单数量。
  ///
  /// Returns
  /// 本次请求的音乐榜单数量。
  Future<int> getCount();

  /// 获取音乐榜单的详细信息。
  ///
  /// * [index] MusicChartInfo 数组的索引。
  ///
  /// Returns
  /// MusicChartInfo ，包含音乐榜单的详细信息。
  Future<MusicChartInfo> get(int index);
}

/// @nodoc
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MvProperty implements AgoraSerializable {
  /// @nodoc
  const MvProperty({this.resolution, this.bandwidth});

  /// @nodoc
  @JsonKey(name: 'resolution')
  final String? resolution;

  /// @nodoc
  @JsonKey(name: 'bandwidth')
  final String? bandwidth;

  /// @nodoc
  factory MvProperty.fromJson(Map<String, dynamic> json) =>
      _$MvPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MvPropertyToJson(this);
}

/// 音乐高潮片段设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClimaxSegment implements AgoraSerializable {
  /// @nodoc
  const ClimaxSegment({this.startTimeMs, this.endTimeMs});

  /// 音乐高潮片段的开始时间点，单位毫秒。
  @JsonKey(name: 'startTimeMs')
  final int? startTimeMs;

  /// 音乐高潮片段的结束时间点，单位毫秒。
  @JsonKey(name: 'endTimeMs')
  final int? endTimeMs;

  /// @nodoc
  factory ClimaxSegment.fromJson(Map<String, dynamic> json) =>
      _$ClimaxSegmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClimaxSegmentToJson(this);
}

/// 音乐资源的详细信息。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Music implements AgoraSerializable {
  /// @nodoc
  const Music(
      {this.songCode,
      this.name,
      this.singer,
      this.poster,
      this.releaseTime,
      this.durationS,
      this.type,
      this.pitchType,
      this.lyricCount,
      this.lyricList,
      this.climaxSegmentCount,
      this.climaxSegmentList,
      this.mvPropertyCount,
      this.mvPropertyList});

  /// 音乐资源的编号，用于标识一个音乐资源。
  @JsonKey(name: 'songCode')
  final int? songCode;

  /// 音乐资源名称。
  @JsonKey(name: 'name')
  final String? name;

  /// 歌手名。
  @JsonKey(name: 'singer')
  final String? singer;

  /// 音乐资源海报的下载地址。
  @JsonKey(name: 'poster')
  final String? poster;

  /// 音乐资源发布的时间。
  @JsonKey(name: 'releaseTime')
  final String? releaseTime;

  /// 音乐资源总时长 （秒）。
  @JsonKey(name: 'durationS')
  final int? durationS;

  /// 音乐资源类型：
  ///  1：左声道伴奏，右声道原唱的单音轨音源。
  ///  2：只有伴唱的单音轨音源。
  ///  3：只有原唱的单音轨音源。
  ///  4：多音轨音源。
  @JsonKey(name: 'type')
  final int? type;

  /// 歌曲是否支持演唱评分功能：
  ///  1：歌曲支持演唱评分功能。
  ///  2：歌曲不支持演唱评分功能。
  @JsonKey(name: 'pitchType')
  final int? pitchType;

  /// 歌曲的歌词数量。
  @JsonKey(name: 'lyricCount')
  final int? lyricCount;

  /// 支持的歌词类型：
  ///  0：xml 格式。
  ///  1：lrc 格式。
  @JsonKey(name: 'lyricList')
  final List<int>? lyricList;

  /// 高潮片段的数量。
  @JsonKey(name: 'climaxSegmentCount')
  final int? climaxSegmentCount;

  /// 音乐高潮片段列表，详见 ClimaxSegment 。
  @JsonKey(name: 'climaxSegmentList')
  final List<ClimaxSegment>? climaxSegmentList;

  /// @nodoc
  @JsonKey(name: 'mvPropertyCount')
  final int? mvPropertyCount;

  /// @nodoc
  @JsonKey(name: 'mvPropertyList')
  final List<MvProperty>? mvPropertyList;

  /// @nodoc
  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MusicToJson(this);
}

/// 音乐资源列表的详细信息。
abstract class MusicCollection {
  /// 获取本次请求的音乐数量。
  ///
  /// Returns
  /// 本次请求的音乐数量。
  int getCount();

  /// 获取列表内音乐资源的总数量。
  ///
  /// Returns
  /// 列表内音乐资源的总数量。
  int getTotal();

  /// 获取音乐资源列表当前页的页码。
  ///
  /// Returns
  /// 当前页的页码。
  int getPage();

  /// 获取 SDK 实际返回的音乐资源数量。
  ///
  /// Returns
  /// SDK 实际返回的音乐资源数量。
  int getPageSize();

  /// 获取当前页面列表中音乐资源的详细信息。
  ///
  /// * [index] Music 数组的索引。
  ///
  /// Returns
  /// 一个 Music 实例。
  Music getMusic(int index);
}

/// MusicContentCenterEventHandler 接口类，用于 SDK 向客户端发送音乐内容中心事件通知。
class MusicContentCenterEventHandler {
  /// @nodoc
  const MusicContentCenterEventHandler({
    this.onMusicChartsResult,
    this.onMusicCollectionResult,
    this.onLyricResult,
    this.onSongSimpleInfoResult,
    this.onPreLoadEvent,
  });

  /// 获取音乐榜单回调。
  ///
  /// 当你调用 getMusicCharts 方法获取全部音乐榜单之后，SDK 会触发该回调。
  ///
  /// * [requestId] 请求 ID。本次请求的唯一标识。
  /// * [reason] 音乐内容中心的请求状态码，详见 MusicContentCenterStateReason 。
  /// * [result] 当前可播放的音乐榜单列表。详见 MusicChartInfo 。
  final void Function(String requestId, List<MusicChartInfo> result,
      MusicContentCenterStateReason reason)? onMusicChartsResult;

  /// 获取音乐资源列表回调。
  ///
  /// 当你调用 getMusicCollectionByMusicChartId 方法来获取指定榜单的音乐资源列表或调用 searchMusic 来搜索音乐资源时，SDK 会触发此回调报告榜单中音乐资源列表的详细信息。
  ///
  /// * [requestId] 请求 ID。本次请求的唯一标识。
  /// * [reason] 音乐内容中心的请求状态码，详见 MusicContentCenterStateReason 。
  /// * [result] 音乐资源列表的详细信息。详见 MusicCollection 。
  final void Function(String requestId, MusicCollection result,
      MusicContentCenterStateReason reason)? onMusicCollectionResult;

  /// 歌词下载地址回调。
  ///
  /// 当你调用 getLyric 获取指定歌曲的歌词下载地址后，SDK 会触发该回调。
  ///
  /// * [requestId] 请求 ID。本次请求的唯一标识。
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  /// * [lyricUrl] 歌词的下载地址。
  /// * [reason] 音乐内容中心的请求状态码，详见 MusicContentCenterStateReason 。
  final void Function(String requestId, int songCode, String lyricUrl,
      MusicContentCenterStateReason reason)? onLyricResult;

  /// 音乐资源的详细信息回调。
  ///
  /// 当你调用 getSongSimpleInfo 获取某一音乐资源的详细信息后，SDK 会触发该回调。
  ///
  /// * [requestId] 请求 ID。本次请求的唯一标识。
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  /// * [simpleInfo] 音乐资源的相关信息，包含下列内容：
  ///  副歌片段的开始和结束的时间（ms）
  ///  副歌片段的歌词下载地址
  ///  副歌片段时长（ms）
  ///  歌曲名称
  ///  歌手名
  /// * [reason] 音乐内容中心的请求状态码，详见 MusicContentCenterStateReason 。
  final void Function(String requestId, int songCode, String simpleInfo,
      MusicContentCenterStateReason reason)? onSongSimpleInfoResult;

  /// 报告预加载音乐资源的事件。
  ///
  /// 当你调用 preload 方法预加载音乐资源后，SDK 会触发该回调。
  ///
  /// * [requestId] 请求 ID。本次请求的唯一标识。
  /// * [songCode] 音乐资源的编号，用于标识一个音乐资源。
  /// * [percent] 音乐资源当前的加载进度，取值范围为 [0,100]。
  /// * [lyricUrl] 歌词下载地址。
  /// * [state] 当前音乐资源的加载状态。详见 PreloadState 。
  /// * [reason] 音乐内容中心的请求状态码，详见 MusicContentCenterStateReason 。
  final void Function(
      String requestId,
      int songCode,
      int percent,
      String lyricUrl,
      PreloadState state,
      MusicContentCenterStateReason reason)? onPreLoadEvent;
}

/// 音乐内容中心的设置。
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicContentCenterConfiguration implements AgoraSerializable {
  /// @nodoc
  const MusicContentCenterConfiguration(
      {this.appId, this.token, this.mccUid, this.maxCacheSize, this.mccDomain});

  /// 已启用内容中心的项目的 App ID。
  @JsonKey(name: 'appId')
  final String? appId;

  /// 使用音乐内容中心时，用于鉴权的 RTM Token。
  ///  声网推荐你使用 AccessToken2 进行鉴权，详见[部署 Token 服务器](https://doc.shengwang.cn/doc/rtm2/android/user-guide/token/token-generation)。生成 Token 时，请向 uid 传入 String 型的 mccUid 。
  ///  当你的 Token 即将过期时，你可以调用 renewToken 来传入新的 Token。
  @JsonKey(name: 'token')
  final String? token;

  /// 使用音乐内容中心的用户 ID，该 ID 可以和你加入 RTC 频道时使用的 uid 一致，但不能为 0。
  @JsonKey(name: 'mccUid')
  final int? mccUid;

  /// 可缓存的音乐资源数量，最多不能超过 50。
  @JsonKey(name: 'maxCacheSize')
  final int? maxCacheSize;

  /// @nodoc
  @JsonKey(name: 'mccDomain')
  final String? mccDomain;

  /// @nodoc
  factory MusicContentCenterConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MusicContentCenterConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MusicContentCenterConfigurationToJson(this);
}

/// 继承自 MediaPlayer 类，提供音乐播放器的相关方法。
abstract class MusicPlayer implements MediaPlayer {
  /// 设置音乐资源的播放模式。
  ///
  /// 你可以调用该方法来设置启用原唱、伴奏或导唱。如不调用该方法进行设置，则默认播放伴奏；如果音乐资源没有伴奏，则播放原唱。 你可以通过 onMusicCollectionResult 回调获取音乐资源的详细信息，并可通过其中的 result 参数得知需播放的版权音乐所支持的播放类型。
  ///
  /// * [mode] 播放模式，详见 MusicPlayMode 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> setPlayMode(MusicPlayMode mode);

  /// 通过音乐资源编号打开音乐资源。
  ///
  /// 在调用此方法之前，请确保需要播放的音乐资源已加载完成。你可以调用 isPreloaded 方法来检测音乐资源是否已被预加载，或通过 onPreLoadEvent 回调得知。
  /// 调用该方法后会触发 onPlayerSourceStateChanged 回调。在收到报告播放状态为 playerStateOpenCompleted 后，你可以调用 play 方法播放媒体文件。 如果你想要打开的音乐资源受数字版权保护，则需要调用此方法打开。对于不受数字版权保护的音乐资源，你可以选择通过调用此方法或 MediaPlayer 类下的 open 方法来打开。
  ///
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  /// * [startPos] 设置起始播放位置（毫秒），默认值为 0。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> openWithSongCode({required int songCode, int startPos = 0});
}

/// MusicContentCenter 接口类提供音乐内容中心的相关方法。
abstract class MusicContentCenter {
  /// 初始化 MusicContentCenter 。
  ///
  /// 在调用 MusicContentCenter 类下的其他方法前，你需要先调用该方法初始化 MusicContentCenter 。
  ///
  /// * [configuration] MusicContentCenter 的设置，详见 MusicContentCenterConfiguration 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> initialize(MusicContentCenterConfiguration configuration);

  /// 更新 Token。
  ///
  /// 当你用于鉴权的 Token 快要过期或已过期时，你可以调用该方法来传入新生成的 Token。
  ///
  /// * [token] 新的 Token。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> renewToken(String token);

  /// 释放音乐内容中心所占用的所有资源。
  ///
  /// 该方法需要在 RtcEngine 的 release 方法前调用。
  Future<void> release();

  /// 注册音乐内容中心回调事件。
  ///
  /// * [eventHandler] 待注册的回调事件，详见 MusicContentCenterEventHandler 。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void registerEventHandler(MusicContentCenterEventHandler eventHandler);

  /// 取消注册音乐内容中心事件回调。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  void unregisterEventHandler();

  /// 创建音乐播放器。
  ///
  /// 如果你需要播放音乐内容中心的音乐资源，你需要先调用该方法来创建一个音乐播放器。
  ///
  /// Returns
  /// 方法调用成功：返回 MusicPlayer 对象。
  ///  方法调用失败：返回空指针。
  Future<MusicPlayer?> createMusicPlayer();

  /// 销毁音乐播放器对象。
  ///
  /// 当你不再需要使用音乐播放器时，你可以调用该方法来销毁音乐播放器对象。销毁之后如果需要重新使用音乐播放器，需要调用 createMusicPlayer 重新创建一个音乐播放器对象。
  ///
  /// * [musicPlayer] MusicPlayer 对象。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> destroyMusicPlayer(MusicPlayer musicPlayer);

  /// 获取全部音乐榜单。
  ///
  /// 当你调用该方法后，SDK 会触发 onMusicChartsResult 回调报告音乐榜单的详细信息。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> getMusicCharts();

  /// 通过音乐榜单的 ID 获取指定榜单的音乐资源列表。
  ///
  /// 成功调用该方法后，SDK 会触发 onMusicCollectionResult 回调报告榜单中音乐资源列表的详细信息。
  ///
  /// * [musicChartId] 音乐榜单的 ID，可以通过 onMusicChartsResult 回调获取。你也可以通过 RESTful API 来[获取曲库所有歌曲列表](https://doc.shengwang.cn/doc/online-ktv/android/ktv-scenario/api/music-content-center#%E8%8E%B7%E5%8F%96%E6%9B%B2%E5%BA%93%E6%89%80%E6%9C%89%E6%AD%8C%E6%9B%B2%E5%88%97%E8%A1%A8)或[获取增量歌曲列表](https://doc.shengwang.cn/doc/online-ktv/android/ktv-scenario/api/music-content-center#%E8%8E%B7%E5%8F%96%E5%A2%9E%E9%87%8F%E6%AD%8C%E6%9B%B2%E5%88%97%E8%A1%A8)。
  /// * [page] 当前页面编号，默认从 1 开始。
  /// * [pageSize] 当前音乐资源列表的总页面数量，最大值为 50。
  /// * [jsonOption] 扩展 JSON 字段，默认为 null 。你可以通过该字段来筛选出你需要的音乐资源，目前支持筛选可打分的音乐资源及音乐资源的副歌片段： pitchType ：音乐资源是否支持评分。 1 ：可评分的音乐资源。 2 ：不可评分的音乐资源。 needHighPart ：是否需要合唱片段资源。 YES ：需要合唱片段资源。 NO ：不需要合唱片段资源。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> getMusicCollectionByMusicChartId(
      {required int musicChartId,
      required int page,
      required int pageSize,
      String? jsonOption});

  /// 搜索音乐资源。
  ///
  /// 成功调用该方法后，SDK 会触发 onMusicCollectionResult 回调报告检索到的音乐资源列表。
  ///
  /// * [keyword] 搜索关键词，支持歌曲名、歌手搜索。
  /// * [page] 想要获取的音乐资源列表的目标页编号。
  /// * [pageSize] 每页所展示的音乐资源的最大数量，最大值为 50。
  /// * [jsonOption] 扩展 JSON 字段，默认为 null 。你可以通过该字段来筛选出你需要的音乐资源，目前支持筛选可打分的音乐资源及音乐资源的副歌片段： pitchType ：音乐资源是否支持评分。 1 ：可评分的音乐资源。 2 ：不可评分的音乐资源。 needHighPart ：是否需要合唱片段资源。 YES ：需要合唱片段资源。 NO ：不需要合唱片段资源。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> searchMusic(
      {required String keyWord,
      required int page,
      required int pageSize,
      String? jsonOption});

  /// 预加载音乐资源。
  ///
  /// 你可以调用该方法预先加载需要播放的音乐资源。成功调用该方法后，SDK 会触发 onPreLoadEvent 回调报告预加载音乐资源的事件。
  /// 在调用该方法来预加载音乐资源之前，你需要调用 getMusicCollectionByMusicChartId 或 searchMusic 方法来获取你需要播放的音乐资源，并通过由此触发的 onMusicCollectionResult 回调获取音乐资源的编号（ songCode ）。 如需销毁 RtcEngine 对象，请在收到 onPreLoadEvent 回调后，再调用 release 方法。
  ///
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> preload(int songCode);

  /// 删除已缓存的音乐资源。
  ///
  /// 你可以调用该方法删除某一已缓存的音乐资源，如需删除多个音乐资源，你可以多次调用该方法。
  ///
  /// * [songCode] 待删除的音乐资源的编号。
  ///
  /// Returns
  /// 方法成功调用时，无返回值；方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<void> removeCache(int songCode);

  /// 获取已缓存的音乐资源信息。
  ///
  /// 调用该方法前，你需要预先分配一定大小的内存空间用来存储缓存音乐资源的信息。如果你需要设置可缓存的音乐资源数量，可通过 initialize 的 configuration 来设置。
  /// 当你不再需要使用已缓存的音乐资源时，你需要及时释放内存以防止内存泄漏。
  ///
  /// * [cacheInfoSize] 指定要获取的缓存音乐资源列表的长度。
  ///
  /// Returns
  /// 方法调用成功时，返回 MusicCacheInfo 对象的列表。
  ///  方法调用失败时，会抛出 AgoraRtcException 异常，你需要捕获异常并进行处理。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<List<MusicCacheInfo>> getCaches(int cacheInfoSize);

  /// 检测音乐资源是否已被预加载。
  ///
  /// 该方法为同步调用。如需预加载新的音乐资源，可调用 preload 。
  ///
  /// * [songCode] 音乐资源的编号，用于标识一个音乐资源。
  ///
  /// Returns
  /// true ：该音乐资源已被预加载。 false ：该音乐资源未被预加载。
  Future<bool> isPreloaded(int songCode);

  /// 获取音乐资源的歌词下载地址。
  ///
  /// 成功调用该方法后，SDK 会触发 onLyricResult 回调报告歌词的下载地址。
  ///
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  /// * [lyricType] 歌词类型：
  ///  0：xml 格式。
  ///  1：lrc 格式。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> getLyric({required int songCode, int lyricType = 0});

  /// 获取某一音乐资源的详细信息。
  ///
  /// 在调用该方法前，你需要先获取到对应的音乐资源的编号。你可以通过调用 getMusicCollectionByMusicChartId 或 searchMusic 方法来获取音乐资源，并通过由此触发的 onMusicCollectionResult 回调获取音乐资源的编号（ songCode ）。
  /// 当你调用该方法后，SDK 会触发 onSongSimpleInfoResult 回调报告音乐资源的详细信息。
  ///
  /// * [songCode] 音乐资源的编号，用于标识音乐资源。
  ///
  /// Returns
  /// 一个 requestId ，为本次请求的唯一标识。
  Future<String> getSongSimpleInfo(int songCode);

  /// 创建音乐资源的副歌片段编号。
  ///
  /// * [songCode] 音乐资源编号，用于标识音乐资源。你可以通过调用 getMusicCollectionByMusicChartId 或 searchMusic 方法来获取音乐资源，并通过由此触发的 onMusicCollectionResult 回调获取音乐资源的编号（ songCode ）。
  /// * [jsonOption] 声网会根据你在 sceneType 传入的应用场景进行收费。不同的应用场景对应不同的费率，你可以参考 [计费说明](https://doc.shengwang.cn/doc/online-ktv/android/online-ktv-sdk/overview/billing) 查看详细的计费。如果需要切换到不同场景，需要重新调用此方法并传入 sceneType 的值。 扩展 JSON 字段，默认为 null 。目前支持传入下列值：
  ///  sceneType：场景类型。1：直播场景，在线 K 歌房和背景音乐播放；2：直播场景，背景音乐播放；3：（默认）声动语聊场景，在线 K 歌房；4：声动语聊场景，背景音乐播放；5：VR 场景，在线 K 歌房和背景音乐播放。示例： {"sceneType":1} 。
  ///  highPart：副歌片段的索引，从 onMusicCollectionResult 回调中获取，索引从 0 开始。示例： {"format": {"highpart": 0}} 。
  ///
  /// Returns
  /// 方法调用成功，返回创建的音乐资源内部编号。
  ///  < 0: 方法调用失败。详见[错误码](https://doc.shengwang.cn/api-ref/rtc/flutter/error-code)了解详情和解决建议。
  Future<int> getInternalSongCode(
      {required int songCode, required String jsonOption});
}
