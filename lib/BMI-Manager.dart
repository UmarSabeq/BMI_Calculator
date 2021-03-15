import 'dart:math';

class BMIManager {
  BMIManager({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String equation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'Your Weight is over, You need to make a diet and more workout training.';
    } else if (_bmi > 18.5) {
      return 'You are awesome... Great job!';
    } else {
      return 'You have a lower weight, You need to eat more meals';
    }
  }
}
