import 'package:flutter/material.dart';
import 'package:iosproject/imports/.const.dart';

class Select extends ChangeNotifier {
  Enum _indexTab = Tabs.Home;
  Enum _indexCareer = Careers.Start;

  void setTab(Enum index) {
    _indexTab = index;
    notifyListeners();
  }

  Enum getTab() {
    return _indexTab;
  }

  int getTabIndex() {
    return _indexTab.index;
  }

  void setCareer(Enum index) {
    _indexCareer = index;
    notifyListeners();
  }

  Enum getCareer() {
    return _indexCareer;
  }
}
