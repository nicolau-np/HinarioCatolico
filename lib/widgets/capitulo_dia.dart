import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/capitulo_controller.dart';
import 'package:provider/provider.dart';

class CapituloDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

        return Consumer<CapituloController>(builder: (__,capituloController,_){
          return ListView.builder(
              itemCount: capituloController.countCapitulo(),
              itemBuilder: (BuildContext context, int index){
              return Column(
                children:[
                  Container(
                    child: Text(
                      capituloController.lista[index].description,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Text(
                      capituloController.lista[index].capitulo,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              );
          });
        });

  }
}
