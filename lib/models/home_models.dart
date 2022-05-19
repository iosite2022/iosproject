// To parse this JSON data, do
//
//     final HomeModels = HomeModelsFromMap(jsonString);

import 'dart:convert';

class HomeModels {
  HomeModels({this.imagen1, this.imagen2, this.imagen3, this.video, this.id});

  String? imagen1;
  String? imagen2;
  String? imagen3;
  String? video;
  String? id;

  factory HomeModels.fromJson(String str) =>
      HomeModels.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HomeModels.fromMap(Map<String, dynamic> json) => HomeModels(
        imagen1: json["imagen1"],
        imagen2: json["imagen2"],
        imagen3: json["imagen3"],
        video: json["video"],
      );

  Map<String, dynamic> toMap() => {
        "imagen1": imagen1,
        "imagen2": imagen2,
        "imagen3": imagen3,
        "video": video,
      };
}
