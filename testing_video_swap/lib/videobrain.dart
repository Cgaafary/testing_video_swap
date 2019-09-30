import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'video2.dart';

class VideoBrain {
  List<Widget> videoList = [
    VideoContainer('videos/1.mp4'),
    VideoContainer('videos/2.mp4'),
  ];

  List<Widget> getVideoList() {
    return videoList;
  }

  void switchVideos() {
    Widget topName = videoList[0];
    Widget bottomName = videoList[1];

    List<Widget> newList = [bottomName, topName];
    videoList = newList;
  }
}
