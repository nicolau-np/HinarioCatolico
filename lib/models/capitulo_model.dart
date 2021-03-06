import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class CapituloModel extends ChangeNotifier{
  String id;
  String capitulo;
  String description;
  String status;
  Firestore firestore = Firestore.instance;
  CapituloModel();

  CapituloModel.fromDocument(DocumentSnapshot doc){
    id = doc.documentID;
    capitulo = doc.data['capitulo'];
    description = doc.data['description'];
    status = doc.data['status'];
  }
}