import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iosproject/const/db_paths.dart';
import 'package:iosproject/models/career.dart';
import 'package:iosproject/imports/.const.dart';

class DbServiceCareer extends ChangeNotifier {
  Career? career;
  Enum? eCareer;
  DbService() {
    print('Loading DbServiceCareer');
  }

  void cleanCache() {
    career = null;
    eCareer = null;
    notifyListeners();
  }

  Future fetchCareerInfo(Enum? eCareerL) async {
    if (eCareerL != null && eCareer != eCareerL) {
      final url =
          Uri.https(DbPaths.authority, DbPaths.getUnencodedPath(eCareerL));

      final response = await http.get(url);
      // print(response.body);
      Career careerL = Career.fromJson(response.body);
      career = careerL;
      eCareer = eCareerL; //!DO NOT REMOVE OR COMMENT LINE
      notifyListeners();
    }
  }
}
