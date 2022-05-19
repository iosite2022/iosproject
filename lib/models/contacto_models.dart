// To parse this JSON data, do
//
//     final contacto = contactoFromMap(jsonString);

import 'dart:convert';

class Contacto {
  Contacto({
    this.correo,
    this.foto,
    this.nombre,
    this.numero,
    this.puesto,
    this.id,
  });

  String? correo;
  String? foto;
  String? nombre;
  String? numero;
  String? puesto;
  String? id;

  factory Contacto.fromJson(String str) => Contacto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contacto.fromMap(Map<String, dynamic> json) => Contacto(
        correo: json["correo"],
        foto: json["foto"],
        nombre: json["nombre"],
        numero: json["numero"],
        puesto: json["puesto"],
      );

  Map<String, dynamic> toMap() => {
        "correo": correo,
        "foto": foto,
        "nombre": nombre,
        "numero": numero,
        "puesto": puesto,
      };
}
