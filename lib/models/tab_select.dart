import 'package:flutter/material.dart';

class TabSelect extends ChangeNotifier {
  int _indexTab = 0;
  int _indexCareer = 0;

  void setTab(int index) {
    _indexTab = index;
    notifyListeners();
  }

  int getTab() {
    return _indexTab;
  }

  void setCareer(int index) {
    _indexCareer = index;
    notifyListeners();
  }

  int getCareer() {
    return _indexCareer;
  }
}
