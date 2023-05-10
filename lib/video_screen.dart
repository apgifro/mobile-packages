import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _video;

  @override
  void initState() {
    super.initState();
    _video = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _video.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Video Player',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: _video.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _video.value.aspectRatio,
                    child: VideoPlayer(_video),
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _video.setPlaybackSpeed(1);
                  });
                },
                icon: const Icon(
                  Icons.slow_motion_video,
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _video.value.isPlaying ? _video.pause() : _video.play();
                  });
                },
                icon: Icon(
                  _video.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _video.setPlaybackSpeed(2.0);
                  });
                },
                icon: const Icon(
                  Icons.speed,
                  size: 28,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
