import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.const.dart';
import 'package:iosproject/imports/.screens.dart';

void main() {
  print('Loading providers');
  runApp(AppProviders());
}

Widget AppProviders() => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Select(),
        ),
        ChangeNotifierProvider(
          create: (_) => DbService(),
        )
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
      home: Home(),
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
