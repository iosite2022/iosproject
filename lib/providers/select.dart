import 'package:flutter/material.dart';

class Select extends ChangeNotifier {
  Enum? _indexTab;
  Enum? _indexCareer;

  void setTab(Enum? index) {
    _indexTab = index;
    notifyListeners();
  }

  Enum? getTab() {
    return _indexTab;
  }

  int? getTabIndex() {
    return _indexTab?.index; // == null ? 0 : _indexTab?.index;
  }

  void setCareer(Enum? index) {
    _indexCareer = index;
    notifyListeners();
  }

  Enum? getCareer() {
    return _indexCareer;
  }
}
