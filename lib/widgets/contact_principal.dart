import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:iosproject/providers/db_service_home.dart';
import 'package:iosproject/widgets/input_decoration.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class ContacPrincipal extends StatelessWidget {
  String ContacWorkArea = 'ContacWorkArea';
  String ConctacNumber = 'ConctacNumber';
  String ContacEmail = 'ContacEmail';
  String WorkArea = 'WorkArea';
  IconData career = FontAwesomeIcons.accessibleIcon;
  Image? image;

  ContacPrincipal({
    Key? key,
    // required this.ContacWorkArea,
    // required this.ConctacNumber,
    // required this.ContacEmail,
    // required this.WorkArea,
    // required this.career,
    // this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DbServiceHome homeSvc = Provider.of<DbServiceHome>(context);
    Uri url_email = Uri.parse(homeSvc.home?.contact?.email ?? "");

    print('Esto es el email');
    print(url_email);
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
                      child: homeSvc.home?.contact?.image == null ||
                              homeSvc.home?.contact?.image == ""
                          ? const Image(
                              image: AssetImage('assets/no-image.png'),
                              fit: BoxFit.cover,
                            )
                          : Expanded(
                              child: FadeInImage(
                                placeholder:
                                    const AssetImage('assets/cargando.gif'),
                                image: NetworkImage(
                                  homeSvc.home?.contact?.image ?? "",
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
                  labelText: 'Encargada de Departamento',
                  hintText: homeSvc.home?.contact?.name ?? "",
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
                  hintText: homeSvc.home?.contact?.area ?? "",
                ),
              ),
            ),
            GestureDetector(
              //  onDoubleTap: () async => await canLaunchUrl(url_email),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextField(
                  readOnly: true,
                  enableInteractiveSelection: false,
                  decoration: InputDecorations.authInputDecoration(
                    icons: Icon(FontAwesomeIcons.envelopeCircleCheck),
                    labelText: 'Correo',
                    hintText: homeSvc.home?.contact?.email ?? "",
                  ),
                ),
              ),
            ),
            GestureDetector(
                // onDoubleTap: () async {
                //   try {
                //     await launch(homeSvc.home?.contact?.phone ?? "");
                //   } catch (e) {
                //     print(homeSvc.home?.contact?.phone ?? "");
                //   }
                // },
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                  readOnly: true,
                  enableInteractiveSelection: false,
                  decoration: InputDecorations.authInputDecoration(
                    colorIcon: Colors.greenAccent,
                    icons: Icon(FontAwesomeIcons.whatsapp),
                    labelText: 'WhatsApp',
                    hintText: homeSvc.home?.contact?.phone ?? "",
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
