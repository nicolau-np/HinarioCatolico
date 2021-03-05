import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hinario_catolico/widgets/capitulo_dia.dart';
import 'package:hinario_catolico/widgets/cards_noticias.dart';
import 'package:hinario_catolico/widgets/carousel_widget.dart';
import 'package:hinario_catolico/widgets/circle_button.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';
import 'package:hinario_catolico/widgets/videoToday.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hinário'),
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWidget(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Notícias",
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.white,
              child: CardsNoticias(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Capítulo do Dia",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
                child: CapituloDia(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleButton(
                    'Orações',
                    'https://static.fnac-static.com/multimedia/Images/PT/NR/f6/3f/00/16374/1540-1.jpg',
                    '/oracoes',
                  ),
                  CircleButton(
                      'Cânticos',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDg-_okK1TsqtW0BX4XeqygY2ptMx96YPhkw&usqp=CAU',
                      '/canticos'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Multimédia",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: VideoToday(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
