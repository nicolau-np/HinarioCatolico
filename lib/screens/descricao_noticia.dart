import 'package:flutter/material.dart';

class DescricaoNoticia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(route['title']),
      ),
      body: Center(
        child: Text('ºhello'),
      ),
    );
  }
}
