import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:iosproject/widgets/input_decoration.dart';

import 'package:url_launcher/url_launcher.dart';

class ContacPrincipal extends StatelessWidget {
  final String ContacWorkArea;
  final String ConctacNumber;
  final String ContacEmail;
  final String WorkArea;
  final IconData career;
  final Image? image;

  const ContacPrincipal(
      {Key? key,
      required this.ContacWorkArea,
      required this.ConctacNumber,
      required this.ContacEmail,
      required this.WorkArea,
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
                          ? const Image(
                              image: AssetImage('assets/no-image.png'),
                              fit: BoxFit.cover,
                            )
                          : Expanded(
                              child: FadeInImage(
                                placeholder:
                                    const AssetImage('assets/cargando.gif'),
                                image: NetworkImage(
                                  'https://i.ibb.co/yQkcBHx/jefaserviciosescolares.jpg',
                                ),
                                fit: BoxFit.contain,
                              ),
                            )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                readOnly: true,
                decoration: InputDecorations.authInputDecoration(
                  icons: Icon(FontAwesomeIcons.chalkboardUser),
                  labelText: 'Jefa de Departamento',
                  hintText: ContacWorkArea,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                readOnly: true,
                decoration: InputDecorations.authInputDecoration(
                  icons: Icon(Ionicons.school_outline),
                  labelText: 'Departamanto',
                  hintText: WorkArea,
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
                    hintText: ContacEmail,
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
                        hintText: ConctacNumber,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
