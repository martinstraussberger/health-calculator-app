//----------------- BFC: Formula Women: US Navy Body Fat Calculator--------------------------------
//---------------- https://www.calculator.net/body-fat-calculator.html ---------
//------------------------------------------------------------------------------------

import 'dart:math';

class CalculateAccWomen {
  CalculateAccWomen(
      {this.height, this.age, this.weight, this.ex1, this.ex2, this.ex3});

  final int height;
  final int weight;
  final int age;
  final int year = 1;

  bool ex1;
  bool ex2;
  bool ex3;

  double _acw; // active caloric women
  double log10(num x) => log(x) / ln10;

  calculateActiveCaloricNeedWomen() {
    if (ex1 == true) {
      _acw = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year - 161) * 1.2;
      return _acw.toStringAsFixed(1);
    } else if (ex2 == true) {
      _acw = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year - 161) * 1.4;
      return _acw.toStringAsFixed(1);
    } else if (ex3 == true) {
      _acw =
          (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year - 161) * 1.75;
      return _acw.toStringAsFixed(1);
    } else {
      // calculates standard BMR (Basal Metabolic Rate)
      _acw = (10 * weight / 1 + 6.25 * height / 1 - 5 * age / year - 161);
      return _acw.toStringAsFixed(1);
    }
  }

  // Method Result
  String getResult() {
    return 'YOUR Caloric Need';
  }
}
