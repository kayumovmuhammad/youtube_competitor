import 'package:flutter/material.dart';
import 'package:flutter_app/Elements/action_for_main_appbar.dart';
import 'package:flutter_app/Elements/video_class.dart';
import 'package:flutter_app/Elements/video_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Video> videos = [
    Video(
      id: 1,
      name: 'Как сделать хорошее фото!',
      channelName: 'Photo Studio',
      type: 'video',
      viewsCounts: 1526,
    ),
    Video(
      id: 2,
      name: 'Видео 4K 120FPS!',
      channelName: 'jamal',
      type: 'video',
      viewsCounts: 19554624,
    ),
    Video(
      id: 3,
      name: 'Как не дать обмануть себя таксисту(советы от профи)!',
      channelName: 'Московское такси',
      type: 'video',
      viewsCounts: 6565511,
    ),
    Video(type: 'empty', emptyHeight: 15),
  ];

  @override
  Widget build(BuildContext context) {
    final themes = Theme.of(context); // App Theme

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('assets/youtube.png', width: 30, height: 30),
              Text(" YouTube", style: themes.textTheme.titleMedium),
            ],
          ),
          actions: [
            ActionForAppBar(iconWidget: Icon(Icons.cast)),
            ActionForAppBar(iconWidget: Icon(Icons.notifications)),
            ActionForAppBar(iconWidget: Icon(Icons.search)),

            SizedBox(width: 10),
          ],
        ),
        body: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (BuildContext context, int index) {
            if (videos[index].type == 'video') {
              return VideoWidget(videos: videos, index: index);
            } else if (videos[index].type == 'empty') {
              return SizedBox(
                height: (videos[index].emptyHeight as int).toDouble(),
              );
            } else {
              return Text("None");
            }
          },
        ),
      ),
    );
  }
}
