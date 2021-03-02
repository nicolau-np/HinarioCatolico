import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150.0,
            width: 500,
            color: Colors.red,
            child: Image.asset(
              'assets/orante.png',
              fit: BoxFit.contain,
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favoritos"),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text("Exercício de Canto"),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
