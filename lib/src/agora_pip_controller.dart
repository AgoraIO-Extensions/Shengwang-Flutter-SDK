import 'package:flutter/foundation.dart';

import '/src/agora_base.dart';
import '/src/agora_rtc_engine_ex.dart';

/// 画中画模式的视频流配置。
///
/// 自从 自 v6.6.2 版本新增。 该类保存显示画中画窗口内视频流所需的连接和画布设置。
class AgoraPipVideoStream {
  /// 与此视频流关联的 RTC 连接。
  final RtcConnection connection;

  /// 用于渲染此视频流的画布配置，详见 VideoCanvas 。
  final VideoCanvas canvas;

  /// @nodoc
  const AgoraPipVideoStream({required this.connection, required this.canvas});

  /// @nodoc
  Map<String, dynamic> toDictionary() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('connection', connection.toJson());
    writeNotNull('canvas', canvas.toJson());
    return val;
  }
}

/// 画中画视频流的布局配置。
///
/// 自从 自 v6.6.2 版本新增。 该类定义多个视频流在流式布局中的排列方式，视频流从左到右、从上到下依次排列。
class AgoraPipContentViewLayout {
  /// 整个布局周围的内边距，单位为像素。用于在布局边缘和视频流之间创建空间。如果为 null，则不应用内边距。
  final int? padding;

  /// 视频流之间的水平和垂直间距，单位为像素。用于在相邻视频流之间创建一致的间距。如果为 null，视频流将直接相邻放置。
  final int? spacing;

  /// 布局中允许的最大行数。达到最大行数后，即使存在更多视频流，也不会创建新行。如果为 null，将根据需要创建行以容纳所有视频流。必须大于 0 或为 null。
  final int? row;

  /// 每行的最大视频流数量。达到最大数量后，将开始新行。如果为 null，视频流将流动填充可用宽度。必须大于 0 或为 null。
  final int? column;

  /// @nodoc
  const AgoraPipContentViewLayout({
    this.padding,
    this.spacing,
    this.row,
    this.column,
  });

  /// @nodoc
  Map<String, dynamic> toDictionary() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('padding', padding);
    writeNotNull('spacing', spacing);
    writeNotNull('row', row);
    writeNotNull('column', column);
    return val;
  }
}

/// 声网画中画模式的配置选项。
///
/// 自从 自 v6.6.2 版本新增。 该类提供平台特定的选项来配置 Android 和 iOS 平台的画中画行为。
class AgoraPipOptions {
  /// @nodoc
  AgoraPipOptions({
    this.autoEnterEnabled,

    // Android-specific options
    this.aspectRatioX,
    this.aspectRatioY,
    this.sourceRectHintLeft,
    this.sourceRectHintTop,
    this.sourceRectHintRight,
    this.sourceRectHintBottom,
    this.seamlessResizeEnabled,
    this.useExternalStateMonitor,
    this.externalStateMonitorInterval,

    // iOS-specific options
    this.sourceContentView,
    this.contentView,
    this.videoStreams,
    this.contentViewLayout,
    this.preferredContentWidth,
    this.preferredContentHeight,
    this.controlStyle,
  });

  /// 是否自动进入画中画模式。
  ///
  /// 仅适用于 Android 平台。
  final bool? autoEnterEnabled;

  /// 画中画窗口的水平宽高比。
  ///
  /// 仅适用于 Android 平台。
  final int? aspectRatioX;

  /// 画中画窗口的垂直宽高比。
  ///
  /// 仅适用于 Android 平台。
  final int? aspectRatioY;

  /// 源矩形提示的左坐标。
  ///
  /// 用于指定画中画窗口的初始位置。
  /// 仅适用于 Android 平台。
  final int? sourceRectHintLeft;

  /// 源矩形提示的上坐标。
  ///
  /// 用于指定画中画窗口的初始位置。
  /// 仅适用于 Android 平台。
  final int? sourceRectHintTop;

  /// 源矩形提示的右坐标。
  ///
  /// 用于指定画中画窗口的初始位置。
  /// 仅适用于 Android 平台。
  final int? sourceRectHintRight;

  /// 源矩形提示的下坐标。
  ///
  /// 用于指定画中画窗口的初始位置。
  /// 仅适用于 Android 平台。
  final int? sourceRectHintBottom;

  /// 是否启用画中画窗口的无缝调整大小。
  ///
  /// 启用后，画中画窗口将平滑调整大小。
  /// 默认为 false 。
  /// 仅适用于 Android 平台。
  final bool? seamlessResizeEnabled;

  /// 是否使用外部状态监控。
  ///
  /// 启用后，创建专用线程来监控画中画窗口状态。使用 externalStateMonitorInterval 配置监控频率。
  /// 默认为 false 。
  /// 仅适用于 Android 平台。
  final bool? useExternalStateMonitor;

  /// 外部状态监控的间隔，单位为毫秒。
  ///
  /// 仅在 useExternalStateMonitor 为 true 时生效。
  /// 默认为 100ms。
  /// 仅适用于 Android 平台。
  final int? externalStateMonitorInterval;

  /// 源内容视图标识符。
  ///
  /// 设置为 0 以使用根视图作为源。
  /// 仅适用于 iOS 平台。
  final int? sourceContentView;

  /// 用于视频渲染的内容视图标识符。
  ///
  /// 设置为 0 以让 SDK 管理视图。当设置为 0 时，必须通过 videoStreams 提供视频源。
  /// 仅适用于 iOS 平台。
  int? contentView;

