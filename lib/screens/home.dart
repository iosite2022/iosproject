import 'package:flutter/material.dart';
import 'package:iosproject/providers/carreras_services.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sel = Provider.of<Select>(context);
    final infoCareer = Provider.of<CarrerasServices>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: HomeTitle()),
        drawer: DrawerPrincipal(),
        body: HomeBody(career: sel.getCareer(), tab: sel.getTab()),
        bottomNavigationBar: BottomBarGnav(),
      ),
    );
  }
}

Widget HomeTitle() => Text("Instituto Teconologico de Ensenada");

Widget HomeBody({Enum? career, Enum? tab}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Career:' + (career == null ? "NA" : career.toString()),
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
/*
Widget bodyOf({Enum? career, Enum? tab}) {
  return career == null ? Start(tab: tab) : Career(career: career, tab: tab);
}
*/
