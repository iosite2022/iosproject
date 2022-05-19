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
    final infoCareer = Provider.of<CarrerasServices>(context);
    final seleccionar = Provider.of<Select>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('udiofu'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(infoCareer.ingenierias[index].mision!),
          TextButton(
              onPressed: () {
                setState(() {
                  index++;
                });
              },
              child: Text('presiona')),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YoutubePlayerScreen(
                                yotube_url:
                                    'https://www.youtube.com/watch?v=POVkvhDEcv4',
                              )));
                },
                child: Text('ver mas')),
          )
        ],
      ),
    );
  }
}
