import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {
  final String videourl;
  final String caption;

  const FullscreenPlayer(
      {super.key, required this.videourl, required this.caption});

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
 

  controller = VideoPlayerController.asset(widget.videourl)
    ..setVolume(0)
    ..setLooping(true)
    ..play();
 }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(),
     builder: (context, snapshot){
      if (snapshot.connectionState != ConnectionState.done){
        return const Center (child: CircularProgressIndicator( strokeWidth: 2));
      }

      return AspectRatio(aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),);
     },
    );
  }
}
