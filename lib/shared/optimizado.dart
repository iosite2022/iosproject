import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatButtons extends StatefulWidget {
  const FloatButtons({Key? key}) : super(key: key);

  @override
  State<FloatButtons> createState() => _FloatButtonsState();
}

class _FloatButtonsState extends State<FloatButtons> {
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
              SnackBar(content: new Text("whatsapp no installed")));
        }
      }
    }

    return Stack(
      children: [
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * .60
              : 100,
          right: size.width * 0.02,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.phone),
            onPressed: () {
              launch("tel://6461162043");
            },
            foregroundColor: Colors.green,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 0.80
              : 160,
          right: size.width * 0.02,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.school),
            onPressed: () async {
              await launchUrl(_urlITE);
            },
            foregroundColor: Colors.grey,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 0.99
              : 220,
          right: size.width * 0.02,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.youtube),
            onPressed: () async {
              await launchUrl(_urlYoutube);
            },
            foregroundColor: Colors.red,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 1.200
              : 220,
          right: orientation.toString() == 'Orientation.landscape'
              ? null
              : size.width * 0.02,
          left: orientation.toString() == 'Orientation.landscape'
              ? size.width * 0.02
              : null,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.instagram),
            onPressed: () async {
              await launch(_urlInstagram.toString());
            },
            foregroundColor: Colors.pinkAccent,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 1.400
              : 280,
          right: orientation.toString() == 'Orientation.landscape'
              ? null
              : size.width * 0.02,
          left: orientation.toString() == 'Orientation.landscape'
              ? size.width * 0.02
              : null,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.twitter),
            onPressed: () async {
              await launch(_urlTwitter.toString());
            },
            foregroundColor: Colors.blueAccent,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          top: orientation.toString() == 'Orientation.portrait'
              ? size.width * 1.600
              : 340,
          right: orientation.toString() == 'Orientation.landscape'
              ? null
              : size.width * 0.02,
          left: orientation.toString() == 'Orientation.landscape'
              ? size.width * 0.02
              : null,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.whatsapp),
            onPressed: () async {
              await openwhatsapp();
            },
            foregroundColor: Colors.green,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
  // Positioneds( double double, )=>Positioned(top: double, child: ,);

  // FloatButtonss(Color colors, Icon icon, {Function()? function}) => FloatingActionButton(onPressed: function,)
}
