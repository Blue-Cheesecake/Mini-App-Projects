import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = "/doctor-details";

  @override
  Widget build(BuildContext context) {
    final DoctorModel doctor =
        ModalRoute.of(context)?.settings.arguments as DoctorModel;

    return Scaffold(
      backgroundColor: AppColor.lightBlue,
      body: Stack(
        children: [
          Column(
            children: const [],
          ),
          SafeArea(
            child: Row(
              children: const [
                BackButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
