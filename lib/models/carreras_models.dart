// To parserequired this JSON data, do
//
//     final carrerasModels = carrerasModelsFromMap(jsonString);

import 'dart:convert';

class Carreras {
  Carreras(
      {required this.imagen,
      required this.mision,
      required this.objetivo,
      required this.video,
      required this.vision,
      this.id});

  String imagen;
  String mision;
  String objetivo;
  String video;
  String vision;
  String? id;

  factory Carreras.fromJson(String str) => Carreras.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Carreras.fromMap(Map<String, dynamic> json) => Carreras(
        imagen: json["imagen"],
        mision: json["mision"],
        objetivo: json["objetivo"],
        video: json["video"],
        vision: json["vision"],
      );

  Map<String, dynamic> toMap() => {
        "imagen": imagen,
        "mision": mision,
        "objetivo": objetivo,
        "video": video,
        "vision": vision,
      };
}
