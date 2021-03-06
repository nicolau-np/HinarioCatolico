import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/carousel_controller.dart';
import 'package:provider/provider.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CarouselController>(builder: (__, carouselController, _) {
      return SizedBox(
        height: 170.0,
        width: double.infinity,
        child: Carousel(
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.lightGreenAccent,
          indicatorBgPadding: 15.0,
          dotBgColor: Colors.black38,
          dotVerticalPadding: 0.0,
          dotPosition: DotPosition.bottomRight,
          images: [
            NetworkImage(
              'https://cdn.jornalgrandebahia.com.br/2017/12/Orando-rezando.jpg',
            ),
            NetworkImage(
              'https://www.cathopic.com/images/1080p/1981d56e5267d4c4863d0c6925db08c5.jpg',
            ),
            NetworkImage(
              'https://st4.depositphotos.com/18349226/20255/i/600/depositphotos_202550970-stock-photo-parent-children-praying-bed-family.jpg',
            ),
          ],
        ),
      );
    });
  }
}
