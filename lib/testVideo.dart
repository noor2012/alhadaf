import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TestVideo extends StatefulWidget {
  @override
  _TestVideoState createState() => _TestVideoState();
}

class _TestVideoState extends State<TestVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/%D9%82%D8%B1%D8%A3%D9%86.mp4?alt=media&token=5e0e029d-b9ec-4b74-926e-49a9a1d76093')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : Container(),
      ),
    );
  }
}
