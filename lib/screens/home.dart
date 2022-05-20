import 'package:flutter/material.dart';
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
        body: CareerBody(
          career: sel.career,
          tab: sel.tab,
        ),
        bottomNavigationBar: BottomBarGnav(),
      ),
    );
  }
}

Widget HomeTitle() => Text("Instituto Teconologico de Ensenada");

class CareerBody extends StatelessWidget {
  final Enum? career;
  final Enum? tab;
  CareerBody({Key? key, this.career, this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<DbService>(context);
    info.fetchCareerInfo(career);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'info:' + (info.career?.info?.vision ?? "null"),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Tab:' + (career == null ? "NA" : career.toString()),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Tab:' + (tab == null ? "NA" : tab.toString()),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
