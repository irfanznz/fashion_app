import 'package:flutter/material.dart';

class Occasion extends ChangeNotifier {
  String? _occasion;
  String? _mood;
  int _temperature = 10;

  void changeOccasion(String occasion, int type) {
    if (type == 0) {
      _occasion = occasion;
    } else if (type == 1) {
      _mood = occasion;
    }
    notifyListeners();
  }

  String? getOccasion(int type) {
    return type == 0 ? _occasion : _mood;
  }

  void setTemperature(double temperature) {
    _temperature = temperature.toInt();
  }

  int getTemperature() {
    return _temperature;
  }
}
