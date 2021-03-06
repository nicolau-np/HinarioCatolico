import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/cantico_model.dart';

class CanticoController extends ChangeNotifier {
  Firestore firestore = Firestore.instance;
  List<CanticoModel> lista = [];
  CanticoController() {
    getCanticos();
  }

  int countCanticos() {
    return lista.length;
  }

  Future<CanticoModel> getCanticos() async {
    final lista_canticos =
        await firestore.collection('canticos').getDocuments();
    lista = lista_canticos.documents
        .map((e) => (CanticoModel.fromDocument(e)))
        .toList();

    notifyListeners();
  }
}
