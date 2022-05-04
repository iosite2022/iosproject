import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class GestionEmpresarialPage extends StatelessWidget {
  const GestionEmpresarialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión Empresarial'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
