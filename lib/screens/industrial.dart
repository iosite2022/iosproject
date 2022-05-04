import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

class IndustrialPage extends StatelessWidget {
  const IndustrialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Industrial'),
      ),
      drawer: const DrawerPrincipal(),
      bottomNavigationBar: const BottomBarGnav(),
      body: Column(
        children: [],
      ),
    );
  }
}
