import 'package:flutter/material.dart';

class DefaultValue {
  static const valSlider = 16.00;
  static const minSliderValue = 0.0;
  static const maxSliderValue = 32.0;
}

class Style {
  static const KColor Color = KColor();
  static const Dimension dimension = Dimension();
}

class Dimension {
  const Dimension();

  double get mainBoxPaddingSize => 10.0;

  double get mobileMaximumMainBoxWidth => 375.0;

  double get webMaximumMainBoxHeight => 600.0;
}

class KColor {
  const KColor();

  Color get fullSliderBar =>
      const HSLColor.fromAHSL(1, 174, 0.77, 0.8).toColor();

  Color get sliderBackground =>
      const HSLColor.fromAHSL(1, 174, 0.86, 0.45).toColor();

  Color get discountBackground =>
      const HSLColor.fromAHSL(1, 14, 0.92, 0.95).toColor();

  Color get discountText => const HSLColor.fromAHSL(1, 15, 1, 0.70).toColor();

  Color get CTAText => const HSLColor.fromAHSL(1, 226, 1, 0.87).toColor();

  Color get pricingComponentBackground =>
      const HSLColor.fromAHSL(1, 0, 0, 1).toColor();

  Color get mainBackground =>
      const HSLColor.fromAHSL(1, 230, 1, 0.99).toColor();

  Color get emptySliderBar =>
      const HSLColor.fromAHSL(1, 224, 0.65, 0.95).toColor();

  Color get toggleBackground =>
      const HSLColor.fromAHSL(1, 223, 0.50, 0.87).toColor();

  Color get text => const HSLColor.fromAHSL(1, 225, 0.20, 0.60).toColor();

  Color get textAndCTABackground =>
      const HSLColor.fromAHSL(1, 227, 0.35, 0.25).toColor();
}
