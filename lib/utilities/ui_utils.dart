import 'package:flutter/material.dart';

const colorBlack45 = Color(0x73000000);
const backgroundColor = Color(0xFF16181E);
const backgroundLightColor = Color(0xFF252933);

const defaultBorderRadius = 20.0;

const cardShadow = [
  BoxShadow(
    color: Colors.black12,
    spreadRadius: 10,
    blurRadius: 10,
    offset: Offset(0, 3),
  )
];

const cardShadowSmall = [
  BoxShadow(
    color: Colors.black12,
    spreadRadius: 5,
    blurRadius: 8,
    offset: Offset(0, 3),
  )
];

const textShadow = [
  BoxShadow(
    color: Colors.black26,
    spreadRadius: 6,
    blurRadius: 6,
    offset: Offset(0, 3.5),
  )
];

const textShadowSmall = [
  BoxShadow(
    color: Colors.black26,
    spreadRadius: 5,
    blurRadius: 5,
    offset: Offset(0, 2.5),
  )
];

LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.black45.withOpacity(0.45),
    Colors.transparent,
    Colors.transparent,
    backgroundColor.withOpacity(0.45),
    backgroundColor.withOpacity(0.9),
    backgroundColor,
    backgroundColor,
  ],
);
