import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/capitulo_model.dart';

class CapituloController extends ChangeNotifier{
  Firestore firestore = Firestore.instance;
  List<CapituloModel> lista = [];

  CapituloController(){
    getCapitulos();
  }
  int countCapitulo(){
    return lista.length;
  }
  
  Future<CapituloModel> getCapitulos() async{
    final lista_capitulo = await firestore.collection("capitulos").where('status', isEqualTo: 'on').getDocuments();
    lista = lista_capitulo.documents.map((e) => (CapituloModel.fromDocument(e))).toList();
    notifyListeners();
  }
}