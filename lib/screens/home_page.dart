import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
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
      body: SizedBox(
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
                print("clicou 2");
              },
              child: Image.network(
                'http://gazetadotriangulo.com.br/wp-content/uploads/2019/04/Semana-Santa-606x312.png',
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {
                print("clicou 3");
              },
              child: Image.network(
                'https://www.je10.com.br/wp-content/uploads/2019/04/Comunidades-cat%C3%B3licas-divulgam-celebra%C3%A7%C3%B5es-da-semana-santa-777x437.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
