import 'package:flutter/material.dart';
import 'package:hinario_catolico/models/oracao_model.dart';

class DescricaoOracao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final oracao = ModalRoute.of(context).settings.arguments as OracaoModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(oracao.title),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
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
                )
              ],
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
              child: Text(oracao.bDescription),
            ),
          ),
        ],
      ),
    );
  }
}
