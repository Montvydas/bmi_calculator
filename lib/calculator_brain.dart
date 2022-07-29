import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  final kBmiInfo = const [
    {
      'bmi': 25.0,
      'status': 'OVERWEIGHT',
      'message': 'Need to loose some weight...',
    },
    {
      'bmi': 18.5,
      'status': 'NORMAL',
      'message': 'You\'re good mate!',
    },
    {
      'bmi': 0.0,
      'status': 'UNDERWEIGHT',
      'message': 'Ammm... Eat a bit more and you should be fine!',
    },
  ];

  const CalculatorBrain({@required this.height, @required this.weight});

  double calculateBmi() {
    return weight / pow(height / 100, 2);
  }

  String getBmi() {
    return calculateBmi().toStringAsFixed(1);
  }

  List<String> getResults() {
    double bmi = calculateBmi();

    for (var bmiGroup in kBmiInfo) {
      if (bmi >= bmiGroup['bmi']) {
        return [
          bmiGroup['status'],
          bmiGroup['message'],
        ];
      }
    }

    return ['Unknown', 'BMI could not be calculated!'];

    // double bmi = calculateBmi();
    // if (bmi >= 25) {
    //   return ['Overweight', 'Need to loose some weight...'];
    // } else if (bmi >= 18.5) {
    //   return ['Normal', 'You\'re good mate!'];
    // } else {
    //   return ['Underweight', 'Ammm... Eat a bit more and you should be fine!'];
    // }
  }
}
