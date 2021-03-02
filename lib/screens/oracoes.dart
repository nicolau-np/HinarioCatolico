import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class OracoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orações'),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text('heloo'),
      ),
    );
  }
}
