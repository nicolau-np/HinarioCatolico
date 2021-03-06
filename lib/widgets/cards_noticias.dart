import 'package:flutter/material.dart';
import 'package:hinario_catolico/controllers/noticia_controller.dart';
import 'package:provider/provider.dart';

class CardsNoticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NoticiaController>(builder: (__, noticiaController, _) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: noticiaController.countNoticia(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
              width: 220,
              height: 550,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: NetworkImage(noticiaController.lista[index].image),
                      height: 110.0,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                          noticiaController.lista[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Expanded(
                        child: Text(
                          noticiaController.lista[index].pDescription,
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(4),
                        child: Expanded(
                          child: Text(
                            noticiaController.lista[index].data,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 8,
                            ),
                          ),
                        )),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          final noticia = noticiaController.lista[index];
                          Navigator.of(context).pushNamed('/descricao_noticia',
                              arguments: noticia);
                        },
                        child: Text("Ler mais"),
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
