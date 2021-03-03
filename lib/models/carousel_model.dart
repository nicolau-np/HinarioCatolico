import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class CarouselModel extends ChangeNotifier {
  final Firestore firestore = Firestore.instance;

  String id;
  String imagem;
  String detalhes;

  CarouselModel();

  CarouselModel.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    imagem = doc.data['imagem'];
    detalhes = doc.data['detalhes'];
  }


}
