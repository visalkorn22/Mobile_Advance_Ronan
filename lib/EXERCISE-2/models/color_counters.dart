import 'package:flutter/material.dart';

class ColorCounters extends ChangeNotifier {
  int _redCount = 0;
  int _blueCount = 0;

  int get redCount => _redCount;
  int get blueCount => _blueCount;

  void incrementRed() {
    _redCount++;
    notifyListeners(); // Notifies widgets to rebuild
  }

  void incrementBlue() {
    _blueCount++;
    notifyListeners();
  }
}
