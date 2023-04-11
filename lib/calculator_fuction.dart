import 'dart:math';

class Calculator {
  Calculator({required this.h, required this.w});
  final int h;
  final int w;
  double? _bmi;

  String calculatebmi() {
    _bmi = w / pow(h / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String result() {
    if (_bmi! >= 25) {
      return "Over Witght";
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      return "Under Wight";
    }
  }

  String interpritation() {
    if (_bmi! >= 25) {
      return "You have a higher than normal body wight:Work out a litel bit ";
    } else if (_bmi! > 18.5) {
      return "You have a  normal body wight:Goood job";
    } else {
      return "You have a lower than normal body wight:Giane some wight";
    }
  }
}
