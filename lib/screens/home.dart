import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return career == null
        ? tab == Tabs.Home
            ? WidgetHome()
            : tab == Tabs.Info
                ? //TripticoPrincipal()
                Container(
                    child: Text('Info'),
                  )
                : ContacPrincipal(
                    WorkArea: 'Servicios Escolares',
                    ContacWorkArea: 'Sara Hernandez Ayón',
                    career: FontAwesomeIcons.accessibleIcon,
                    ConctacNumber: '6461352370',
                    ContacEmail: 'escolares@ite.edu.mx',
                  )
        : tab == Tabs.Home
            // ? Container(child: Text(career.toString() + ':Home'))
            ? HomeCarrers(
                eCareer: career,
                CareerName: 'Licenciatura Administración',
                CarrerDescription: 'gijofij',
                // career: info.career,
              )
            : tab == Tabs.Info
                ? Container(child: Text(career.toString() + ':Info'))
                // ? TripticoPrincipal()
                ? Container(child: Text('aqui va el triptico'))
                : ContacCordinador(
                    CoordName: 'Lourdez Estephanie Campero León',
                    CoordNumber: '6461321665',
                    CoordEmail: 'corsdinacionsistemas@ite.edu.mx',
                    CareerName: 'Ingeniería en Sistemas Computacionales',
                    career: FontAwesomeIcons.addressCard);
                    career: FontAwesomeIcons.addressCard)
        // : Container(child: Text('aqui va el coordinador'))
        : tab == Tabs.Home
            // ? Container(child: Text(career.toString() + ':Home'))
            ? HomeCarrers(
                eCareer: career,
                // carrersName: '',
                // career: info.career,
              )
            : tab == Tabs.Info
                ? Container(child: Text(career.toString() + ':Info'))
                : Container(child: Text(career.toString() + ':Directory'));
  }
}