  /// 视频转码配置。
  ///
  /// 仅在 contentView 设置为 0 时生效。当用户让 SDK 管理视图时，所有视频流将放置在画中画窗口的根视图中。
  /// 仅适用于 iOS 平台。
  final List<AgoraPipVideoStream>? videoStreams;

  /// 画中画视频流的布局配置。
  ///
  /// 仅在 contentView 设置为 0 时生效。
  /// 仅适用于 iOS 平台。
  final AgoraPipContentViewLayout? contentViewLayout;

  /// 画中画内容的首选宽度。
  ///
  /// 仅适用于 iOS 平台。
  final int? preferredContentWidth;

  /// 画中画内容的首选高度。
  ///
  /// 仅适用于 iOS 平台。
  final int? preferredContentHeight;

  /// 画中画窗口的控制样式。
  /// 可用样式：
  ///  0：显示所有系统控件（默认）
  ///  1：隐藏前进和后退按钮
  ///  2：隐藏播放/暂停按钮和进度条（推荐）
  ///  3：隐藏所有系统控件，包括关闭和恢复按钮 仅适用于 iOS 平台。
  final int? controlStyle;

  /// @nodoc
  Map<String, dynamic> toDictionary() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('autoEnterEnabled', autoEnterEnabled);

    // Android-specific options
    if (defaultTargetPlatform == TargetPlatform.android) {
      writeNotNull('aspectRatioX', aspectRatioX);
      writeNotNull('aspectRatioY', aspectRatioY);
      writeNotNull('sourceRectHintLeft', sourceRectHintLeft);
      writeNotNull('sourceRectHintTop', sourceRectHintTop);
      writeNotNull('sourceRectHintRight', sourceRectHintRight);
      writeNotNull('sourceRectHintBottom', sourceRectHintBottom);
      writeNotNull('seamlessResizeEnabled', seamlessResizeEnabled);
      writeNotNull('useExternalStateMonitor', useExternalStateMonitor);
      writeNotNull(
        'externalStateMonitorInterval',
        externalStateMonitorInterval,
      );
    }

    // iOS-specific options
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      writeNotNull('sourceContentView', sourceContentView);
      writeNotNull('contentView', contentView);
      writeNotNull(
          'videoStreams', videoStreams?.map((e) => e.toDictionary()).toList());
      writeNotNull('contentViewLayout', contentViewLayout?.toDictionary());
      writeNotNull('preferredContentWidth', preferredContentWidth);
      writeNotNull('preferredContentHeight', preferredContentHeight);
      writeNotNull('controlStyle', controlStyle);
    }
    return val;
  }
}

/// 表示画中画模式的当前状态。
///
/// 自从 自 v6.6.2 版本新增。
enum AgoraPipState {
  /// 画中画模式已成功启动。
  pipStateStarted,

  /// 画中画模式已停止。
  pipStateStopped,

  /// 画中画模式启动失败或遇到错误。
  pipStateFailed,
}

/// 画中画状态改变的观测器。
///
/// 自从 自 v6.6.2 版本新增。 实现此类以接收画中画状态转换和潜在错误的通知。
class AgoraPipStateChangedObserver {
  /// @nodoc
  const AgoraPipStateChangedObserver({required this.onPipStateChanged});

  /// 画中画状态改变回调。
  ///
  /// 自从 自 v6.6.2 版本新增。 当画中画状态发生改变时，SDK 会触发此回调。
  ///
  /// * [state] 新的画中画状态，详见 AgoraPipState 。
  /// * [error] 如果状态改变失败，返回错误信息；否则返回 null。
  final void Function(AgoraPipState state, String? error) onPipStateChanged;
}

/// 管理画中画功能的控制器接口。
///
/// 自从 自 v6.6.2 版本新增。 此抽象类定义了控制画中画模式所需的方法，包括设置、状态管理和生命周期操作。
abstract class AgoraPipController {
  /// 释放画中画相关的资源。
  ///
  /// 自从 自 v6.6.2 版本新增。
  Future<void> dispose();

  /// 注册画中画状态改变观测器。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [observer] 画中画状态改变观测器，详见 AgoraPipStateChangedObserver 。
  Future<void> registerPipStateChangedObserver(
    AgoraPipStateChangedObserver observer,
  );

  /// 取消注册画中画状态改变观测器。
  ///
  /// 自从 自 v6.6.2 版本新增。
  Future<void> unregisterPipStateChangedObserver();

  /// 检查当前设备是否支持画中画模式。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// Returns
  /// true ：当前设备支持画中画模式。 false ：当前设备不支持画中画模式。
  Future<bool> pipIsSupported();

  /// 检查是否支持自动进入画中画模式。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// Returns
  /// true ：支持自动进入画中画模式。 false ：不支持自动进入画中画模式。
  Future<bool> pipIsAutoEnterSupported();

  /// 检查画中画模式是否已激活。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// Returns
  /// true ：画中画模式已激活。 false ：画中画模式未激活。
  Future<bool> isPipActivated();

  /// 配置画中画模式。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// * [options] 画中画配置选项，详见 AgoraPipOptions 。
  ///
  /// Returns
  /// true ：方法调用成功。 false ：方法调用失败。
  Future<bool> pipSetup(AgoraPipOptions options);

  /// 启动画中画模式。
  ///
  /// 自从 自 v6.6.2 版本新增。
  ///
  /// Returns
  /// true ：方法调用成功。 false ：方法调用失败。
  Future<bool> pipStart();

  /// 停止画中画模式。
  ///
  /// 自从 自 v6.6.2 版本新增。
  Future<void> pipStop();

  /// 释放画中画相关的资源。
  ///
  /// 自从 自 v6.6.2 版本新增。
  Future<void> pipDispose();
}
