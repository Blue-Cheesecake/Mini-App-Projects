import 'package:flutter/cupertino.dart';

class Style {
  static final color = Color();
  static final fontSize = FontSize();
}

class Color {
  final textVeryDarkDesaturatedBlue =
      const HSLColor.fromAHSL(1, 238, 0.29, 0.16).toColor();
  final textSoftRed = const HSLColor.fromAHSL(1, 14, 0.88, 0.65).toColor();
  final backgroundGradientSoftViolet =
      const HSLColor.fromAHSL(1, 273, 0.75, 0.66).toColor();
  final backgroundGradientSoftBlue =
      const HSLColor.fromAHSL(1, 240, 0.73, 0.65).toColor();
  final textVeryDarkGrayishBlue =
      const HSLColor.fromAHSL(1, 237, 0.12, 0.33).toColor();
  final textDarkGrayishBlue =
      const HSLColor.fromAHSL(1, 240, 0.06, 0.50).toColor();
  final dividersLightGrayishBlue =
      const HSLColor.fromAHSL(1, 240, 0.05, 0.91).toColor();
}

class FontSize {
  final body = 14.0;
  final title = 32.0;
}
