import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TextFormFieldViewModel extends GetxController {
  TextEditingController text = TextEditingController();

  var totalValue = 1000.0; // Fixed total value
  var currentValue = 0.0; // Current value entered by the user

  double get percentage => (currentValue / totalValue) * 100;

  void updateCurrentValue(double newValue) {
    currentValue = newValue;
    print('----percentage----${currentValue}');
  }
}
