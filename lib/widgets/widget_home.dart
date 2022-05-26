import 'package:flutter/material.dart';
// import 'package:iosproject/imports/.providers.dart';
// import 'package:provider/provider.dart';
import 'package:iosproject/const/styles.dart';

import 'package:url_launcher/url_launcher.dart';

import '../imports/.widgets.dart';

class WidgetHome extends StatelessWidget {
  WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    // DbServiceHome homeService = Provider.of<DbServiceHome>(context);
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
              '¡Anímate, sé un albatros!',
              style: kTextSyleCarrerTitle,
            ),
            SizedBox(
              height: 15,
            ),
            OutlinedBtn('¿Cómo tramito mi ficha de nuevo ingreso?',
                function: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FullImageView(
                    'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Proceso-de-admision-2022-2.jpeg');
              }));
            }),
            OutlinedBtn('¿Cómo elaborar mi examen de nuevo ingreso?',
                function: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FullImageView(
                    "https://www.ensenada.tecnm.mx/wp-content/uploads/2022/05/Proceso-examen-mayo2022-02.png");
              }));
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  OutlinedBtn('Calendario Escolar', function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FullImageView(
                          'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/calendario-actualizado2022-1.jpeg');
                    }));
                  }),
                  OutlinedBtn(
                    'SIE Aspirantes',
                    function: () async => await launch(
                        'http://escolares.ensenada.tecnm.mx/intertec/indexficha.html'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CardSwiper(),
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

  Widget OutlinedBtn(String text, {Function()? function}) => OutlinedButton(
        child: Text(text),
        onPressed: function,
        style: ButtonSyle(),
      );

  ButtonStyle ButtonSyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(kSecundaryColor),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    );
  }
}
