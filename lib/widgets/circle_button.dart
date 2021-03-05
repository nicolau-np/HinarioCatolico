import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String title;
  final String image;

  CircleButton(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 100,
              width: 150,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  this.image,
                ),
                foregroundColor: Colors.white,
                child: Text(this.title),
              ),
            ),
            Text(this.title),
          ],
        ),
      ),
    );
  }
}
