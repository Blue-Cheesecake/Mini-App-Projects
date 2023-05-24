import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/back_button_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/favorite_button_widget.dart';
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(doctor.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButtonWidget(),
                  FavoriteButtonWidget(
                    doctor: doctor,
                    isCircle: false,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
