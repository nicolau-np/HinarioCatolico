import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/cards_canticos.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class CanticosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cânticos'),
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
                  child: CardsCanticos(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
