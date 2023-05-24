import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget(
      {Key? key, required this.doctor, required this.isCircle})
      : super(key: key);

  final DoctorModel doctor;
  final bool isCircle;

  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget.doctor.isFavorite = !widget.doctor.isFavorite;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.white,
        elevation: 0.5,
        padding: const EdgeInsets.all(12),
        shape: widget.isCircle
            ? const CircleBorder()
            : const RoundedRectangleBorder(),
      ),
      child: Icon(
        widget.doctor.isFavorite
            ? Icons.favorite_rounded
            : Icons.favorite_border_rounded,
        color: AppColor.blue,
      ),
    );
  }
}
