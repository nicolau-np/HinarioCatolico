import 'package:flutter/material.dart';
import 'package:hinario_catolico/models/noticia_model.dart';

class DescricaoNoticia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noticia = ModalRoute.of(context).settings.arguments as NoticiaModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(noticia.title),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: Image.network(
              noticia.image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Text(noticia.bDescription),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
