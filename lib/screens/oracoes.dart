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
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ListView(
                    children: [
                      CardsOracoes(
                        'Pai Nosso',
                        'Pai nosso que estais no ceus, santif...',
                      ),
                      CardsOracoes(
                        'Glória ao Pai',
                        'Glória ao Pai e ao Filho...',
                      ),
                      CardsOracoes(
                        'À Vossa Proteção',
                        'À Vossa Proteção recorremos, Santa...',
                      ),
                      CardsOracoes(
                        'Alma de Cristo',
                        'Alma de Cristo, santificai-me...',
                      ),
                      CardsOracoes(
                        'Ao Anjo da Guarda',
                        'Santo Anjo do Senhor...',
                      ),
                      CardsOracoes(
                        'Benedictus',
                        'Bendito o Senhor Deus de Israel...',
                      ),
                      CardsOracoes(
                        'Magnificat',
                        'A minha alma glorifica ao Senhor...',
                      ),
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
