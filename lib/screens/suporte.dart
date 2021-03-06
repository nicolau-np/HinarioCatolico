import 'package:flutter/material.dart';
import 'package:hinario_catolico/widgets/drawer_screen.dart';

class SuportePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suporte'),
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
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
                height: 220.0,
                width: 400.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hinário Católico',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Text(
                          'No hinário encontramos uma riqueza de conteúdo tanto musical quanto cultural. Ali podem ser encontradas melodias judaicas, alemãs, irlandesas e etc. Também se podem verificar autores desde Bethoveen a Bill Gather. Isso sem falar na riqueza de suas letras e melodias que, quando bem produzidas e cantadas com entendimento, nos fazem experimentar um pouco da realidade celestial aqui na Terra.',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://z-m-scontent.flad4-1.fna.fbcdn.net/v/t1.0-9/fr/cp0/e15/q65/56158466_1613664102111943_966268719913238528_o.jpg?_nc_cat=100&ccb=1-3&_nc_sid=85a577&efg=eyJpIjoibyJ9&_nc_eui2=AeFQihzzsDx56PjaMwunv7xkaSQdNJK7lqhpJB00kruWqP9tqawl7mtHPKRdgtv0i3ube_BVXu1GKmCe23YpwJp0&_nc_ohc=JQP69CeqsdsAX_az4A2&_nc_ad=z-m&_nc_cid=1390&_nc_eh=dc7e7cf94f7953396c46ab61180c3093&_nc_rml=0&_nc_ht=z-m-scontent.flad4-1.fna&tp=14&oh=98a60d2cf94c2db0a43f3da227b9e1c7&oe=60689451',
                      ),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Autor',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nicolau NP',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Copyrith @ 2021'),
                  Text('Powered by nicolas_html')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
