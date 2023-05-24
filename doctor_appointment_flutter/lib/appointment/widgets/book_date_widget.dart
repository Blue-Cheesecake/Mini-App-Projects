import 'package:doctor_appointment_flutter/appointment/widgets/time_slot_widget.dart';
import 'package:flutter/material.dart';

class BookDateWidget extends StatefulWidget {
  const BookDateWidget({Key? key}) : super(key: key);

  @override
  State<BookDateWidget> createState() => _BookDateWidgetState();
}

class _BookDateWidgetState extends State<BookDateWidget> {
  final List<int> days = [8, 9, 10, 11];
  final List<String> months = ["DEC", "DEC", "DEC", "DEC"];
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
          "Book Date",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: days.asMap().entries.map((e) {
              return TimeSlotWidget(
                index: e.key,
                day: e.value,
                month: months[e.key],
                callback: onTappedSlot,
                isSelected: e.key == currentIndex,
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
