//MATERIAL
import 'package:flutter/material.dart';
//DEPENDENCIES
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//MODELS
import 'package:iosproject/models/tab_select.dart';
//CONSTANTS
import 'package:iosproject/imports/styles_consts.dart';

class BottomBarGnav extends StatelessWidget {
  const BottomBarGnav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabSelect = Provider.of<TabSelect>(context);
    return CurvedNavigationBar(
      backgroundColor: kPrimaryColor,
      color: kSecundaryColor,
      items: [
        Icon(FontAwesomeIcons.house, color: kIconColor),
        Icon(FontAwesomeIcons.peopleGroup, color: kIconColor),
        Icon(FontAwesomeIcons.addressBook, color: kIconColor),
      ],
      onTap: (index) {
        print(index);
        tabSelect.setTab(index);
      },
    );
  }
}
