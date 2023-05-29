import 'package:flutter/material.dart';

class AppColors {
  static final color = Kolor();
  static final component = Component();
}

class Kolor {
  final desaturatedDarkCyan =
      const HSLColor.fromAHSL(1, 180, 0.29, 0.50).toColor();
  final darkGrayishCyan = const HSLColor.fromAHSL(1, 180, 0.08, 0.52).toColor();
  final veryDarkGrayishCyan =
      const HSLColor.fromAHSL(1, 180, 0.14, 0.20).toColor();
}

class Component {
  final background = const HSLColor.fromAHSL(1, 180, 0.52, 0.96).toColor();
  final filterTablets = const HSLColor.fromAHSL(1, 180, 0.31, 0.95).toColor();
}
