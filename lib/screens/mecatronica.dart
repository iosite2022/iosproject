import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class MecatronicaPage extends StatelessWidget {
  const MecatronicaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mecatrónica'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
