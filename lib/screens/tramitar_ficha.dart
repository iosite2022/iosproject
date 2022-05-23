import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class TramitarFicha extends StatelessWidget {
  const TramitarFicha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage(
          'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Proceso-de-admision-2022-2.jpeg'),
    ));
  }
}
