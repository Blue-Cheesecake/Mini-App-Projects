import 'package:flutter/material.dart';

class Constants {
  static const color = ThemeColor;
}

class ThemeColor {
  static final strongCyan =
      const HSLColor.fromAHSL(1, 172, 0.67, 0.45).toColor();
  static final veryDarkCyan =
      const HSLColor.fromAHSL(1, 183, 1, 0.15).toColor();
  static final darkGrayishCyan =
      const HSLColor.fromAHSL(1, 186, 0.14, 0.43).toColor();
  static final grayishCyan =
      const HSLColor.fromAHSL(1, 184, 0.14, 0.56).toColor();
  static final lightGrayishCyan =
      const HSLColor.fromAHSL(1, 185, 0.41, 0.84).toColor();
  static final veryLightGrayish =
      const HSLColor.fromAHSL(1, 189, 0.41, 0.97).toColor();
}