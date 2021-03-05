import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;

  CardsWidget(this.image, this.title, this.description, this.date);
  @override
  Widget build(BuildContext context) {
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
        width: 200,
        height: 550,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: NetworkImage(this.image),
                height: 110.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  this.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  this.description,
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    this.date,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                  )),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/descricao_noticia', arguments: {
                      'title':this.title
                    });
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
  }
}
