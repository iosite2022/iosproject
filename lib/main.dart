import 'package:flutter/material.dart';
import 'package:iosproject/models/career.dart';
import 'package:iosproject/screens/ite.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.const.dart';
import 'package:iosproject/imports/.screens.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  print('Loading providers');
  runApp(AppProviders());
}

Widget AppProviders() => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Select(),
        ),
        ChangeNotifierProvider(
          create: (_) => DbServiceCareer(),
        ),
        ChangeNotifierProvider(
          create: (_) => DbServiceHome(),
        ),
      ],
      child: MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Loading App');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITE',
      theme: themeData(),
      home: Ite(),

      //home: Prueba(),
    );
  }
}

ThemeData themeData() => ThemeData(
      drawerTheme: const DrawerThemeData(backgroundColor: kPrimaryColor),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: kSecundaryColor),
      appBarTheme: const AppBarTheme(centerTitle: true, color: kSecundaryColor),
      primarySwatch: Colors.blue,
    );
