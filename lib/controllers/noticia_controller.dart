import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/noticia_model.dart';

class NoticiaController extends ChangeNotifier {

  List<NoticiaModel> lista = [];

  final Firestore firestore = Firestore.instance;

  NoticiaController(){
    getNoticias();
  }

  int countNoticia() {
    return lista.length;
  }

  Future<NoticiaModel> getNoticias() async {
      final lista_noticia = await firestore.collection("noticias").getDocuments();
      lista = lista_noticia.documents.map((e) => (NoticiaModel.fromDocument(e))).toList();

      notifyListeners();
  }
}
