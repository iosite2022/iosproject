import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/carreras_services.dart';
import '../providers/select.dart';
import '../video/youtube_player_screen.dart';

class Prueba extends StatefulWidget {
  Prueba({Key? key}) : super(key: key);

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.flipped);

    return Scaffold(
      appBar: AppBar(
        title: Text('udiofu'),
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(infoCareer.ingenierias[index].mision!),
            // TextButton(
            //     onPressed: () {
            //       setState(() {
            //         index++;
            //       });
            //     },
            //     child: Text('presiona')),

            Container(
              //   height: kIsWeb ? size.height / 1.13 : size.height * .7,

              child: YoutubePlayerScreen(
                yotube_url: 'https://www.youtube.com/watch?v=POVkvhDEcv4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
