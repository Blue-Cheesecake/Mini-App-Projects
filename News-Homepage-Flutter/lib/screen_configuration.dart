import 'package:flutter/material.dart';

class ScreenConfiguration {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double minimumWebWidth = 1080.0;
}
