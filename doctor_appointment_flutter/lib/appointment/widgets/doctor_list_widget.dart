import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/doctor_card_widget.dart';
import 'package:flutter/material.dart';

class DoctorListWidget extends StatelessWidget {
  DoctorListWidget({Key? key}) : super(key: key);

  final List<DoctorModel> doctors = [
    DoctorModel(
      name: "Dr Looney",
      type: "Surgeon",
      imagePath: "assets/images/doctor1.jpg",
      rating: 4.9,
      isFavorite: false,
    ),
    DoctorModel(
      name: "Dr Watson",
      type: "Cardiologist",
      imagePath: "assets/images/doctor2.jpg",
      rating: 4.7,
      isFavorite: false,
    ),
    DoctorModel(
      name: "Dr McCoy",
      type: "Neurologist",
      imagePath: "assets/images/doctor3.jpg",
      rating: 4.8,
      isFavorite: false,
    ),
    DoctorModel(
      name: "Dr House",
      type: "Nephrologist",
      imagePath: "assets/images/doctor4.jpg",
      rating: 4.6,
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Doctors",
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: doctors.map((e) => DoctorCardWidget(doctor: e)).toList(),
          ),
        )
      ],
    );
  }
}
