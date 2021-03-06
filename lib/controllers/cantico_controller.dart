import 'package:flutter/foundation.dart';
import 'package:hinario_catolico/models/cantico_model.dart';

class CanticoController extends ChangeNotifier{
List<CanticoModel> lista = [];
CanticoController(){

}

int countCanticos(){
  return lista.length;
}

Future<CanticoModel>
}