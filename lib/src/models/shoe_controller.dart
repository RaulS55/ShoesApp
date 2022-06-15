import 'package:flutter/cupertino.dart';

class ShoeController extends ChangeNotifier {
  String _assetImage = "assets/amarillo.png";
  double _size = 9.0;

  String get assetImage => _assetImage;
  double get size => _size;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  set size(double value) {
    _size = value;
    notifyListeners();
  }
}
