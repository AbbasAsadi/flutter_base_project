import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class UIUtil {
  static const double radiusValue = 20;
  static BorderRadius borderRadius = SmoothBorderRadius(
    cornerRadius: radiusValue,
    cornerSmoothing: .6,
  );

/*
  static Color? stringToColorConverter(String? stringColor) {
    Color? color;

    if (stringColor != null) {
      int value = int.parse(stringColor, radix: 16);
      color = Color(value);
    }
    return color;
  }
*/
}