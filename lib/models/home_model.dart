import 'dart:convert';

class HomeModel {
  HomeModel({this.contact, this.images, this.tript, required this.video});

  Contact? contact;
  List<String>? images;
  List<String>? tript;
  String video;

  factory HomeModel.fromJson(String str) => HomeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HomeModel.fromMap(Map<String, dynamic> json) => HomeModel(
      contact: Contact.fromMap(json["contact"]),
      images: List<String>.from(json["images"]
          .map((x) => x ?? 'http://placehold.jp/3d4070/ffffff/150x150.png')),
      tript: List<String>.from(json["tript"].map((x) => x)),
      video: json["video"]);

  Map<String, dynamic> toMap() => {
        "contact": contact!.toMap(),
        "images": List<dynamic>.from(images!.map((x) => x)),
        "tript": List<dynamic>.from(tript!.map((x) => x)),
      };
}

class Contact {
  Contact({
    required this.area,
    required this.email,
    this.image,
    required this.name,
    required this.phone,
  });

  String area;
  String email;
  String? image;
  String name;
  String phone;

  factory Contact.fromJson(String str) => Contact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contact.fromMap(Map<String, dynamic> json) => Contact(
        area: json["area"],
        email: json["email"],
        image: json["image"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toMap() => {
        "area": area,
        "email": email,
        "image": image,
        "name": name,
        "phone": phone,
      };
}
