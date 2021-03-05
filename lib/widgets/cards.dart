import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/ca/76/0b/ca760b70976b52578da88e06973af542.jpg",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        title: Text(
                          "Novas escolas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        subtitle: Text("hello"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(0),
                        child: Image.network(
                          "http://webmeup.com/upload/blog/lead-image-105.png",
                          fit: BoxFit.fill,
                          height: 120,
                          width: 350,
                        ),
                      ),
                      Container(
                        // make buttons use the appropriate styles for cards
                        child: ButtonBar(
                          children: <Widget>[
                            Text(
                              "nada",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FlatButton(
                              child: const Text('Explorar'),
                              onPressed: () {
                                
                              },
                              textColor: Colors.white,
                              color: Colors.amber,
                            ),
                            FlatButton(
                              child: const Text('Reservar'),
                              onPressed: () {/* ... */},
                              textColor: Colors.white,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
  }
}