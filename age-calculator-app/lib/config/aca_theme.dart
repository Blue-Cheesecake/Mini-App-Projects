import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';

class ACATheme {
  const ACATheme._();

  static ThemeData getThemeData() => ThemeData(
      fontFamily: DesignSystem.fontFamily,
      useMaterial3: false,
      primaryColor: DesignSystem.acaPrimary,
      buttonTheme: const ButtonThemeData(
        splashColor: DesignSystem.acaPrimary,
      ));
}
