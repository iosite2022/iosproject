import 'package:flutter/material.dart';
import 'package:iosproject/const/styles.dart';

import '../imports/.widgets.dart';

class TripticoPrincipal extends StatefulWidget {
  const TripticoPrincipal({Key? key}) : super(key: key);

  @override
  State<TripticoPrincipal> createState() => _TripticoPrincipalState();
}

class _TripticoPrincipalState extends State<TripticoPrincipal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageList = [
      "https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Convocatoria-2022-2.jpeg",
      "https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Convocatoria-2022-2.jpeg",
    ];

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
            /*Column(children: [
      TitleInfo(titleInfo: "CONVOCATORIA"),
      ListView.builder(
      //scrollDirection: Axis.vertical,
      shrinkWrap: true,
        itemCount: imageList.length,
        itemBuilder: ((context, index) {
        return Column(
          children: [
            DividerInfo(),
            ImagesInfo(imageItem: imageList[index], size: size,),
          ],
        );
      })),]
    )*/
            Column(
          children: [
            SizedBox(height: 15),
            TitleInfo(
              titleInfo: 'Convocatoria',
            ),
            DividerInfo(),
            ImagesInfo(imageItem: imageList[0], size: size),
            DividerInfo(),
            //Si es Triptico, Agrega otra Vista
            imageList.length > 1
                ? ImagesInfo(imageItem: imageList[1], size: size)
                : Divider(),
            imageList.length > 1 ? DividerInfo() : Divider(),
          ],
        ));
  }
}

class TitleInfo extends StatelessWidget {
  const TitleInfo({
    Key? key,
    required this.titleInfo,
  }) : super(key: key);

  final String titleInfo;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleInfo,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class ImagesInfo extends StatelessWidget {
  const ImagesInfo({
    Key? key,
    required this.imageItem,
    required this.size,
  }) : super(key: key);

  final String imageItem;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FullImageView(imageItem);
        }));
      },
      child: Container(
        height: size.height * 0.7,
        width: double.infinity,
        child: Image.network(imageItem),
      ),
    );
  }
}

class DividerInfo extends StatelessWidget {
  const DividerInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      color: kSecundaryColor,
      indent: 10,
      endIndent: 10,
      height: 20,
    );
  }
}
