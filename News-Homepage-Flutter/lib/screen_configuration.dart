import 'package:flutter/material.dart';

class ScreenConfiguration {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobileLayout(BuildContext context) {
    return getScreenWidth(context) < minimumWebWidth;
  }

  static double minimumWebWidth = 1001.0;
}
