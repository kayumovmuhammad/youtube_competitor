import 'package:flutter/material.dart';
import 'package:flutter_app/Elements/video_class.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.videos, required this.index});

  final List<Video> videos;
  final int index;

  @override
  Widget build(BuildContext context) {
    final themes = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/preview/${videos[index].id}.png',
          width: MediaQuery.of(context).size.width,
          height: 300,
        ),
        // Flexible(
        Text(
          videos[index].name.toString(),
          style: themes.textTheme.labelMedium,
          // softWrap: true,
        ),
        Text(
          "${videos[index].channelName} · ${videos[index].viewsCounts.toString()} просмотров",
          style: themes.textTheme.labelSmall,
        ),
      ],
    );
  }
}
