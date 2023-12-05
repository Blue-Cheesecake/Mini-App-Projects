import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';
import 'package:course_recommendation_app/features/theme_selection/widgets/app_theme_selection/utils/utils.dart';

class DarkThemeCardWD extends StatelessWidget {
  const DarkThemeCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (_, mode, child) {
        return ThemeCardWD(
          backgroundColor: DesignSystem.g4,
          label: 'Dark',
          isSelected: mode.isDark,
          onPressed: () {
            AdaptiveTheme.of(context).setDark();
          },
        );
      },
    );
  }
}
