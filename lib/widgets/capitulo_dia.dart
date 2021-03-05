import 'package:flutter/material.dart';

class CapituloDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "Contudo, aos que o receberam, aos que creram em seu nome, deu-lhes o direito de se tornarem filhos de Deus.",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
        ),
        Container(
          child: Text(
            "João 1:12",
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
