import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class CanticoModel extends ChangeNotifier {
  Firestore firestore = Firestore.instance;
  String id;
  String title;
  String pDescription;
  String bDescription;

  CanticoModel();

  CanticoModel.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    title = doc.data['title'];
    pDescription = doc.data['pDescription'];
    bDescription = doc.data['bDescription'];
  }
}
