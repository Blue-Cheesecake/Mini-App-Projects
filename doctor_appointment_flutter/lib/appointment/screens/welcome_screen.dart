import 'package:doctor_appointment_flutter/appointment/widgets/go_button_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/welcome_title_widget.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/doctors.png",
                scale: 2,
              ),
              const WelcomeTitleWidget(),
              const GoButtonWidget(),
              Image.asset(
                "assets/images/lined heart.png",
                scale: 2,
                color: AppColor.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
