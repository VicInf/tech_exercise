import 'package:flutter/material.dart';

class MainScreenStateProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  clean() {
    _selectedIndex = 0;
    notifyListeners();
  }
}
