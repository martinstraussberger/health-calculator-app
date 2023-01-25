//----------------- BFC: Formula Women: US Navy Body Fat Calculator--------------------------------
//---------------- https://www.calculator.net/body-fat-calculator.html ---------
//------------------------------------------------------------------------------------

import 'dart:math';

class CalculateAccMen {
  CalculateAccMen(
      {this.height, this.age, this.weight, this.ex1, this.ex2, this.ex3});

  final int height;
  final int weight;
  final int age;
  final int year = 1;

  bool ex1;
  bool ex2;
  bool ex3;

  double _acn; // active caloric need
  double log10(num x) => log(x) / ln10;

  calculateActiveCaloricNeed() {
    if (ex1 == true) {
      _acn = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year + 5) * 1.2;
      return _acn.toStringAsFixed(1);
    } else if (ex2 == true) {
      _acn = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year + 5) * 1.4;
      return _acn.toStringAsFixed(1);
    } else if (ex3 == true) {
      _acn = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year + 5) * 1.75;
      return _acn.toStringAsFixed(1);
    } else {
      // calculates standard BMR (Basal Metabolic Rate)
      _acn = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year + 5);
      return _acn.toStringAsFixed(1);
    }
  }

  // Method Result
  String getResult() {
    return 'YOUR Caloric Need';
  }
}
