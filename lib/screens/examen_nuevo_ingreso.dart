import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ExamenNuevoIngreso extends StatelessWidget {
  const ExamenNuevoIngreso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage(
          'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/05/Proceso-examen-mayo2022-02.png'),
    ));
  }
}
