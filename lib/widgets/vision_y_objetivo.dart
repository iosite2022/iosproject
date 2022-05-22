import 'package:flutter/material.dart';

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
          child: Container(
            height: size.height * .30,
            width: size.width * .40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: imageVisionYObjetivo == null
                  ? const Image(
                      image: AssetImage(
                      'assets/no-image.png',
                    ))
                  : FadeInImage(
                      placeholder: const AssetImage('assets/cargando.gif'),
                      image: NetworkImage(imageVisionYObjetivo!),
                      fit: BoxFit.cover,
                    ),
            ),
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
