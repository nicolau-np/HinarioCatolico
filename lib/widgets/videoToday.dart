import 'package:flutter/material.dart';
class VideoToday extends StatefulWidget {
  @override
  _VideoTodayState createState() => _VideoTodayState();
}

class _VideoTodayState extends State<VideoToday> {
  @override
   Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
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
    );
  }
}
