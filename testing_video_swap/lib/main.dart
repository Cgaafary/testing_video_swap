import 'package:flutter/material.dart';
import 'package:testing_video_swap/videobrain.dart';

import 'videobrain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoSwapPage(),
    );
  }
}

class VideoSwapPage extends StatefulWidget {
  @override
  _VideoSwapPageState createState() => _VideoSwapPageState();
}

class _VideoSwapPageState extends State<VideoSwapPage> {
  VideoBrain videoBrain = VideoBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Swap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Stack(
                children: videoBrain.getVideoList(),
              ),
            ),
            FlatButton(
              color: Colors.amber,
              child: Text('Change'),
              onPressed: () {
                setState(() {
                  videoBrain.switchVideos();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
