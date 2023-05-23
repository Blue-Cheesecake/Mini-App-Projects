import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({Key? key, required this.doctor}) : super(key: key);

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    const double rad = 20;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 200,
        height: 300,
        decoration: const BoxDecoration(
          color: AppColor.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              doctor.imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
