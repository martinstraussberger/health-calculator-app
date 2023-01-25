class CalculateBmr {
  CalculateBmr({this.height, this.weight, this.age});

  final int height;
  final int weight;
  final int age;

  double _bmr; // basal metabolic rate men// basal metabolic rate women

  String calculateBMR() {
    _bmr = (10 * weight + 6.25 * height - 5 * age + 5);
    return _bmr.toStringAsFixed(1);
  }

// Method Result
  String getResult() {
    return ('Your minimal \n caloric need');
  }
}
