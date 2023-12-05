import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class ForgetPasswordSectionWD extends StatelessWidget {
  const ForgetPasswordSectionWD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Forgot Password?',
            style: TextStyle(
              color: DesignSystem.g1,
              fontSize: DesignSystem.bodyText4Size,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Help',
            style: TextStyle(
              color: DesignSystem.g1,
              fontSize: DesignSystem.bodyText4Size,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
