import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:indian_sign_languages/home_module/video_items.dart';
import 'package:video_player/video_player.dart';

class videoPlayerScreen extends StatefulWidget {
  String name;
  videoPlayerScreen({required this.name});

  @override
  State<videoPlayerScreen> createState() => _videoPlayerScreenState();
}

class _videoPlayerScreenState extends State<videoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name.toUpperCase()),
          leading: IconButton(
            icon: LineIcon.arrowCircleLeft(),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: VideoItems(
              videoPlayerController: VideoPlayerController.asset(
                'assets/videos/test.mp4',
              ),
              autoplay: true,
              looping: true,
            ),
          ),
        ));
  }
}
