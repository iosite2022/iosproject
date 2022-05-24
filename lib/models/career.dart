import 'dart:convert';

class Career {
  Career({
    this.contact,
    this.home,
    this.info,
    this.name,
  });

  Contact? contact;
  Home? home;
  Info? info;
  String? name;

  factory Career.fromJson(String str) => Career.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Career.fromMap(Map<String, dynamic> json) => Career(
        contact: Contact.fromMap(json["contact"]),
        home: Home.fromMap(json["home"]),
        info: Info.fromMap(json["info"]),
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "contact": contact!.toMap(),
        "home": home!.toMap(),
        "info": info!.toMap(),
        "name": name,
      };
}

class Contact {
  Contact({
    this.email,
    this.image,
    this.name,
    this.phone,
  });

  String? email;
  String? image;
  String? name;
  String? phone;

  factory Contact.fromJson(String str) => Contact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contact.fromMap(Map<String, dynamic> json) => Contact(
        email: json["email"],
        image: json["image"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "image": image,
        "name": name,
        "phone": phone,
      };
}

class Home {
  Home({
    this.description,
    this.images,
    this.video,
  });

  String? description;
  List<String>? images;
  String? video;

  factory Home.fromJson(String str) => Home.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Home.fromMap(Map<String, dynamic> json) => Home(
        description: json["description"],
        images: List<String>.from(json["images"]
            .map((x) => x ?? 'http://placehold.jp/3d4070/ffffff/150x150.png')),
        video: json["video"],
      );

  Map<String, dynamic> toMap() => {
        "description": description,
        "images": List<dynamic>.from(images!.map((x) => x)),
        "video": video,
      };
}

class Info {
  Info({
    this.tript,
  });

  List<String>? tript;

  factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Info.fromMap(Map<String, dynamic> json) => Info(
        tript: List<String>.from(json["tript"]
            .map((x) => x ?? 'http://placehold.jp/3d4070/ffffff/150x150.png')),
      );

  Map<String, dynamic> toMap() => {
        "tript": List<dynamic>.from(tript!.map((x) => x)),
      };
}
