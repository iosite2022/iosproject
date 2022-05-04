import 'package:flutter/material.dart';
import 'package:iosproject/routes/routes.dart';

class DrawerPrincipal extends StatelessWidget {
  const DrawerPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.network(
              'https://itesainvestigacion.weebly.com/uploads/6/5/9/7/65970875/logo-tecnm-2018_orig.png'),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          const Text(
            'Eliga una carrera para ver su información',
          ),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          TextButton(
            child: const Text('Ingeniería Electromecánica'),
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, Routes.electromecanicaPage);
            },
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.electronicaPage);
              },
              child: const Text('Ingeniería Electrónica')),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.gestionPage);
              },
              child: const Text('Ingeniería en Gestión Empresarial')),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.industrialPage);
              },
              child: const Text('Ingeniería Industrial')),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.mecatronicaPage);
              },
              child: const Text('Ingeniería Mecatrónica')),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.sistemasPage);
              },
              child: const Text('Ingeniería en Sistemas Computacionales')),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, Routes.licadministracionPage);
              },
              child: const Text('Licenciatura en Administración')),
        ],
      ),
    );
  }
}
