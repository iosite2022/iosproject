import 'package:iosproject/widgets/widget_home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../imports/.widgets.dart';

class Prueba extends StatefulWidget {
  Prueba({Key? key}) : super(key: key);

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.flipped);

    return Scaffold(
      appBar: AppBar(
        title: Text('udiofu'),
      ),
      floatingActionButton: FloatButtons(),
      body: ElevatedButton(
        onPressed: () {
          launch('mailto:al18760082@ite.edu.mx?subject= asunto &body=');
        },
        child: Text("Send A Email"),
      ),
      //  SfPdfViewer.network(
      //     'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/06/Manual_de_Identidad_Grafica-1.pdf')

      //    Stack(children: [WidgetHome()]),
    );
  }
}
