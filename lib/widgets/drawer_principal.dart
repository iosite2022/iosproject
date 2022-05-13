import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iosproject/models/tab_select.dart';
import 'package:iosproject/routes/routes.dart';
import 'package:iosproject/screens/electronica.dart';
import 'package:provider/provider.dart';

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
    bool bandera = true;
    final TabSelect tabSelect = Provider.of<TabSelect>(context);

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/tecnm.png'),
            const Divider(color: Colors.black, thickness: 2),
            const Text('Eliga una carrera para ver su información'),
            const Divider(color: Colors.black, thickness: 2),
            ButtonCareer('Ingeniería Industrial', function: () {
              Navigator.pushReplacementNamed(context, Routes.industrialPage);
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
