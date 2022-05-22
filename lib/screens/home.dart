import 'package:flutter/material.dart';
import 'package:iosproject/const/tabs.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
    var info = Provider.of<DbService>(context);
    info.fetchCareerInfo(career);
    return career == null
        ? tab == Tabs.Home
            ? WidgetHome()
            : tab == Tabs.Info
                ? Triptico()
                : Container(child: Text('directory'))
        : tab == Tabs.Home
            ? Container(child: Text(career.toString() + ':Home'))
            : tab == Tabs.Info
                ? Container(child: Text(career.toString() + ':Info'))
                : Container(child: Text(career.toString() + ':Directory'));
  }
}
