import 'package:flutter/material.dart';
import 'package:iosproject/screens/home.dart';
import 'package:iosproject/screens/prueba.dart';

import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.const.dart';

void main() {
  runApp(AppProviders());
}

Widget AppProviders() => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Select(),
        ),
        ChangeNotifierProvider(
          create: (_) => CarrerasServices(),
        )
      ],
      child: MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITE',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(backgroundColor: kPrimaryColor),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: kSecundaryColor),
        appBarTheme:
            const AppBarTheme(centerTitle: true, color: kSecundaryColor),
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      home: Prueba(),
      //routes: Pages.route,
    );
  }
}
