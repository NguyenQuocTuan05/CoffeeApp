import 'package:flutter/material.dart';

class ProviderCalculation extends ChangeNotifier {
  String currentResult = '';
  List<String> calculations = [];

  void calculate(double num1, double num2, String operator) {
    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        result = num2 != 0 ? num1 / num2 : 0;
        break;
      default:
        result = 0;
    }

    currentResult = '$num1 $operator $num2 = $result';
    calculations.insert(0, currentResult);
    notifyListeners();
  }
}
