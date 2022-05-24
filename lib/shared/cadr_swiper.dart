import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:provider/provider.dart';

class CardSwiper extends StatelessWidget {
  final List<String>? images;
  CardSwiper({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    DbServiceHome homeSvc = Provider.of<DbServiceHome>(context);
    return homeSvc.home == null
        ? Container(
            color: Colors.white,
            child: Image.asset('assets/cargando.gif'),
          )
        : SizedBox(
            height: orientation.toString() == 'Orientation.portrait'
                ? size.height * 0.4
                : size.height * 0.7,
            width: orientation.toString() == 'Orientation.landscape'
                ? size.width * 0.6
                : size.width,
            child: images == null
                ? Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          homeSvc.home?.images?[index] ?? '',
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    itemCount: homeSvc.home?.images?.length ?? 0,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    autoplay: true,
                  )
                : Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          images?[index] ?? '',
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    itemCount: images?.length ?? 0,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    autoplay: true,
                  ),
          );
  }
}
