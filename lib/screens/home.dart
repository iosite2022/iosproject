import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';
import 'package:iosproject/imports/styles_consts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instituto Teconologico de Ensenada"),
      ),
      drawer: const DrawerPrincipal(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: kPrimaryColor),
          child: Column(
            children: const [
              Text("gjfiogjfoirgfjoifgjio"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarGnav(),
    );
  }
}
