import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iosproject/imports/screens.dart';

import 'package:iosproject/routes/routes.dart';

class BottomBarGnav extends StatelessWidget {
  const BottomBarGnav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GNav(
          tabs: [
            // GBtn( ruta: home()),
            GButton(
              icon: FontAwesomeIcons.house,
              text: 'Pagina Principal',
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.home);
              },
            ),
            GButton(
              icon: FontAwesomeIcons.peopleGroup,
              text: 'Electronica',
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.electronicaPage);
              },
            ),
            GButton(
              icon: Icons.home,
              text: 'opkfd',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.home,
              text: 'opkfd',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class GBtn extends StatelessWidget {
  final String ruta;

  const GBtn({
    Key? key,
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GButton(
      icon: FontAwesomeIcons.house,
      text: 'Inicio',
      onPressed: () {
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}
