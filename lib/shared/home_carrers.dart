import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import '../imports/.widgets.dart';

class HomeCarrers extends StatelessWidget {
  final Enum? eCareer;

  HomeCarrers({
    Key? key,
    // this.carrersName,
    this.eCareer,
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
            CardSwiper(),

            // CardSwiper(),
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

class divisionDiver extends StatelessWidget {
  const divisionDiver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 3,
      color: Colors.black,
    );
  }
}
