// To parse this JSON data, do
//
//     final carrerasModels = carrerasModelsFromMap(jsonString);

import 'dart:convert';

class Inge {
  Inge(
      {required this.mision,
      required this.vision,
      this.imagen,
      required this.objetivo,
      this.id});

  String mision;
  String vision;
  String? imagen;
  String objetivo;
  String? id;

  factory Inge.fromJson(String str) => Inge.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Inge.fromMap(Map<String, dynamic> json) => Inge(
        mision: json["Mision"],
        vision: json["Vision"],
        imagen: json["imagen"],
        objetivo: json["objetivo"],
      );

  Map<String, dynamic> toMap() => {
        "Mision": mision,
        "Vision": vision,
        "imagen": imagen,
        "objetivo": objetivo,
      };
}
