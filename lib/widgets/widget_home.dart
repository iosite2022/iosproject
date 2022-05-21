import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iosproject/video/youtube_player_screen.dart';
import 'package:iosproject/shared/cadr_swiper.dart';

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
            visionYobjetivo(
              size: size,
              VisionYObjetivo: 'Vision ',
              textVisionYObjetivo: 'fdoijfdojdf',
              imageVisionYObjetivo:
                  'https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen.jpg',
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

class Mision extends StatelessWidget {
  final String? textMision;
  final String? imageMison;
  final String? Misionn;

  const Mision({
    Key? key,
    required this.size,
    this.Misionn,
    this.textMision,
    this.imageMison,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(Misionn.toString()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  textMision.toString(),
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              imageMison.toString(),
              height: size.height * .30,
              width: size.width * .30,
            ),
          ),
        ),
      ],
    );
  }
}

class visionYobjetivo extends StatelessWidget {
  final String? textVisionYObjetivo;
  final String? imageVisionYObjetivo;
  final String? VisionYObjetivo;
  const visionYobjetivo({
    Key? key,
    required this.size,
    this.textVisionYObjetivo,
    this.imageVisionYObjetivo,
    this.VisionYObjetivo,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.network(
            imageVisionYObjetivo.toString(),
            height: size.height * .30,
            width: size.width * .30,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(VisionYObjetivo.toString()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  textVisionYObjetivo.toString(),
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
