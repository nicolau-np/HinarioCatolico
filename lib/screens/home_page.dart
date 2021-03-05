import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hinario_catolico/widgets/cards.dart';
import 'package:hinario_catolico/widgets/carousel_widget.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Hinário'),
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselWidget(),
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: CardsWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
