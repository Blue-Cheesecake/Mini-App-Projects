import 'package:flutter/material.dart';

import 'theme.dart';

final class CRATheme {
  CRATheme._();

  static ThemeData getLightTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      fontFamily: DesignSystem.fontFamily,
      appBarTheme: const AppBarTheme(
        backgroundColor: DesignSystem.primary,
        centerTitle: false,
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      fontFamily: DesignSystem.fontFamily,
      appBarTheme: const AppBarTheme(
        backgroundColor: DesignSystem.g4,
        centerTitle: false,
      ),
      scaffoldBackgroundColor: DesignSystem.g4,
    );
  }
}
