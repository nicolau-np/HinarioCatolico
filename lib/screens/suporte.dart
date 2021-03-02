import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class SuportePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suporte'),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text('heloo'),
      ),
    );
  }
}
