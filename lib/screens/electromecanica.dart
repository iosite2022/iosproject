import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class ElectromecanicaPage extends StatelessWidget {
  const ElectromecanicaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electromecánica'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
