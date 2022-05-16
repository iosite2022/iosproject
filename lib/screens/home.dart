import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iosproject/imports/.providers.dart';
import 'package:iosproject/imports/.widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sel = Provider.of<Select>(context);
    return Scaffold(
      appBar: AppBar(title: HomeTitle()),
      drawer: DrawerPrincipal(),
      body: HomeBody(career: sel.getCareer(), tab: sel.getTab()),
      bottomNavigationBar: BottomBarGnav(),
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
