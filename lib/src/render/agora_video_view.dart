import '/src/render/video_view_controller.dart';
import '/src/impl/agora_video_view_impl.dart';

import 'package:flutter/material.dart';

/// AgoraVideoView 类，用于渲染本地和远端视频。
class AgoraVideoView extends StatefulWidget {
  /// @nodoc
  const AgoraVideoView({
    Key? key,
    required this.controller,
    this.onAgoraVideoViewCreated,
  }) : super(key: key);

  /// 控制待渲染的视频类型：
  ///  如果渲染 RtcEngine 的视频，详见 VideoViewController 。
  ///  如果渲染媒体播放器中的视频，详见 MediaPlayerController 。
  final VideoViewControllerBase controller;

  /// @nodoc
  final void Function(int viewId)? onAgoraVideoViewCreated;

  @override
  State<AgoraVideoView> createState() => AgoraVideoViewState();
}
