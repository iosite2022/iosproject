import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'package:url_launcher/url_launcher.dart';

import '../const/styles.dart';

class ContacCordinador extends StatelessWidget {
  final String CoordName;
  final String CoordNumber;
  final String CoordEmail;
  final String CareerName;
  final IconData career;
  final Image? image;

  const ContacCordinador(
      {Key? key,
      required this.CoordName,
      required this.CoordNumber,
      required this.CoordEmail,
      required this.CareerName,
      required this.career,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: image != null
                        ? Image.asset('assets/no-image.png')
                        : Image.network(
                            'https://i.ibb.co/kc3sdnj/coordsistemas.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                readOnly: true,
                decoration: InputDecorations.authInputDecoration(
                  icons: Icon(FontAwesomeIcons.chalkboardUser),
                  labelText: 'Cordinador',
                  hintText: CoordName,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                readOnly: true,
                decoration: InputDecorations.authInputDecoration(
                  icons: Icon(Ionicons.school_outline),
                  labelText: 'Carrera',
                  hintText: CareerName,
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: () async => await launch(
                  'mailto:coord_sistemas@ite.edu.mx?subject= asunto &body='),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextField(
                  readOnly: true,
                  enableInteractiveSelection: false,
                  decoration: InputDecorations.authInputDecoration(
                    icons: Icon(FontAwesomeIcons.envelopeCircleCheck),
                    labelText: 'Correo',
                    hintText: CoordEmail,
                  ),
                ),
              ),
            ),
            GestureDetector(
                onDoubleTap: () async => await launch("tel://6461321665"),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: TextField(
                      readOnly: true,
                      enableInteractiveSelection: false,
                      decoration: InputDecorations.authInputDecoration(
                        colorIcon: Colors.greenAccent,
                        icons: Icon(FontAwesomeIcons.whatsapp),
                        labelText: 'WhatsApp',
                        hintText: CoordNumber,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String labelText,
      required String hintText,
      Color? colorIcon,
      required Widget icons}) {
    return InputDecoration(
        icon: icons,
        iconColor: colorIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: kTextStyle_ContactCord_Contact_School,
        hintStyle: kTextStyle_ContactCord_Contact_School2,
        floatingLabelBehavior: FloatingLabelBehavior.always);
  }
}
