import 'package:flutter/material.dart';

class Mision extends StatelessWidget {
  final String? textMision;
  final String imageMison;
  final String? Misionn;

  const Mision({
    Key? key,
    required this.size,
    this.Misionn,
    this.textMision,
    required this.imageMison,
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
          child: Container(
            height: size.height * .30,
            width: size.width * .40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: imageMison == null
                  ? const Image(image: AssetImage('assets/no-image.png'))
                  : FadeInImage(
                      placeholder: const AssetImage('assets/cargando.gif'),
                      image: NetworkImage(imageMison),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
