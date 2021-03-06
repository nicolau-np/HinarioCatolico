import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/cantico_controller.dart';
import 'package:provider/provider.dart';

class CardsCanticos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CanticoController>(builder: (__, canticoController, _) {
      return ListView.builder(
          itemCount: canticoController.countCanticos(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {
                  final cantico = canticoController.lista[index];
                  Navigator.of(context)
                      .pushNamed('/descricao_cantico', arguments: cantico);
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
                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: double.infinity,
                          width: 100,
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2017/01/09/20/11/music-1967480_960_720.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           SizedBox(
                              height: 5,
                            ),
                            Expanded(
                                                          child: Text(
                                canticoController.lista[index].title,
                                style: TextStyle(
                                  color: Colors.red[200],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            
                            Expanded(
                                                          child: Text(
                                canticoController.lista[index].pDescription,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.copy,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
    });
  }
}
