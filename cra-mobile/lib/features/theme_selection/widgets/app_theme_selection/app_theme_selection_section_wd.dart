import 'package:flutter/material.dart';

import 'package:course_recommendation_app/features/theme_selection/widgets/app_theme_selection/widgets/widgets.dart';

class AppThemeSelectionSectionWD extends StatelessWidget {
  const AppThemeSelectionSectionWD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppThemeTitleWD(),
        SizedBox(height: 15),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LightThemeCardWD(),
            SizedBox(width: 15),
            DarkThemeCardWD(),
          ],
        )
      ],
    );
  }
}
