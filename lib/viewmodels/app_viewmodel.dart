import 'package:flutter/cupertino.dart';

class AppViewModel extends ChangeNotifier {
  bool _darkMode = true;

  get darkMode => _darkMode;

  void changeDarkMode() {
    _darkMode = !_darkMode;

    notifyListeners();
  }
}
