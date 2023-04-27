import 'package:flutter/material.dart';

const backgroundColor = Color(0xFF1b1c26);
const backgroundLightColor = Color(0xFF262731);

class CardUtils {
  static const shadow = BoxShadow(
    color: Colors.black12,
    spreadRadius: 10,
    blurRadius: 10,
    offset: Offset(0, 5),
  );

  static const shadowSmall = BoxShadow(
    color: Colors.black26,
    spreadRadius: 3,
    blurRadius: 5,
    offset: Offset(0, 2),
  );

  static Border get border => Border.all(width: 0.8, color: Colors.white24);
}
