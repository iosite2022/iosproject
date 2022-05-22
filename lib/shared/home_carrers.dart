import 'package:flutter/material.dart';

import '../imports/.widgets.dart';

class HomeCarrers extends StatelessWidget {
  final String carrersName;

  const HomeCarrers({Key? key, required this.carrersName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(carrersName),

            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Vision ',
              textVisionYObjetivo: 'Estos es la vision de home',
              imageVisionYObjetivo: 'https://i.ibb.co/8YHjgsL/casa2.jpg',
            ),
            divisionDiver(),
            Mision(
              size: size,
              Misionn: 'Mision',
              textMision: 'orffrfo',
              imageMison: '',
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

            YoutubePlayerScreen(
              yotube_url: 'https://www.youtube.com/watch?v=POVkvhDEcv4',
            ),
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
