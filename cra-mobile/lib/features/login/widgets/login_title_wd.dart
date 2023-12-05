import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class LoginTitleWD extends StatelessWidget {
  const LoginTitleWD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login',
      style: TextStyle(
        color: DesignSystem.g1,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
