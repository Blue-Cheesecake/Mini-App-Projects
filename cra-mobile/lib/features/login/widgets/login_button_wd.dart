import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';
import 'package:course_recommendation_app/features/theme_selection/theme_selection_page.dart';

class LoginButtonWD extends StatelessWidget {
  const LoginButtonWD({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThemeSelectionPage()));
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: DesignSystem.primary,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(99))),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: DesignSystem.g1,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
