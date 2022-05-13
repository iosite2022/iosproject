import 'package:flutter/material.dart';
import 'package:iosproject/routes/routes.dart';
import 'package:iosproject/screens/electronica.dart';
import 'package:iosproject/screens/industrial.dart';

import '../imports/screens.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => Home(),
    Routes.industrialPage: (BuildContext context) => const IngIndustrial(),
    Routes.electronicaPage: (BuildContext context) => const IngElectronica()
  };
}
