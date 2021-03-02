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
            title: Text("Orações"),
            onTap: () {
              Navigator.of(context).pushNamed('/oracoes');
            },
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text("Cânticos"),
            onTap: () {
              Navigator.of(context).pushNamed('/canticos');
            },
          ),
          Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
            onTap: () {
              Navigator.of(context).pushNamed('/configuracoes');
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Suporte"),
            onTap: () {
              Navigator.of(context).pushNamed('/suporte');
            },
          ),
        ],
      ),
    );
  }
}
