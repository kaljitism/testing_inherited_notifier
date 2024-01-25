import 'package:flutter/foundation.dart';

class SliderData extends ChangeNotifier {
  double _value = 0.0;

  double get value => _value;
  set value(double newValue) {
    if (newValue != value) {
      _value = newValue;
      notifyListeners();
    }
  }
}
