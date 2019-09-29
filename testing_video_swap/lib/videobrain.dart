import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoBrain {
  List<Widget> videoList = [
    Container(
      height: 100,
      width: 200,
      color: Colors.blueAccent,
    ),
    Container(
      height: 50,
      width: 100,
      color: Colors.redAccent,
    )
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
