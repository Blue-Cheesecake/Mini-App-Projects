import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class ThemeTextWD extends StatelessWidget {
  const ThemeTextWD({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (_, mode, child) {
        return Text(
          'Theme',
          style: TextStyle(
            color: mode.isLight ? DesignSystem.g2 : DesignSystem.g5,
            fontSize: DesignSystem.bodyText2Size,
          ),
        );
      },
    );
  }
}
