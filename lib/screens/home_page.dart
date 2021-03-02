import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hinário Católico'),
      ),
      drawer: DrawerScreen(),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text("Frase do dia"),
        ),
        Container(
          child: Text("Galeria"),
        ),
        Row(
          children: [
            Container(
              child: Text("hello1"),
            ),
            Container(
              child: Text("hello2"),
            )
          ],
        ),
      ]),
    );
  }
}
