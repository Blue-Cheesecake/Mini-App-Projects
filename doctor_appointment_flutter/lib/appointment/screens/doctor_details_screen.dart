import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/back_button_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/book_date_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/book_time_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/favorite_button_widget.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/top_doctor_section_widget.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TopDoctorSectionWidget(doctor: doctor),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        doctor.name,
                        style: const TextStyle(
                          color: AppColor.blue,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            MdiIcons.heartFlash,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            doctor.type,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        doctor.description,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 15),
                      BookDateWidget(),
                      const SizedBox(height: 10),
                      const BookTimeWidget(),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.blue,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Book Appointment",
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
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
