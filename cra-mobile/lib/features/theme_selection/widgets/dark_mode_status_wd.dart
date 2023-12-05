import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class DarkModeStatusWD extends StatelessWidget {
  const DarkModeStatusWD({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (_, mode, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _TitleWD(isLightMode: mode.isLight),
            const SizedBox(height: 8),
            _StatusTextWD(isLightMode: mode.isLight),
          ],
        );
      },
    );
  }
}

class _TitleWD extends StatelessWidget {
  const _TitleWD({required this.isLightMode});

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dark mode',
      style: TextStyle(
        color: isLightMode ? DesignSystem.g2 : DesignSystem.g6,
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _StatusTextWD extends StatelessWidget {
  const _StatusTextWD({required this.isLightMode});

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Text(
      isLightMode ? 'Off' : 'On',
      style: TextStyle(
        color: isLightMode ? DesignSystem.g2 : DesignSystem.g6,
        fontSize: DesignSystem.bodyText4Size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
