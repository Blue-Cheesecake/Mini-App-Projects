import 'package:doctor_appointment_flutter/appointment/models/doctor_model.dart';
import 'package:doctor_appointment_flutter/appointment/screens/doctor_details_screen.dart';
import 'package:doctor_appointment_flutter/appointment/widgets/favorite_button_widget.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class DoctorCardWidget extends StatefulWidget {
  const DoctorCardWidget({Key? key, required this.doctor}) : super(key: key);

  final DoctorModel doctor;

  @override
  State<DoctorCardWidget> createState() => _DoctorCardWidgetState();
}

class _DoctorCardWidgetState extends State<DoctorCardWidget> {
  @override
  Widget build(BuildContext context) {
    const double rad = 15;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: InkWell(
        mouseCursor: SystemMouseCursors.click,
        onTap: () {
          Navigator.of(context).pushNamed(
            DoctorDetailsScreen.routeName,
            arguments: widget.doctor,
          );
        },
        child: Container(
          width: 200,
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(Radius.circular(rad)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(rad),
                    ),
                    child: Image.asset(
                      widget.doctor.imagePath,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.doctor.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColor.blue,
                          ),
                        ),
                        Text(widget.doctor.type),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColor.yellow,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(widget.doctor.rating.toString()),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 7,
                  ),
                  child: FavoriteButtonWidget(
                    doctor: widget.doctor,
                    isCircle: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
