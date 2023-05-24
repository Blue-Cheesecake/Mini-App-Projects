import 'package:doctor_appointment_flutter/appointment/widgets/time_widget.dart';
import 'package:flutter/material.dart';

class BookTimeWidget extends StatefulWidget {
  const BookTimeWidget({Key? key}) : super(key: key);

  @override
  State<BookTimeWidget> createState() => _BookTimeWidgetState();
}

class _BookTimeWidgetState extends State<BookTimeWidget> {
  final List<String> times = ["8:00 AM", "9:00 AM", "10:00 AM", "11:00 AM"];
  int currentIndex = -1;

  void onTappedSlot(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Book time",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: times
                .asMap()
                .entries
                .map(
                  (e) => TimeWidget(
                      index: e.key,
                      time: e.value,
                      callback: onTappedSlot,
                      isSelected: currentIndex == e.key),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
