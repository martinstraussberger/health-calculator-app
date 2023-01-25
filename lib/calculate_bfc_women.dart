//----------------- BFC: Formula Women: US Navy Body Fat Calculator--------------------------------
//---------------- https://www.calculator.net/body-fat-calculator.html ---------
//------------------------------------------------------------------------------------

import 'dart:math';

class CalculateBfc {
  CalculateBfc({this.hip, this.neck, this.waist, this.height});

  final int hip;
  final int neck;
  final int waist;
  final int height;

  double _lbm; // lbm = lean body mass
  double log10(num x) => log(x) / ln10;

  calculateLeanBodyMassWomen() {
    _lbm = 495 /
            (1.29579 -
                0.35004 * log10(waist + hip - neck) +
                0.22100 * log10(height)) -
        450;
    return _lbm.toStringAsFixed(1);
  }

//  main() {
//    var lbm = _lbm;
//    lbm = ((_lbm / weight) * 100);
//    return lbm.toStringAsFixed(1);
//  }
//
//  String getBodyFatResult() {
//    return 'Body Fat in Percentage';
//  }

  // Method Result
  String getResult() {
    return 'Your Body Fat';
  }
}
