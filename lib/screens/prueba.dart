import 'package:iosproject/shared/home_carrers.dart';
import 'package:iosproject/shared/speed_dial.dart';

import 'package:flutter/material.dart';

import '../imports/.widgets.dart';

class Prueba extends StatefulWidget {
  Prueba({Key? key}) : super(key: key);

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.flipped);

    return Scaffold(
      appBar: AppBar(
        title: Text('udiofu'),
      ),
      floatingActionButton: SpeedDialButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeCarrers(
              carrersName: 'Administracion',
            ),
          ],
        ),
      ),
    );
  }
}
