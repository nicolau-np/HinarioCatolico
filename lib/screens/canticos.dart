import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class CanticosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cânticos'),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text('heloo'),
      ),
    );
  }
}
