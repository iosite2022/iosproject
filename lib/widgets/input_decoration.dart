import 'package:flutter/material.dart';

import '../imports/.const.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {String? labelText,
      required String hintText,
      Color? colorIcon,
      Widget? icons}) {
    return InputDecoration(
        icon: icons,
        iconColor: colorIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: kTextStyle_ContactCord_Contact_School,
        hintStyle: kTextStyle_ContactCord_Contact_School2,
        floatingLabelBehavior: FloatingLabelBehavior.always);
  }
}
