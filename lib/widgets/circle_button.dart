import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String title;
  final String image;
  final String route;

  CircleButton(this.title, this.image, this.route);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
              Navigator.of(context).pushNamed(this.route);
          },
          child: Column(
            children: [
              Text(
                this.title,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3,),
              Container(
                height: 100,
                width: 150,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    this.image,
                  ),
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
