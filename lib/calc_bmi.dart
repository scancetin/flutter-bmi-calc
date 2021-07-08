import 'dart:math';
import 'package:flutter/material.dart';

class CalcBmi {
  final int height;
  final int weight;
  CalcBmi({this.height, this.weight});

  double calcBmi() {
    return weight / pow(height / 100, 2);
  }

  String getResult(double _bmi) {
    if (_bmi > 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  MaterialColor getColor(double _bmi) {
    if (_bmi > 30) {
      return Colors.red;
    } else if (_bmi >= 25) {
      return Colors.orange;
    } else if (_bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.purple;
    }
  }
}
