import 'package:flutter/cupertino.dart';

class HomePageViewModel extends ChangeNotifier {
  bool _isfrontLayerOpen = true;

  int _navigationLayerIndex = 0;

  double _opacity = 1;

  get isfrontLayerOpen => _isfrontLayerOpen;

  get opacity => _opacity;

  get navigationLayerIndex => _navigationLayerIndex;

  void onBackLayerConcealed() {
    _isfrontLayerOpen = true;
    _opacity = 1;
    notifyListeners();
  }

  void onBackLayerRevealed() {
    _isfrontLayerOpen = false;
    _opacity = 0;
    notifyListeners();
  }

  void changeNavigationLayerIndex(int i) {
    _navigationLayerIndex = i;
    notifyListeners();
  }
}
