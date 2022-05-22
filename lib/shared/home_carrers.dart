import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import '../imports/.widgets.dart';

class HomeCarrers extends StatelessWidget {
  final Enum? eCareer;

  HomeCarrers({
    Key? key,
    // this.carrersName,
    this.eCareer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DbService info = Provider.of<DbService>(context);
    info.fetchCareerInfo(eCareer);
    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Vision ',
              textVisionYObjetivo: info.career?.info?.vision ?? "null",
              imageVisionYObjetivo: 'https://i.ibb.co/8YHjgsL/casa2.jpg',
            ),
            divisionDiver(),
            Mision(
              size: size,
              Misionn: 'Mision',
              textMision: info.career?.info?.mision ?? "null",
              imageMison: 'https://i.ibb.co/8YHjgsL/casa2.jpg',
            ),
            divisionDiver(),
            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Objetivo',
              textVisionYObjetivo: info.career?.info?.objetivo ?? "null",
              imageVisionYObjetivo:
                  'https://josefacchin.com/wp-content/uploads/2020/02/como-quitar-el-fondo-de-una-imagen.png',
            ),
            divisionDiver(),
            SizedBox(
              height: 10,
            ),

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
