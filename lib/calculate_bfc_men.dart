//----------------- BFC: Formula Women: US Navy Body Fat Calculator--------------------------------
//---------------- https://www.calculator.net/body-fat-calculator.html ---------
//------------------------------------------------------------------------------------

import 'dart:math';

class CalculateBfcMen {
  CalculateBfcMen({this.waist, this.height, this.neck});

  final int waist;
  final int height;
  final int neck;

  double _lbmMen; // lbm = lean body mass // lbm = lean body mass
  double log10(num x) => log(x) / ln10;

  calculateLeanBodyMassMen() {
    _lbmMen = 495 /
            (1.0324 - 0.19077 * log10(waist - neck) + 0.15456 * log10(height)) -
        450;
    return _lbmMen.toStringAsFixed(1);
  }

  // Method Result
  String getResult() {
    return 'YOUR Body Fat';
  }
}
