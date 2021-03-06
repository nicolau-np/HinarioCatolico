import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/carousel_controller.dart';
import 'package:provider/provider.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CarouselController>(builder: (__, carouselController,_){
      return  SizedBox(
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
          images: carouselController.lista.map((e) {
            return Builder(builder: (BuildContext context){
              return InkWell(
                onTap: () {
                  print("clicou 1");
                },
                child: Image.network(
                    e.imagem,
                    fit: BoxFit.fill,),
              );
            });
          }).toList(),
        ),
      );
    });
  }


}
