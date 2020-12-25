import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ApplicationColor with ChangeNotifier {
  bool _isBlue = true; // private

  bool get isBlue => _isBlue;
  set isBlue(bool value) {
    _isBlue = value;
    notifyListeners(); // wajib, untuk memberitahukann ChangeNotifier
  }

  Color get color => (_isBlue) ? Colors.blue : Colors.red;
}
