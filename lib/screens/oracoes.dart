import 'package:flutter/material.dart';
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
                    children: [_container()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _container() {
    return InkWell(
      onTap: (){
        print('hello');
      },
          child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: double.infinity,
                width: 100,
                child: Image.network(
                  'https://image.flaticon.com/icons/png/512/42/42943.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Titulo',
                    style: TextStyle(
                      color: Colors.red[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Descricao da oracao lorem ipsium lorem',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.share,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.copy,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
