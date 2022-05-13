import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.4,
      width: size.width,
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
      ),
    );
  }
}
