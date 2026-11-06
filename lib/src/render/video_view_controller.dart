import '/src/agora_base.dart';
import '/src/agora_media_base.dart';
import '/src/agora_rtc_engine.dart';
import '/src/agora_rtc_engine_ex.dart';
import '/src/impl/video_view_controller_impl.dart';
import 'package:meta/meta.dart';

/// AgoraVideoView 的控制器，用于渲染本地和远端视频。
///
/// 在不同平台上，该类对应的默认视图不同：
///  Android: https://developer.android.com/reference/android/view/TextureView 。如果你想要使用 [SurfaceView](https://developer.android.com/reference/android/view/SurfaceView) ，则设置 useAndroidSurfaceView 的属性为 true 。
///  iOS: [UIView](https://developer.apple.com/documentation/uikit/uiview) 。 如果你想要使用 [FlutterTexture](https://api.flutter.dev/macos-embedder/protocol_flutter_texture-p.html) ，则设置 useFlutterTexture 的属性为 true 。
///  macOS 和 Windows：[FlutterTexture](https://api.flutter.dev/macos-embedder/protocol_flutter_texture-p.html) 。
abstract class VideoViewControllerBase {
  /// RtcEngine 。
  RtcEngine get rtcEngine;

  /// 本地视频显示属性。详见 VideoCanvas 。
  VideoCanvas get canvas;

  /// Connection 信息。详见 RtcConnection 。
  RtcConnection? get connection;

  /// FlutterTexture 仅适用于 iOS、macOS 和 Windows 平台。 是否使用 FlutterTexture 渲染视频： true : 使用 FlutterTexture 渲染视频。 false : 不使用 FlutterTexture 渲染视频。
  bool get useFlutterTexture;

  /// Android SurfaceView 仅适用于 Android 平台。 是否使用 Android SurfaceView 渲染视频： true : 使用 Android SurfaceView 渲染视频。 false : 不使用 Android SurfaceView 渲染视频。
  bool get useAndroidSurfaceView;

  /// 仅适用于 Android 平台。是否以 Hybrid Composition 方式嵌入 Android 平台视图。
  ///
  /// true ：通过 `PlatformViewLink` 和 `PlatformViewsService.initSurfaceAndroidView`
  /// 创建视图。原生视图包含 SurfaceView 时，Flutter 使用 Hybrid Composition，视频保持为独立的
  /// SurfaceFlinger 图层。在 Android 上显示 HDR 视频需要同时将 [useAndroidSurfaceView] 和
  /// [useAndroidHybridComposition] 设为 true 。
  ///
  /// 使用默认的 TextureView（[useAndroidSurfaceView] 为 false ）时，Flutter 保持 Texture Layer
  /// Hybrid Composition，该参数没有可见效果。
  ///
  /// false ：（默认）使用 `AndroidView` 创建视图。SurfaceView 会退回 Virtual Display，HDR 视频
  /// 按 SDR 显示。
  ///
  /// Hybrid Composition 在平台线程合成 Flutter 帧，Android 10 以下每帧多一次拷贝，可能降低 Flutter
  /// 帧率。Flutter 的变换、裁剪和透明度可能对 SurfaceView 不生效。[useFlutterTexture] 为 true
  /// 或非 Android 平台时忽略该参数。该参数在创建 `AgoraVideoView` 时读取；如需修改，请创建新的
  /// `AgoraVideoView` 。
  bool get useAndroidHybridComposition;

  @internal
  int getTextureId();

  @internal
  int getViewHandle();

  @internal
  int getPlatformViewId();

  @internal
  int getVideoSourceType();

  @internal
  Future<void> setupView(int platformViewId, int nativeViewPtr);

  @protected
  Future<int> createTextureRender(
    int uid,
    String channelId,
    int videoSourceType,
    int videoViewSetupMode,
  );

  @internal
  Future<void> initializeRender();

  @internal
  Future<void> disposeRender();

  /// @nodoc
  Future<void> dispose();
}

/// AgoraVideoView 的控制器，用于渲染本地和远端视频。
///
/// 在不同平台上，该类对应的默认视图不同：
///  Android: https://developer.android.com/reference/android/view/TextureView 。如果你想要使用 [SurfaceView](https://developer.android.com/reference/android/view/SurfaceView) ，则设置 useAndroidSurfaceView 的属性为 true 。
///  iOS: [UIView](https://developer.apple.com/documentation/uikit/uiview) 。如果你想要使用 [FlutterTexture](https://api.flutter.dev/macos-embedder/protocol_flutter_texture-p.html) ，则设置 useFlutterTexture 的属性为 true 。
///  macOS 和 Windows：[FlutterTexture](https://api.flutter.dev/macos-embedder/protocol_flutter_texture-p.html) 。
class VideoViewController
    with VideoViewControllerBaseMixin
    implements VideoViewControllerBase {
  /// @nodoc
  VideoViewController(
      {required this.rtcEngine,
      required this.canvas,
      this.useFlutterTexture = false,
      this.useAndroidSurfaceView = false,
      this.useAndroidHybridComposition = false})
      : connection = const RtcConnection();

  /// @nodoc
  VideoViewController.remote(
      {required this.rtcEngine,
      required this.canvas,
      required this.connection,
      this.useFlutterTexture = false,
      this.useAndroidSurfaceView = false,
      this.useAndroidHybridComposition = false})
      : assert(canvas.uid != null && canvas.uid != 0,
            'Remote uid can not be null or 0'),
        assert(connection.channelId != null);

  @override
  final RtcEngine rtcEngine;

  @override
  final VideoCanvas canvas;

  @override
  final RtcConnection connection;

  @override
  final bool useFlutterTexture;

  @override
  final bool useAndroidSurfaceView;

  @override
  final bool useAndroidHybridComposition;

  @protected
  @override
  int getVideoSourceType() {
    return canvas.uid! == 0
        ? VideoSourceType.videoSourceCamera.value()
        : VideoSourceType.videoSourceRemote.value();
  }
}
