import 'package:flutter/material.dart';
import 'package:iosproject/imports/screens.dart';

import 'package:iosproject/routes/pages.dart';
import 'package:iosproject/imports/styles_consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITE',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(backgroundColor: kPrimaryColor),
        appBarTheme:
            const AppBarTheme(centerTitle: true, color: kSecundaryColor),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: Pages.route,
    );
  }
}
