//Reproductor de videos con scroll
import 'package:flutter/material.dart';
import 'package:toktik_210013/domain/entities/video_post.dart';
import 'package:toktik_210013/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik_210013/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            //Videos Player + gradiente
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            ),
            //Botones
          ],
        );
      },
    );
  }
}
