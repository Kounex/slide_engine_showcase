import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BackgroundVideo extends StatefulWidget {
  final String videoURL;

  const BackgroundVideo({
    super.key,
    required this.videoURL,
  });

  @override
  State<BackgroundVideo> createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.videoURL,
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: true,
      ),
    )..initialize().then((_) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });

    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(
                  _controller,
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
