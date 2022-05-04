import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class ElectronicaPage extends StatelessWidget {
  const ElectronicaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electrónica'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
