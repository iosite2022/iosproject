import 'dart:convert';

class CarrerModel {
  CarrerModel(
      {this.imagenMision,
      this.imagenObjetivo,
      this.imagenVision,
      this.mision,
      this.objetivo,
      this.video,
      this.vision,
      this.id});

  String? imagenMision;
  String? imagenObjetivo;
  String? imagenVision;
  String? mision;
  String? objetivo;
  String? video;
  String? vision;
  String? id;

  factory CarrerModel.fromJson(String str) =>
      CarrerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CarrerModel.fromMap(Map<String, dynamic> json) => CarrerModel(
        imagenMision: json["imagenMision:"],
        imagenObjetivo: json["imagenObjetivo:"],
        imagenVision: json["imagenVision:"],
        mision: json["mision:"],
        objetivo: json["objetivo:"],
        video: json["video:"],
        vision: json["vision:"],
      );

  Map<String, dynamic> toMap() => {
        "imagenMision:": imagenMision,
        "imagenObjetivo:": imagenObjetivo,
        "imagenVision:": imagenVision,
        "mision:": mision,
        "objetivo:": objetivo,
        "video:": video,
        "vision:": vision,
      };
}
