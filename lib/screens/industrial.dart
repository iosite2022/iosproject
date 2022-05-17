import 'package:flutter/material.dart';
import 'package:iosproject/imports/widgets.dart';

import 'package:iosproject/widgets/cadr_swiper.dart';
import 'package:iosproject/widgets/resusable_carrer_page.dart';

class IngIndustrial extends StatelessWidget {
  const IngIndustrial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   final ingenierasCarreras = Provider.of<CarrerasProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Industrial'),
      ),
      drawer: DrawerPrincipal(),
      body: Column(
        children: [
          Container(
            child: Text(
              'Industrial',
              style: TextStyle(fontSize: 23),
            ),
          ),
          ResuableCarrerPage(
            texts: 'carrera de industrial',
            title: 'Objetivo',
            alignmentes: MainAxisAlignment.spaceAround,
          ),
          ResuableCarrerPage(
            texts: 'carrera de industrial',
            title: 'Mision',
            alignmentes: MainAxisAlignment.center,
          ),
          ResuableCarrerPage(
            texts: 'carrera de industrial',
            title: 'Vision',
            alignmentes: MainAxisAlignment.spaceBetween,
          ),
          Divider(
            thickness: 3,
            color: Colors.black,
          ),
          SizedBox(
            height: 40,
          ),
          // FadeInImage(
          //     placeholder: const AssetImage('assets/cargando.gif'),
          //     image: NetworkImage(ingenierasCarreras.inge.imagen!)),
          CardSwiper()
        ],
      ),
    );
  }
}
