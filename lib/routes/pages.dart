import 'package:flutter/material.dart';
import 'package:iosproject/imports/screens.dart';

import 'routes.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => const Home(),
    Routes.electromecanicaPage: (BuildContext context) =>
        const ElectromecanicaPage(),
    Routes.electronicaPage: (BuildContext context) => const ElectronicaPage(),
    Routes.gestionPage: (BuildContext context) =>
        const GestionEmpresarialPage(),
    Routes.industrialPage: (BuildContext context) => const IndustrialPage(),
    Routes.licadministracionPage: (BuildContext context) =>
        const LicenciaturaAdministracionPage(),
    Routes.mecatronicaPage: (BuildContext context) => const MecatronicaPage(),
    Routes.sistemasPage: (BuildContext context) =>
        const SistemasComputacionalesPage(),
  };
}
