import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayVideoPage extends StatefulWidget {
  @override
  _PlayVideoPageState createState() => _PlayVideoPageState();
}

class _PlayVideoPageState extends State<PlayVideoPage> {
  VideoPlayerController _vidoeController;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _vidoeController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _initializeVideoPlayerFuture = _vidoeController.initialize();
  }

  @override
  void dispose() {
    _vidoeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play and pause a video'),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _vidoeController.value.aspectRatio,
              child: VideoPlayer(_vidoeController),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_vidoeController.value.isPlaying) {
              _vidoeController.pause();
            } else {
              _vidoeController.play();
            }
          });
        },
        child: Icon(
          _vidoeController.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
