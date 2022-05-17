import 'package:flutter/material.dart';


class ReusableCarreraPage extends StatelessWidget {
  final String texts;
  final MainAxisAlignment alignmentes;
  final Image? imagen;
  final String title;
  const ReusableCarreraPage(
      {Key? key,
       required this.texts,
      this.imagen,
      required this.title,
      required this.alignmentes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(right: 25, top: 30, left: 25),
           child: Row(
              mainAxisAlignment: alignmentes,
              children: [
                Container(
                  child: Image(image: NetworkImage('https://via.placeholder.com/150'),
                  ),
                ),

                

                Text('MISION'),
                Text(texts)
              ],
            ),
         ),
         
         Divider(height: 20, color: Colors.white),
         
          Padding(
           padding: const EdgeInsets.only(right: 30, top: 30, left: 150),
           child: Row(
              mainAxisAlignment: alignmentes,
              children: [
                Container(
                  child: Image(image: NetworkImage('https://via.placeholder.com/150'),
                  ),
                ),

                

                Text(''),
                Text(texts)
              ],
            ),
         ),
        
        Row(
          children: [
            //  Image(image: imagen),
            Text(title),
            Text(texts)
          ],
        ),
      ],
    ));
  }
}