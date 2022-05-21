import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class triptico extends StatelessWidget {
  const triptico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.network(
        'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/06/Manual_de_Identidad_Grafica-1.pdf');
  }
}
