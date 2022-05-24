import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.const.dart';

class DrawerPrincipal extends StatefulWidget {
  DrawerPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerPrincipal> createState() => _DrawerPrincipalState();
}

Gender? selectedGender;

enum Gender { industrial, electronica }

class _DrawerPrincipalState extends State<DrawerPrincipal> {
  @override
  Widget build(BuildContext context) {
    final sel = Provider.of<Select>(context);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                sel.setCareer(null);
                sel.setTab(Tabs.Home);
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(3, 30, 3, 25),
                child: Column(
                  children: [
                    Image.asset('assets/tecnm.png'),
                    //TextButton(onPressed: () {}, child: Text('Inicio'))
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.black, thickness: 2),
            const Text('Eliga una carrera para ver su información'),
            const Divider(color: Colors.black, thickness: 2),
            ButtonCareer('Licenciatura en Administración', function: () {
              sel.setCareer(Careers.Administracion);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería Electromecánica', function: () {
              sel.setCareer(Careers.Electromecanica);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería Electrónica', function: () {
              sel.setCareer(Careers.Electronica);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería en Gestión Empresarial', function: () {
              sel.setCareer(Careers.Gestion);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería Industrial', function: () {
              sel.setCareer(Careers.Industrial);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería Mecatrónica', function: () {
              sel.setCareer(Careers.Mecatronica);
              Navigator.of(context).pop();
            }),
            ButtonCareer('Ingeniería en Sistemas Computacionales',
                function: () {
              sel.setCareer(Careers.Sistemas);
              Navigator.of(context).pop();
            }),
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
