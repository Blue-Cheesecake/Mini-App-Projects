import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class TopDoctorSectionWidget extends StatelessWidget {
  const TopDoctorSectionWidget({
    super.key,
    required this.doctor,
  });

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(doctor.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.blue.withOpacity(0.9),
              AppColor.blue.withOpacity(0),
              AppColor.blue.withOpacity(0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Patients",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  doctor.patient,
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Experience",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${doctor.experience} yr",
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Rating",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  doctor.rating.toString(),
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
