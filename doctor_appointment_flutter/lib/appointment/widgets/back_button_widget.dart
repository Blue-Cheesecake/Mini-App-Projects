import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Icon(
        Icons.arrow_back,
        color: AppColor.blue,
      ),
    );
  }
}
