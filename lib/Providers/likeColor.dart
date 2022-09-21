import 'package:flutter/material.dart';

class likeColor extends ChangeNotifier {
  bool checkboxStatus = false;

  void toggleCheckbox() {
    checkboxStatus = !checkboxStatus;
    notifyListeners();
  }
}
