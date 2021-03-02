import 'package:flutter/material.dart';
import 'package:hinario_catolico/screens/home_page.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/drawer_screen',
      routes: {
        '/': (context) => HomePage(),
        '/drawer_screen': (context) => DrawerScreen(),
      },
    );
  }
}
