import 'dart:math';

//--------------------------------- BMI: Standard Formula--------------------------------------
class CalculateBmi {
  CalculateBmi({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  // Method Result
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to take care of your daily caloric need. \n \n The Normalweight is in between 18.5-24.9';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job! But keep in mind the BMI dosn\`t tell much about your overall health. \n \n The Normalweight is in between 18.5-24.9';
    } else {
      return 'You have a lower than normal body weight. Take care of your caloric need. \n \n The Normalweight is in between 18.5-24.9';
    }
  }
}
