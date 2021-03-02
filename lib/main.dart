import 'package:flutter/material.dart';
import 'package:hinario_catolico/screens/canticos.dart';
import 'package:hinario_catolico/screens/configuracoes.dart';
import 'package:hinario_catolico/screens/home_page.dart';
import 'package:hinario_catolico/screens/oracoes.dart';
import 'package:hinario_catolico/screens/suporte.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hinário Católico',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/oracoes': (context) => OracoesPage(),
        '/canticos': (context) => CanticosPage(),
        '/configuracoes': (context) => ConfigPage(),
        '/suporte': (context) => SuportePage(),
      },
    );
  }
}
