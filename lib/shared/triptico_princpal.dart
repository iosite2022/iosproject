import 'package:flutter/material.dart';
import 'package:iosproject/const/careers.dart';
import 'package:iosproject/const/styles.dart';
import 'package:iosproject/providers/db_service_career.dart';
import 'package:iosproject/providers/db_service_home.dart';
import 'package:provider/provider.dart';
import '../imports/.widgets.dart';

class TripticoPrincipal extends StatelessWidget {
  TripticoPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DbServiceHome homeSvc = Provider.of<DbServiceHome>(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: homeSvc.home?.tript?.length ?? 0,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            DividerInfo(),
            ImagesInfo(
              imageItem: homeSvc.home?.tript?[index] ?? "",
              size: size,
            ),
          ],
        );
      }),
    );
  }
}

class TripticoCarreras extends StatelessWidget {
  final Enum? career;
  TripticoCarreras({
    Key? key,
    this.career,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DbServiceCareer careerSvc = Provider.of<DbServiceCareer>(context);
    careerSvc.fetchCareerInfo(career);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: careerSvc.career?.info?.tript?.length ?? 0,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            DividerInfo(),
            ImagesInfo(
              imageItem: careerSvc.career?.info?.tript?[index] ?? "",
              size: size,
            ),
          ],
        );
      }),
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
