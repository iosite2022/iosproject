import 'package:flutter/material.dart';
import 'package:iosproject/const/styles.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class TripticoPrincipal extends StatefulWidget {
  const TripticoPrincipal({Key? key}) : super(key: key);

  @override
  State<TripticoPrincipal> createState() => _TripticoPrincipalState();
}

class _TripticoPrincipalState extends State<TripticoPrincipal> {
  @override
  Widget build(BuildContext context) {
    var imageSize;
    var imageIndex;
    final imageList = [
      "https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Convocatoria-2022-2.jpeg",
    ];
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 15),
        Text(
          "Convocatoria Semestral",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(
          thickness: 2,
          color: kSecundaryColor,
          indent: 10,
          endIndent: 10,
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: size.height * 0.7,
          child: PhotoViewGallery.builder(
            backgroundDecoration: BoxDecoration(color: Colors.white),
            itemCount: imageList.length,
            loadingBuilder: (context, progress) => Center(
              child: Container(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  color: Colors.blueGrey,
                ),
              ),
            ),
            builder: (context, index) {
              imageIndex = index + 1;
              print(imageIndex.toString());
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(imageList[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 3,
              );
            },
            scrollPhysics: BouncingScrollPhysics(),
          ),
        ),

        //Text("${imageIndex.toString()} de ${imageList.length}"),
        Divider(
          thickness: 2,
          color: kSecundaryColor,
          indent: 10,
          endIndent: 10,
          height: 20,
        ),
      ],
    );
  }
}
