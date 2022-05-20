import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iosproject/const/db_paths.dart';
import 'package:iosproject/models/career.dart';
import 'package:iosproject/imports/.const.dart';

class DbService extends ChangeNotifier {
  Career? career;
  Enum? eCareer;
  DbService() {
    print('Loading DbService');
  }

  Future fetchCareerInfo(Enum? eCareerL) async {
    if (eCareerL != null && eCareer != eCareerL) {
      final url =
          Uri.https(DbPaths.authority, DbPaths.getUnencodedPath(eCareerL));
      final response = await http.get(url);
      Career careerL = Career.fromJson(json.decode(response.body));
      career = careerL;
      eCareer = eCareerL;
      notifyListeners();
    }
  }
}
