import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:iosproject/models/carreras_models.dart';

class CarrerasServices extends ChangeNotifier {
  final String _baseUrl = 'ite-ensenada-default-rtdb.firebaseio.com';
  final List<Carreras> ingenierias = [];
  late Carreras carreraSeleccionada;

  CarrerasServices() {
    carrerasUniversitarias();
    print('Aqui en carrera Services');
  }

  Future carrerasUniversitarias() async {
    notifyListeners();

    final url = Uri.https(_baseUrl, 'carreras.json');
    final respuesta = await http.get(url);
    // Vamos a crear un mapa con la información que regresa
    final Map<String, dynamic> mapaDeCarreras = json.decode(respuesta.body);
    mapaDeCarreras.forEach((key, valor) {
      final IngeoTemporal = Carreras.fromMap(valor);
      IngeoTemporal.id = key;
      ingenierias.add(IngeoTemporal);
    });

    notifyListeners();

    print(ingenierias);
    return ingenierias;
  }
}
