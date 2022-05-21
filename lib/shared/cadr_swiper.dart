import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return SizedBox(
      height: orientation.toString() == 'Orientation.portrait'
          ? size.height * 0.4
          : size.height * 0.7,
      width: orientation.toString() == 'Orientation.landscape'
          ? size.width * 0.6
          : size.width,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              "https://via.placeholder.com/288x188",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: 5,
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay: true,
      ),
    );
  }
}
