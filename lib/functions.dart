import 'dart:math';
import 'package:flutter/material.dart';

/// A [ColorFunctions] containing functions related to color manipulation.
class ColorFunctions {
  /// [changeColor] function sets and invoke [callBack] with new color param.
  void changeColor(Color color, void Function(Color) callBack) {
    // assigning random ints from 0 to 255 internally
    final int redVal = Random().nextInt(256);
    final int greenVal = Random().nextInt(256);
    final int blueVal = Random().nextInt(256);

    // assgning 
    final Color randomColor = Color.fromARGB(200, redVal, greenVal, blueVal);
    callBack(randomColor);
  }
}
