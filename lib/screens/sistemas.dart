import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class SistemasComputacionalesPage extends StatelessWidget {
  const SistemasComputacionalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistemas Computacionales'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
