import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/carousel_model.dart';

class CarouselController extends ChangeNotifier {
  CarouselController() {
    getCarousel();
  }

  List<CarouselModel> lista = [];
  final Firestore firestore = Firestore.instance;

  int countSlider() {
    return lista.length;
  }

  Future<void> getCarousel() async {
    final getLista = await firestore.collection("carousel").getDocuments();
    lista =
        getLista.documents.map((e) => (CarouselModel.fromDocument(e))).toList();

    notifyListeners();
  }
}
