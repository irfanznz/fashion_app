import 'package:flutter/material.dart';

class Occasion extends ChangeNotifier {
  String? _occasion;
  String? _mood;

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
}
