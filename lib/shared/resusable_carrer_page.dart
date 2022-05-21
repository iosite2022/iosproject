import 'package:flutter/material.dart';

class ResuableCarrerPage extends StatelessWidget {
  final String texts;
  final MainAxisAlignment alignmentes;
  final Image? imagen;
  final String title;
  const ResuableCarrerPage(
      {Key? key,
      required this.texts,
      this.imagen,
      required this.title,
      required this.alignmentes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: alignmentes,
          children: [
            //  Image(image: imagen),
            Text(title),
            Text(texts)
          ],
        ),
        Row(
          children: [
            //  Image(image: imagen),
            Text(title),
            Text(texts)
          ],
        ),
      ],
    ));
  }
}
