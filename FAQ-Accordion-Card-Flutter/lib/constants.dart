import 'package:flutter/material.dart';

class Constants {
  static final screenConfiguration = ScreenConfiguration();
}

class ScreenConfiguration {
  final _minimumWebWidth = 900;

  bool shouldRenderWebLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= _minimumWebWidth;
  }
}
