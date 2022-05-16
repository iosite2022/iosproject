//MATERIAL
import 'package:flutter/material.dart';
//DEPENDENCIES
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//PROVIDERS
import 'package:iosproject/imports/.providers.dart';
//CONSTANTS
import 'package:iosproject/imports/.const.dart';

class BottomBarGnav extends StatelessWidget {
  const BottomBarGnav({
    Key? key,
    Enum? tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sel = Provider.of<Select>(context);
    return CurvedNavigationBar(
      backgroundColor: kPrimaryColor,
      color: kSecundaryColor,
      items: [
        Icon(FontAwesomeIcons.house, color: kIconColor),
        Icon(FontAwesomeIcons.peopleGroup, color: kIconColor),
        Icon(FontAwesomeIcons.addressBook, color: kIconColor),
      ],
      onTap: (index) {
        sel.setTab(Tabs.values[index]);
      },
      index: sel.getTabIndex() ?? 0,
    );
  }
}
