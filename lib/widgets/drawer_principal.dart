import 'package:flutter/material.dart';
import 'package:iosproject/models/tab_select.dart';
import 'package:provider/provider.dart';

class DrawerPrincipal extends StatelessWidget {
  const DrawerPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabSelect tabSelect = Provider.of<TabSelect>(context);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/tecnm.png'),
            const Divider(color: Colors.black, thickness: 2),
            const Text('Eliga una carrera para ver su información'),
            const Divider(color: Colors.black, thickness: 2),
            ButtonCareer('Ingeniería Electromecánica', function: () {
              //Navigator.pushReplacementNamed(
              //     context, Routes.licadministracionPage);
              tabSelect.setCareer(123);
            }),
            ButtonCareer('Ingeniería Electrónica'),
            ButtonCareer('Ingeniería en Gestión Empresarial'),
            ButtonCareer('Ingeniería Industrial'),
            ButtonCareer('Ingeniería Mecatrónica'),
            ButtonCareer('Ingeniería en Sistemas Computacionales'),
            ButtonCareer('Licenciatura en Administración'),
          ],
        ),
      ),
    );
  }
}

Widget ButtonCareer(String career, {Function()? function}) => TextButton(
      child: Text(career),
      onPressed: function,
    );
