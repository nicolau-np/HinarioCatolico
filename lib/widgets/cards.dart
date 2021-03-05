import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: 200,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: NetworkImage('https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__340.jpg'), height: 50,),
            Text('hello2')
          ],
        ),
      ),
    );
  }
}
