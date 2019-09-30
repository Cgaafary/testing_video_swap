import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoContainer extends StatelessWidget {
  final String videoUrl;
  VideoContainer(this.videoUrl);

  @override
  Widget build(BuildContext context) {
    VideoPlayerController _controller = VideoPlayerController.asset(videoUrl);
    Future<void> _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.play();

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            // Use the VideoPlayer widget to display the video.
            child: VideoPlayer(_controller),
          );
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
