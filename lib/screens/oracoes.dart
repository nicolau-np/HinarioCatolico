import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/cards_oracoes.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class OracoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orações'),
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Pesquisar...',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 525.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 4, 5, 4),
                  child: ListView(
                    children: [
                      CardsOracoes(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
