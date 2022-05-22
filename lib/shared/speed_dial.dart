import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../imports/.const.dart';

class SpeedDialButton extends StatefulWidget {
  SpeedDialButton({Key? key}) : super(key: key);

  @override
  State<SpeedDialButton> createState() => _SpeedDialButtonState();
}

class _SpeedDialButtonState extends State<SpeedDialButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    final Uri _urlYoutube =
        Uri.parse('https://www.youtube.com/c/TecNMEnsenada');
    final Uri _urlITE = Uri.parse('https://www.ensenada.tecnm.mx');
    final Uri _urlInstagram =
        Uri.parse('https://www.instagram.com/tecnmensenada/');
    final Uri _urlTwitter = Uri.parse('https://twitter.com/TecNMEnsenada');

    final Uri _urlFacebook =
        Uri.parse('https://www.facebook.com/TecNMEnsenada');

    final Uri _urlGoogleMaps = Uri.parse(
        'https://www.google.com/maps/place/TecNM+-+Instituto+Tecnológico+de+Ensenada/@31.8059587,-116.5901977,17z/data=!3m1!4b1!4m5!3m4!1s0x80d88e39f768d7d3:0x536c67072ac8e5e7!8m2!3d31.8059587!4d-116.5901977');

    final Uri _urlConvocatoria = Uri.parse(
        'https://www.ensenada.tecnm.mx/convocatoria-nuevo-ingreso-agosto-diciembre-2022/');

    openwhatsapp() async {
      var whatsapp = "+526462563511";
      var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=";
      var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("")}";
      if (Platform.isIOS) {
        // Sistema operativo iOS
        if (await canLaunch(whatappURL_ios)) {
          await launch(whatappURL_ios, forceSafariVC: false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("No tienes instalado whatapp")));
        }
      } else {
        // Sistema operativo android y web
        if (await canLaunch(whatsappURl_android)) {
          await launch(whatsappURl_android);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("whatsapp no instalado")));
        }
      }
    }

    return Stack(
      children: [
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 1.700
              : 340,
          right: orientation.toString() == 'Orientation.landscape'
              ? null
              : size.width * 0.02,
          left: orientation.toString() == 'Orientation.landscape'
              ? size.width * 0.02
              : null,
          child: SpeedDial(
            backgroundColor: kSecundaryColor,
            activeLabel: Text('Contactos generales'),
            //  backgroundColor: Colors.black,
            overlayColor: Colors.black,
            overlayOpacity: 0.4,

            animatedIcon: AnimatedIcons.menu_arrow,
            child: SingleChildScrollView(
                child: Column(
              children: [],
            )),
            children: [
              SpeedDialChild(
                //   backgroundColor: kSecundaryColor,
                child: Icon(FontAwesomeIcons.bullhorn),
                foregroundColor: Colors.grey,
                label: 'Convocatoria-Pagos-Cursos',
                onTap: () async => await launchUrl(_urlConvocatoria),
              ),
              SpeedDialChild(
                //   backgroundColor: kSecundaryColor,
                child: Icon(FontAwesomeIcons.locationDot),
                foregroundColor: Colors.red,
                label: '¿Dónde Estamos?',
                onTap: () async => await launchUrl(_urlGoogleMaps),
              ),
              SpeedDialChild(
                child: Icon(FontAwesomeIcons.whatsapp),
                foregroundColor: Colors.green,
                label: 'WhatsApp',
                onTap: () async => await openwhatsapp(),
              ),
              SpeedDialChild(
                  onTap: () async => await launch(
                      'mailto:al18760082@ite.edu.mx?subject= asunto &body='),
                  child: Icon(FontAwesomeIcons.envelopeCircleCheck),
                  label: 'Correo',
                  foregroundColor: Colors.black),
              SpeedDialChild(
                  onTap: () async => await launchUrl(_urlITE),
                  child: Icon(FontAwesomeIcons.schoolCircleExclamation),
                  foregroundColor: Colors.grey,
                  label: 'Página ITE'),
              SpeedDialChild(
                  onTap: () async => await launchUrl(_urlYoutube),
                  child: Icon(FontAwesomeIcons.youtube),
                  foregroundColor: Colors.red,
                  label: 'Youtube'),
              SpeedDialChild(
                  onTap: () async => await launchUrl(_urlTwitter),
                  child: Icon(FontAwesomeIcons.twitter),
                  label: 'Twitter',
                  foregroundColor: Colors.blue),
              SpeedDialChild(
                  onTap: () async => await launchUrl(_urlInstagram),
                  child: Icon(FontAwesomeIcons.instagram),
                  foregroundColor: Colors.pinkAccent,
                  label: 'Instagram'),
              SpeedDialChild(
                  onTap: () async => await launchUrl(_urlFacebook),
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                  ),
                  foregroundColor: Color.fromARGB(255, 3, 72, 129),
                  label: 'Facebook'),
              SpeedDialChild(
                  onTap: () async => await launch("tel://6461775680"),
                  child: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.green,
                  ),
                  label: 'Llamar'),
            ],
          ),
        ),
      ],
    );
  }
}
