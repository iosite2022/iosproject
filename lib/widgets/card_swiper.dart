// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/material.dart';

// class CardSwiper extends StatelessWidget {
//   const CardSwiper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //TODO:Sacando el tamaño de los telfonos
//     final size = MediaQuery.of(context).size;
//     return SizedBox(
//       width: double.infinity,
//       height: size.height * 0.5,
//       child: Swiper(
//           itemCount: 3,
//           layout: SwiperLayout.STACK,
//           itemWidth: size.width * 0.6,
//           itemHeight: size.height * 0.4,
//           itemBuilder: (_, int index) {
//             return GestureDetector(
//               onTap: () => {},
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(25),
//                 child: FadeInImage(
//                   placeholder: const AssetImage(''),
//                   image: AssetImage(''),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
