import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class WelcomeTitleWidget extends StatelessWidget {
  const WelcomeTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          "Doctors Online",
          style: TextStyle(
            color: AppColor.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Appoint Your Doctor",
          style: TextStyle(
            color: AppColor.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
