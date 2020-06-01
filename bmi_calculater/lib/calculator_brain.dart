import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String bmiCalculated() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25)
      return 'OverWeight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }

  String getInterpreter() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight , Try to excercise more .';
    else if (_bmi > 18.5)
      return 'You have normal body weight , Good Job! .';
    else
      return 'You have lower than normal body weight , Try can eat a bit more .';
  }
}
