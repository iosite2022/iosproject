import 'package:flutter/material.dart';
import 'package:iosproject/imports/.const.dart';

class Select extends ChangeNotifier {
  Enum tab = Tabs.Home;
  Enum? career;

  void setTab(Enum index) {
    tab = index;
    notifyListeners();
  }

  void setCareer(Enum? index) {
    career = index;
    notifyListeners();
  }

  int getTabIndex() {
    return tab.index;
  }
}
