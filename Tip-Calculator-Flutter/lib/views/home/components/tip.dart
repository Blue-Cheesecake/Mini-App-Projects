import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/constants.dart';

class Tip extends StatelessWidget {
  final int tipValue;
  final bool selected;

  Tip({Key? key, required this.tipValue, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: selected ? ThemeColor.strongCyan : ThemeColor.veryDarkCyan,
      ),
      width: 125,
      height: 40,
      child: Center(
        child: Text(
          "$tipValue%",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            color: selected ? ThemeColor.veryDarkCyan : Colors.white,
          ),
        ),
      ),
    );
  }
}
