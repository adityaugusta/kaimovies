import 'package:flutter/material.dart' show Image, ValueNotifier;

class PosterValueController extends ValueNotifier<Image?> {
  PosterValueController(super.value);

  void updateValue(Image? val) {
    value = val;
    notifyListeners();
  }
}