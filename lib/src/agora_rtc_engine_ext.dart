import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show MethodCall;

import '/src/agora_media_player.dart';
import '/src/agora_rtc_engine.dart';
import '/src/agora_rtc_engine_ex.dart';
import '/src/impl/agora_rtc_engine_impl.dart';
import '/src/impl/agora_rtc_engine_impl.dart' as impl;
import '/src/impl/media_player_impl.dart';
import '/src/agora_pip_controller.dart';
import '/src/impl/agora_pip_controller_impl.dart';

/// @nodoc
extension RtcEngineExt on RtcEngine {
  /// 通过 Asset 的相对规路径获取该 Asset 的实际绝对路径。
  ///
  /// * [assetPath] pubspec.yaml 文件中配置的 flutter -> assets 字段。
  ///
  /// Returns
  /// Asset 的实际路径。
  Future<String?> getAssetAbsolutePath(String assetPath) async {
    final impl = this as RtcEngineImpl;
    return impl.getAssetAbsolutePath(assetPath);
  }

  /// @nodoc
  int getApiEngineHandle() {
    final impl = this as RtcEngineImpl;
    return impl.getApiEngineHandle();
  }

  /// @nodoc
  AgoraPipController createPipController() {
    return AgoraPipControllerImpl(this);
  }

  /// @nodoc
  @optionalTypeArgs
  Future<T?> invokeAgoraMethod<T>(String method, [dynamic arguments]) {
    final impl = this as RtcEngineImpl;
    return impl.invokeAgoraMethod<T>(method, arguments);
  }

  /// @nodoc
  Future<void> registerMethodChannelHandler(
    String method,
    Future<dynamic> Function(MethodCall call) handler,
  ) {
    final impl = this as RtcEngineImpl;
    return impl.registerMethodChannelHandler(method, handler);
  }

  /// @nodoc
  Future<void> unregisterMethodChannelHandler(
    String method,
    Future<dynamic> Function(MethodCall call)? handler,
  ) {
    final impl = this as RtcEngineImpl;
    return impl.unregisterMethodChannelHandler(method, handler);
  }

  /// @nodoc
  void setEnableArgusCounters(bool enabled) {
    if (this is RtcEngineImpl) {
      (this as RtcEngineImpl).setEnableArgusCounters(enabled);
    }
  }
}

/// 错误码及错误描述。
class AgoraRtcException implements Exception {
  /// @nodoc
  AgoraRtcException({required this.code, this.message});

  /// 错误码，详见 ErrorCodeType 。
  final int code;

  /// 错误描述。
  final String? message;

  @override
  String toString() => 'AgoraRtcException($code, $message)';
}

/// @nodoc
RtcEngine createAgoraRtcEngine({Object? sharedNativeHandle}) {
  return impl.RtcEngineImpl.create(sharedNativeHandle: sharedNativeHandle);
}

/// @nodoc
RtcEngineEx createAgoraRtcEngineEx({Object? sharedNativeHandle}) {
  return impl.RtcEngineImpl.create(sharedNativeHandle: sharedNativeHandle);
}

/// @nodoc
MediaPlayerCacheManager getMediaPlayerCacheManager(RtcEngine rtcEngine) {
  return MediaPlayerCacheManagerImpl.create(rtcEngine);
}
