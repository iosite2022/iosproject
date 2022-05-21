class Career {
  Career({
    this.contacts,
    this.home,
    this.info,
  });

  Contacts? contacts;
  Home? home;
  Info? info;

  factory Career.fromJson(Map<String, dynamic> json) => Career(
        contacts: Contacts.fromJson(json["contacts"]),
        home: Home.fromJson(json["home"]),
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "contacts": contacts?.toJson(),
        "home": home?.toJson(),
        "info": info?.toJson(),
      };
}

class Contacts {
  Contacts({
    this.coordinacion,
    this.difusion,
  });

  Coordinacion? coordinacion;
  Difusion? difusion;

  factory Contacts.fromJson(Map<String, dynamic> json) => Contacts(
        coordinacion: Coordinacion.fromJson(json["coordinacion"]),
        difusion: Difusion.fromJson(json["difusion"]),
      );

  Map<String, dynamic> toJson() => {
        "coordinacion": coordinacion?.toJson(),
        "difusion": difusion?.toJson(),
      };
}

class Coordinacion {
  Coordinacion({
    this.descripcion,
    this.name,
    this.phone,
  });

  String? descripcion;
  String? name;
  int? phone;

  factory Coordinacion.fromJson(Map<String, dynamic> json) => Coordinacion(
        descripcion: json["descripcion"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "descripcion": descripcion,
        "name": name,
        "phone": phone,
      };
}

class Difusion {
  Difusion({
    this.description,
    this.name,
    this.phone,
  });

  String? description;
  String? name;
  int? phone;

  factory Difusion.fromJson(Map<String, dynamic> json) => Difusion(
        description: json["description"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "name": name,
        "phone": phone,
      };
}

class Home {
  Home({
    this.images,
    this.videos,
  });

  List<String>? images;
  List<String>? videos;

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        images: List<String>.from(json["images"].map((x) => x)),
        videos: List<String>.from(json["videos"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "images": List<dynamic>.from(images!.map((x) => x)),
        "videos": List<dynamic>.from(videos!.map((x) => x)),
      };
}

class Info {
  Info({
    this.mision,
    this.objetivo,
    this.vision,
  });

  String? mision;
  String? objetivo;
  String? vision;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        mision: json["mision"],
        objetivo: json["objetivo"],
        vision: json["vision"],
      );

  Map<String, dynamic> toJson() => {
        "mision": mision,
        "objetivo": objetivo,
        "vision": vision,
      };
}
