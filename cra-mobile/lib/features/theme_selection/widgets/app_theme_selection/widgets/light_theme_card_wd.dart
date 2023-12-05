import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';
import 'package:course_recommendation_app/features/theme_selection/widgets/app_theme_selection/utils/utils.dart';

class LightThemeCardWD extends StatelessWidget {
  const LightThemeCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (_, mode, child) {
        return ThemeCardWD(
          backgroundColor: DesignSystem.g1,
          label: 'Light',
          isSelected: mode.isLight,
          onPressed: () {
            AdaptiveTheme.of(context).setLight();
          },
        );
      },
    );
  }
}
