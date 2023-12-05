import 'package:flutter/material.dart';

final class CRATheme {
  CRATheme._();

  static ThemeData getLightTheme() {
    return ThemeData.light(useMaterial3: false);
  }

  static ThemeData getDarkTheme() {
    return ThemeData.dark(useMaterial3: false);
  }
}
