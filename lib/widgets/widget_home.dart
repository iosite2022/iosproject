import 'package:flutter/material.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/const/styles.dart';

import 'package:url_launcher/url_launcher.dart';

import '../imports/.widgets.dart';

class WidgetHome extends StatelessWidget {
  WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    DbServiceHome homeService = Provider.of<DbServiceHome>(context);
    print('HELLOW VIDEO:' + (homeService.home?.video ?? 'null'));
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
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
            Text(
              '¡Anímate, sé un albatros!',
              style: kTextSyleCarrerTitle,
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Wrap(
                spacing: 5,
                runSpacing: 0,
                alignment: WrapAlignment.center,
                children: [
                  OutlinedBtn('¿Cómo tramito mi ficha de nuevo ingreso?',
                      function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FullImageView(
                          'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Proceso-de-admision-2022-2.jpeg');
                    }));
                  }),
                  OutlinedBtn('¿Cómo elaborar mi examen de nuevo ingreso?',
                      function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FullImageView(
                          "https://www.ensenada.tecnm.mx/wp-content/uploads/2022/05/Proceso-examen-mayo2022-02.png");
                    }));
                  }),
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: CardSwiper(),
            ),
            homeService.home == null
                ? Container()
                : Container(
                    margin: EdgeInsets.all(5.0),
                    child: YoutubePlayerScreen(
                      yotube_url: homeService.home?.video,
                    ),
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
