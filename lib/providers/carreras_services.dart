import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:iosproject/models/carreras_models.dart';
import 'package:iosproject/models/contacto_models.dart';
import 'package:iosproject/models/home_models.dart';

class CarrerasServices extends ChangeNotifier {
  final String _baseUrl = 'ite-ensenada-default-rtdb.firebaseio.com';
  final List<CarrerModel> ingenierias = [];
  final List<Contacto> contactoEscuela = [];
  final List<HomeModels> homeData = [];

  CarrerasServices() {
    carrerasUniversitarias();
    print('Aqui en carrera Services');
    conctactoUniversitario();
    paginaHome();
  }

  //Informacion de las Carreras
  Future carrerasUniversitarias() async {
    notifyListeners();

    final url = Uri.https(_baseUrl, 'carrera.json');
    final respuesta = await http.get(url);
    // Vamos a crear un mapa con la información que regresa
    final Map<String, dynamic> mapaDeCarreras = json.decode(respuesta.body);
    mapaDeCarreras.forEach((key, valor) {
      final IngeoTemporal = CarrerModel.fromMap(valor);
      IngeoTemporal.id = key;
      ingenierias.add(IngeoTemporal);
    });

    notifyListeners();

    print(ingenierias);
    return ingenierias;
  }

  //Contactos de cordinadores
  Future conctactoUniversitario() async {
    notifyListeners();

    final url = Uri.https(_baseUrl, 'contacto.json');
    final respuesta = await http.get(url);
    // Vamos a crear un mapa con la información que regresa
    final Map<String, dynamic> mapaDeCarreras = json.decode(respuesta.body);
    mapaDeCarreras.forEach((key, valor) {
      final IngeoTemporal = Contacto.fromMap(valor);
      IngeoTemporal.id = key;
      contactoEscuela.add(IngeoTemporal);
    });

    notifyListeners();

    print(contactoEscuela);
    return contactoEscuela;
  }

  //Pagina Home

  Future paginaHome() async {
    notifyListeners();

    final url = Uri.https(_baseUrl, 'home.json');
    final respuesta = await http.get(url);
    // Vamos a crear un mapa con la información que regresa
    final Map<String, dynamic> mapaDeCarreras = json.decode(respuesta.body);
    mapaDeCarreras.forEach((key, valor) {
      final IngeoTemporal = HomeModels.fromMap(valor);
      IngeoTemporal.id = key;
      homeData.add(IngeoTemporal);
    });

    notifyListeners();

    print(homeData);
    return homeData;
  }
}
