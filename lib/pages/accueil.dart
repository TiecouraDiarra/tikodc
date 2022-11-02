import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/posts/mypost_1.dart';
import 'package:tikodc/posts/mypost_2.dart';
import 'package:tikodc/posts/mypost_3.dart';
import 'package:tikodc/posts/mypost_4.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  final List<Map> tiktokItems = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
    {
      "video": "assets/videos/video_6.mp4",
    },
  ];

  //const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          MyPost4(),
        ],
      ),
    );
  }

}
