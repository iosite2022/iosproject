import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import '../imports/.widgets.dart';

class HomeCarrers extends StatelessWidget {
  final String CareerName;
  final String CarrerDescription;
  final Enum? eCareer;

  HomeCarrers({
    Key? key,
    this.eCareer,
    required this.CareerName,
    required this.CarrerDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DbService info = Provider.of<DbService>(context);
    info.fetchCareerInfo(eCareer);
    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: TextField(
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: InputDecorations.authInputDecoration(
                  hintText: CareerName,
                  labelText: '',
                ),
              ),
            ),
            Text(CarrerDescription),
            SizedBox(
              height: 20,
            ),
            CardSwiper(),
            SizedBox(
              height: 10,
            ),
            YoutubePlayerScreen(
              yotube_url:
                  'https://www.youtube.com/watch?v=_w_Jlp9fCAI&list=TLPQMjMwNTIwMjLeWMSodkOaIw&index=2',
            ),
          ],
        ),
      ),
    );
  }
}
