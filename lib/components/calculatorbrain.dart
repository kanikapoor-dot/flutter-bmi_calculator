import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({@required this.height,@required this.weight});
  String calculateBmi() {
    double heightM = height / 100;
    _bmi = weight / pow(heightM, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getResult() {
    if(_bmi > 30) {
      return 'obese';
    } else if(_bmi > 25 && _bmi <= 30) {
      return 'OverWeight';
    } else if(_bmi >= 18.5 && _bmi <=25) {
      return 'Normal';
    } else if(_bmi > 16 && _bmi < 18.5) {
      return 'Mild Thinness';
    } else {
      return 'Severe Thinness';
    }
  }

  String getInterpretation() {
    if(_bmi > 25) {
      return 'Weight Loss is more than a physical challenge,It\'s a mental challenge';
    } else if(_bmi >= 18.5 && _bmi <=25) {
      return 'It is health that is real wealth and not pieces of gold and silver - Mahatma Gandhi';
    } else {
      return 'Obstacles, Problems, People can\'t stop you ,Only you can STOP YOU be fit';
    }
  }
}
