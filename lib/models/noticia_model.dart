import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class NoticiaModel extends ChangeNotifier {
  final Firestore firestore = Firestore.instance;

  NoticiaModel();

  String id;
  String title;
  String image;
  String data;
  String pDescription;
  String bDescription;

  NoticiaModel.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    title = doc.data['title'];
    image = doc.data['image'];
    data = doc.data['data'];
    pDescription = doc.data['pDescription'];
    bDescription = doc.data['bDescription'];
  }
}
