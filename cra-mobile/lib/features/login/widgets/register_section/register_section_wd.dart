import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class RegisterSectionWD extends StatelessWidget {
  const RegisterSectionWD({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: RichText(
              text: const TextSpan(
                text: "I don't have an account? ",
                style: TextStyle(
                  color: DesignSystem.g1,
                  fontSize: DesignSystem.bodyText4Size,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: DesignSystem.success,
                      fontSize: DesignSystem.bodyText4Size,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
