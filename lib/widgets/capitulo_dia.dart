import 'package:flutter/material.dart';

class CapituloDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "« Sede, Santos com santo o vosso pai »",
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
        Container(
          child: Text("Salmos 68:19-20"),
        ),
      ],
    );
  }
}
