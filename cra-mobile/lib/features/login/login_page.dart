import 'package:flutter/material.dart';

import 'package:course_recommendation_app/config/config.dart';
import 'package:course_recommendation_app/features/login/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: DesignSystem.g2,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Placeholder(fallbackHeight: 270),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoginTitleWD(),
                SizedBox(height: 20),
                LoginFormWD(title: 'Username'),
                SizedBox(height: 20),
                LoginFormWD(title: 'Password', obscureText: true),
                SizedBox(height: 20),
                LoginButtonWD(),
                SizedBox(height: 15),
                ForgetPasswordSectionWD(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
