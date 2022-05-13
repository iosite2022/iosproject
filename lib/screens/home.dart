import 'package:flutter/material.dart';
import 'package:iosproject/screens/industrial.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/widgets.dart';
import 'package:iosproject/imports/styles_consts.dart';
import 'package:iosproject/models/tab_select.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabSelect tab = Provider.of<TabSelect>(context);
    return tab.getCareer() == 0
        ? Scaffold(
            appBar: AppBar(title: HomeTitle()),
            drawer: DrawerPrincipal(),
            body: Body(tab.getTab()),
            bottomNavigationBar: BottomBarGnav(),
          )
        : Scaffold(
            appBar: AppBar(title: HomeTitle()),
            drawer: DrawerPrincipal(),
            body: Body(tab.getTab()),
            // bottomNavigationBar: BottomBarGnav(),
          );
  }
}

Widget HomeTitle() => Text("Instituto Teconologico de Ensenada");

Widget Body(int tab) => tab == 1 ? ElectroBody() : HomeBody();

Widget HomeBody() => SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: const [
            Text("Home"),
          ],
        ),
      ),
    );

Widget ElectroBody() => SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: const [
            Text("Electromecanica"),
          ],
        ),
      ),
    );
