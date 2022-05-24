import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import '../imports/.widgets.dart';

class HomeCarrers extends StatelessWidget {
  String CareerName = 'CareerName';
  String CarrerDescription = 'CarrerDescription';
  Enum? career;

  HomeCarrers({
    Key? key,
    this.career,
    // required this.CareerName,
    // required this.CarrerDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DbServiceCareer careerSvc = Provider.of<DbServiceCareer>(context);
    careerSvc.fetchCareerInfo(career);
    // print(info.career?.info?.vision ?? '');
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
                  hintText: careerSvc.career?.name ?? '',
                  labelText: '',
                ),
              ),
            ),
            Text(careerSvc.career?.home?.description ?? ''),
            SizedBox(
              height: 20,
            ),
            CardSwiper(
              images: careerSvc.career?.home?.images,
            ),
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
