import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/oracao_model.dart';

class OracaoController extends ChangeNotifier {
  List<OracaoModel> lista = [];
  Firestore firestore = Firestore.instance;

  OracaoController(){
    getOracoes();
  }

  int countOracoes() {
    return lista.length;
  }

  Future<OracaoModel> getOracoes() async {
    final lista_oracoes = await firestore.collection("oracoes").getDocuments();
    lista = lista_oracoes.documents
        .map((e) => (OracaoModel.fromDocument(e)))
        .toList();

    notifyListeners();
  }
}
