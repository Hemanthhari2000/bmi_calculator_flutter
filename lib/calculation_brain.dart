import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String getBmi() {
    _bmi = weight / (pow((height / 100), 2));
    return _bmi.toStringAsFixed(1);
  }

  String getBmiInfo() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getBmiInterpretation() {
    if (_bmi >= 25) {
      return "You Need to Focus more on Diet and Exercise and reduce Calories...";
    } else if (_bmi >= 18.5) {
      return "You are doing great Keep maintaining the same BMI...";
    } else {
      return "You need to eat more healthy food and maintain balanced diet...";
    }
  }
}
