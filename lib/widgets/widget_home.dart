import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iosproject/const/styles.dart';
import 'package:iosproject/screens/examen_nuevo_ingreso.dart';
import 'package:iosproject/screens/tramitar_ficha.dart';

import 'package:url_launcher/url_launcher.dart';

import '../imports/.widgets.dart';

class WidgetHome extends StatelessWidget {
  final String? image;
  const WidgetHome({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _urlGoogleMaps = Uri.parse(
        'https://www.google.com/maps/place/TecNM+-+Instituto+Tecnológico+de+Ensenada/@31.8059587,-116.5901977,17z/data=!3m1!4b1!4m5!3m4!1s0x80d88e39f768d7d3:0x536c67072ac8e5e7!8m2!3d31.8059587!4d-116.5901977');

    final Uri _urlITE = Uri.parse('https://www.ensenada.tecnm.mx');
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return SizedBox(
      height: orientation.toString() == 'Orientation.portrait'
          ? size.height * 90
          : size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/tecnm.png',
                        height: size.height * .090, width: size.width * .90),
                  ),
                  Expanded(
                    child: Image.asset('assets/logoITE.png',
                        height: size.height * .090, width: size.width * .90),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Text(
              'Animate a ser parte del equipo albatos',
              style: kTextSyleCarrerTitle,
            ),

            SizedBox(
              height: 15,
            ),

            OutlinedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TramitarFicha())),
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(kSecundaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: Text(
                '¿Cómo tramito mi ficha de nuevo ingreso?',
              ),
            ),
            OutlinedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExamenNuevoIngreso())),
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(kSecundaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: Text(
                '¿Cómo elabora mi examen de nuevo ingreso?',
              ),
            ),

            OutlinedButton(
              onPressed: () async => await launch(
                  'http://escolares.ensenada.tecnm.mx/intertec/indexficha.html'),
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(kSecundaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: Text(
                'SIE Aspirantes',
              ),
            ),

            SizedBox(
              height: 20,
            ),
            CardSwiper(),
            // CardSwiper(),
            SizedBox(
              height: 10,
            ),

            YoutubePlayerScreen(
              yotube_url: 'https://www.youtube.com/watch?v=O7JHliJdNMw',
            ),
          ],
        ),
      ),
    );
  }
}
