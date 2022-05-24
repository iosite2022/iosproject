import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iosproject/models/home_model.dart';

String authority = 'ite-ensenada-default-rtdb.firebaseio.com';
String unencoded = '/home.json';

class DbServiceHome extends ChangeNotifier {
  HomeModel? home;

  DbServiceHome() {
    print('Loading DbServiceHome');
    fetchHome();
  }

  Future fetchHome() async {
    final url = Uri.https(authority, unencoded);
    final response = await http.get(url);
    // print(response.body);
    home = HomeModel.fromJson(response.body);
    notifyListeners();
  }
}
