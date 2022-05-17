import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iosproject/imports/.widgets.dart';

class IngElectronica extends StatelessWidget {
  const IngElectronica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerPrincipal(),
        appBar: AppBar(
          title: Text('electronica'),
        ),
        body: Container(
          color: Colors.yellow,
          child: CupertinoButton(
              child: Text(
                'Electronica',
                style: TextStyle(fontSize: 23),
              ),
              onPressed:
                  () {} //=> Navigator.pushReplacementNamed(context, Routes.home),
              ),
        ));
  }
}
