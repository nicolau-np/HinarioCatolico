import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class OracaoModel extends ChangeNotifier{
  Firestore firestore = Firestore.instance;
  OracaoModel();
  String id;
  String title;
  String pDescription;
  String bDescription;
  String status;

  OracaoModel.fromDocument(DocumentSnapshot doc){
    id=doc.documentID;
    title = doc.data['title'];
    pDescription = doc.data['pDescription'];
    bDescription = doc.data['bDescription'];
  }
}