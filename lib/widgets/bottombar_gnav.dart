import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:iosproject/imports/screens.dart';
import 'package:iosproject/imports/styles_consts.dart';

import 'package:iosproject/routes/routes.dart';

class BottomBarGnav extends StatelessWidget {
  const BottomBarGnav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: kPrimaryColor,
        color: kSecundaryColor,
        items: [
          Icon(
            FontAwesomeIcons.house,
            color: kIconColor,
          ),
          Icon(
            FontAwesomeIcons.peopleGroup,
            color: kIconColor,
          ),
          Icon(
            FontAwesomeIcons.addressBook,
            color: kIconColor,
          ),
        ]);
  }
}
