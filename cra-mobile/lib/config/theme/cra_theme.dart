import 'package:flutter/material.dart';

import 'theme.dart';

final class CRATheme {
  CRATheme._();

  static ThemeData getLightTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      fontFamily: DesignSystem.fontFamily,
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      fontFamily: DesignSystem.fontFamily,
    );
  }
}
