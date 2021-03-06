import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/cantico_controller.dart';
import 'package:hinario_catolico/controllers/capitulo_controller.dart';
import 'package:hinario_catolico/controllers/carousel_controller.dart';
import 'package:hinario_catolico/controllers/noticia_controller.dart';
import 'package:hinario_catolico/controllers/oracao_controller.dart';
import 'package:hinario_catolico/models/cantico_model.dart';
import 'package:hinario_catolico/models/capitulo_model.dart';
import 'package:hinario_catolico/models/carousel_model.dart';
import 'package:hinario_catolico/models/noticia_model.dart';
import 'package:hinario_catolico/models/oracao_model.dart';
import 'package:hinario_catolico/screens/canticos.dart';
import 'package:hinario_catolico/screens/configuracoes.dart';
import 'package:hinario_catolico/screens/descricao_cantico.dart';
import 'package:hinario_catolico/screens/descricao_noticia.dart';
import 'package:hinario_catolico/screens/descricao_oracao.dart';
import 'package:hinario_catolico/screens/home_page.dart';
import 'package:hinario_catolico/screens/oracoes.dart';
import 'package:hinario_catolico/screens/suporte.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CarouselController()),
        ChangeNotifierProvider(create: (_) => CarouselModel()),
        ChangeNotifierProvider(create: (_) => NoticiaController()),
        ChangeNotifierProvider(create: (_) => NoticiaModel()),
        ChangeNotifierProvider(create: (_) => OracaoController()),
        ChangeNotifierProvider(create: (_) => OracaoModel()),
        ChangeNotifierProvider(create: (_)=>CapituloModel()),
        ChangeNotifierProvider(create: (_)=>CapituloController()),
        ChangeNotifierProvider(create: (_)=>CanticoModel()),
        ChangeNotifierProvider(create: (_)=>CanticoController()),
      ],
      child: MaterialApp(
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
          '/descricao_noticia': (context) => DescricaoNoticia(),
          '/descricao_oracao': (context) => DescricaoOracao(),
          '/descricao_cantico':(context)=>DescricaoCantico(),
        },
      ),
    );
  }
}
