import 'package:flutter/material.dart' show ValueNotifier;

class PosterValueController extends ValueNotifier<String?> {
  PosterValueController(super.value);

  void updateValue(String? val) {
    value = val;
    notifyListeners();
  }
}