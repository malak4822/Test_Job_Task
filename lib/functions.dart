import 'dart:math';
import 'package:flutter/material.dart';

/// A utility class containing functions for color manipulation.
class ColorFunctions {
  /// Changes the given color to a new random color and invokes the provided callback with the new color.
  
  /// The [color] parameter is the original color.
  /// The [callBack] function is invoked with the new color.
  void changeColor(Color color, void Function(Color) callBack) {
    // Generate random values for red, green, and blue components (0 to 255).
    final int redVal = Random().nextInt(256);
    final int greenVal = Random().nextInt(256);
    final int blueVal = Random().nextInt(256);

    // Create a new color using the randomly generated RGB values and alpha value of 200.
    final Color randomColor = Color.fromARGB(200, redVal, greenVal, blueVal);

    // Invoke the callback function with the new random color.
    callBack(randomColor);
  }
}
