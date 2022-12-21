import 'package:flutter/material.dart';

class StyleColor {
  static final softOrange =
      const HSLColor.fromAHSL(1, 35, 0.77, 0.62).toColor();
  static final softRed = const HSLColor.fromAHSL(1, 5, 0.85, 0.63).toColor();
  static final offWhite = const HSLColor.fromAHSL(1, 36, 1.00, 0.99).toColor();
  static final grayishBlue =
      const HSLColor.fromAHSL(1, 233, 0.08, 0.79).toColor();
  static final darkGrayishBlue =
      const HSLColor.fromAHSL(1, 236, 0.13, 0.42).toColor();
  static final veryDarkBlue =
      const HSLColor.fromAHSL(1, 240, 1, 0.05).toColor();
}

class StyleDimension {
  static const double paddingAround = 15.0;
  static const double newsBoxWidth = 370.0;
}

class StyleFontSize {
  static const double paragraph = 15;
  static const double headerMainContent = 31;
  static const double header = 26;
  static const double subHeader = 18;
}
