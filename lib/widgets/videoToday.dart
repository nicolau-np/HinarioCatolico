import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoToday extends StatefulWidget {
  @override
  _VideoTodayState createState() => _VideoTodayState();
}

class _VideoTodayState extends State<VideoToday> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "https://www.youtube.com/watch?v=7IG5kRFIMZw")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize();

    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        createVideo();
        playerController.play();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 170,
        width: 300,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            child: (playerController!=null?VideoPlayer(playerController): Container()),
          ),
        ),

      
      ),
    );
    
  }
}
