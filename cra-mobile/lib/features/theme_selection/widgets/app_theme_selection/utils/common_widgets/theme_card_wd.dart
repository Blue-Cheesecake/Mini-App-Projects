import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class ThemeCardWD extends StatelessWidget {
  const ThemeCardWD({
    required this.isSelected,
    required this.onPressed,
    required this.backgroundColor,
    required this.label,
    super.key,
  });

  final bool isSelected;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color: isSelected ? DesignSystem.g5 : DesignSystem.g3,
                width: 7,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: DesignSystem.bodyText3Size,
          ),
        ),
      ],
    );
  }
}
