import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';

class LoginFormWD extends StatelessWidget {
  const LoginFormWD({
    required this.title,
    this.obscureText = false,
    super.key,
  });

  final String title;
  final bool obscureText;

  InputBorder _getEnabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(99),
      borderSide: const BorderSide(
        width: 1.4,
        color: DesignSystem.primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextField(
        maxLines: 1,
        onTapOutside: (e) => FocusScope.of(context).requestFocus(FocusNode()),
        enabled: true,
        style: const TextStyle(
          color: DesignSystem.g1,
          fontSize: DesignSystem.bodyText3Size,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(
            color: DesignSystem.g3,
            fontSize: DesignSystem.bodyText3Size,
          ),
          border: _getEnabledBorder(),
          enabledBorder: _getEnabledBorder(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 23,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}
