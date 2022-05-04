import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class LicenciaturaAdministracionPage extends StatelessWidget {
  const LicenciaturaAdministracionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Licenciatura Administracion'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
