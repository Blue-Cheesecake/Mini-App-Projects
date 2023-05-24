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
      patient: "1.8k",
      experience: 10,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
    ),
    DoctorModel(
      name: "Dr Watson",
      type: "Cardiologist",
      imagePath: "assets/images/doctor2.jpg",
      rating: 4.7,
      isFavorite: false,
      patient: "2.1k",
      experience: 8,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
    ),
    DoctorModel(
      name: "Dr McCoy",
      type: "Neurologist",
      imagePath: "assets/images/doctor3.jpg",
      rating: 4.8,
      isFavorite: false,
      patient: "1.3k",
      experience: 9,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
    ),
    DoctorModel(
      name: "Dr House",
      type: "Nephrologist",
      imagePath: "assets/images/doctor4.jpg",
      rating: 4.6,
      isFavorite: false,
      patient: "1.1k",
      experience: 4,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
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
