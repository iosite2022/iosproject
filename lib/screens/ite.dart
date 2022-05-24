import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iosproject/const/tabs.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.widgets.dart';

class Ite extends StatelessWidget {
  const Ite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sel = Provider.of<Select>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: HomeTitle()),
        drawer: DrawerPrincipal(),
        body: BodySelector(
          career: sel.career,
          tab: sel.tab,
        ),
        bottomNavigationBar: BottomBarGnav(),
        floatingActionButton: SpeedDialButton(),
      ),
    );
  }
}

Widget HomeTitle() => Text("TECNM ENSENADA");

class BodySelector extends StatelessWidget {
  final Enum? career;
  final Enum? tab;
  BodySelector({Key? key, this.career, this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return career == null
        ? tab == Tabs.Home
            ? WidgetHome()
            : tab == Tabs.Info
                ? TripticoPrincipal()
                : ContacPrincipal()
        : tab == Tabs.Home
            ? HomeCarrers(career: career)
            : tab == Tabs.Info
                ? TripticoCarreras()
                : ContacCordinador(career: career);
  }
}
