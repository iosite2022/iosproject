import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../imports/.widgets.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 60),
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

            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Vision ',
              textVisionYObjetivo: 'Esto es una vision',
            ),
            divisionDiver(),
            Mision(
              size: size,
              Misionn: 'Mision',
              textMision: 'orffrfo',
              imageMison:
                  'https://josefacchin.com/wp-content/uploads/2020/02/como-quitar-el-fondo-de-una-imagen.png',
            ),
            divisionDiver(),
            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Objetivo',
              textVisionYObjetivo: 'efiokfpoidpoip',
              imageVisionYObjetivo:
                  'https://josefacchin.com/wp-content/uploads/2020/02/como-quitar-el-fondo-de-una-imagen.png',
            ),
            divisionDiver(),
            SizedBox(
              height: 10,
            ),
            CardSwiper(),
            // CardSwiper(),
            SizedBox(
              height: 10,
            ),

            // YoutubePlayerScreen(
            //   yotube_url: 'https://www.youtube.com/watch?v=POVkvhDEcv4',
            // ),
          ],
        ),
      ),
    );
  }
}

class divisionDiver extends StatelessWidget {
  const divisionDiver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 3,
      color: Colors.black,
    );
  }
}
