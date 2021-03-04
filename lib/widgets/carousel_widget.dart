import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
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
          InkWell(
            onTap: () {
              print("clicou 1");
            },
            child: Image.network(
                'https://img2.migalhas.uol.com.br/_MEDPROC_/https__img1.migalhas.uol.com.br__SL__gf_base__SL__empresas__SL__MIGA__SL__imagens__SL__2020__SL__10__SL__27__SL__4b0aea2f-b96d-44d1-91a3-f0596ef846f8.jpg._PROC_CP75.jpg',
                fit: BoxFit.cover),
          ),
          InkWell(
            onTap: () {
              print("clicou 1");
            },
            child: Image.network(
                'https://img2.migalhas.uol.com.br/_MEDPROC_/https__img1.migalhas.uol.com.br__SL__gf_base__SL__empresas__SL__MIGA__SL__imagens__SL__2020__SL__10__SL__27__SL__4b0aea2f-b96d-44d1-91a3-f0596ef846f8.jpg._PROC_CP75.jpg',
                fit: BoxFit.cover),
          ),
          
        ],
      ),
    );
  }
}
