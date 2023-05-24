import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class TimeSlotWidget extends StatelessWidget {
  const TimeSlotWidget({
    Key? key,
    required this.index,
    required this.day,
    required this.month,
    required this.callback,
    required this.isSelected,
  }) : super(key: key);

  final int index;
  final int day;
  final String month;
  final void Function(int newIndex) callback;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => callback(index),
        child: Container(
          width: 90,
          height: 70,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.blue : AppColor.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7,
                spreadRadius: 3,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day.toString(),
                style: TextStyle(
                  color: isSelected ? AppColor.white : Colors.black54,
                  fontSize: 17,
                ),
              ),
              Text(
                month,
                style: TextStyle(
                  color: isSelected ? AppColor.white : Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
