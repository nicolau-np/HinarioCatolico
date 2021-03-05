import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hinario_catolico/widgets/cards.dart';
import 'package:hinario_catolico/widgets/carousel_widget.dart';
import 'package:hinario_catolico/widgets/circle_button.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

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
          children: [
            CarouselWidget(),
            Container(
              height: 250.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardsWidget(
                    "https://www.vaticannews.va/content/dam/vaticannews/multimedia/2020/02/07/00891_07022020-Sua-Beatitudine-Em.ma-Card.-Louis-RaphaEl-Sako-Patriarca-di-Babilonia-dei-C.jpg/_jcr_content/renditions/cq5dam.thumbnail.cropped.750.422.jpeg",
                    'Visita à Angola',
                    'Papa Francisco faz a sua visita a Angola',
                    "05-03-2021    12:15:00",
                  ),
                  CardsWidget(
                    "https://www12.senado.leg.br/noticias/materias/2019/02/12/humberto-costa-critica-interferencia-da-abin-na-igreja-catolica/20190212_00249s.jpg",
                    'Igrejas Catolicas fechadas',
                    'Governo de Paquistão fecha as igrejas catolicas',
                    "02-03-2021    10:10:00",
                  ),
                  CardsWidget(
                    "https://cdn.domtotal.com/img/noticias/2020-12/1488017_470927.jpg",
                    'Vaticano de volta',
                    'Vaticano abre as portas após a Pandemia',
                    "10-01-2021    17:50:00",
                  ),
                  CardsWidget(
                    "https://www.sonoticias.com.br/wp-content/uploads/2018/01/5tl9nt7eormccb2iw9mrkdsznfvejtos8nulzy4jskcvvkz9.jpg",
                    'Secretário do Papa',
                    'Secretário do Papa fala para a Rádio',
                    "25-12-2020    20:03:1",
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleButton(),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
