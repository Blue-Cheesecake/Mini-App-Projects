import 'package:flutter/material.dart';
import 'package:tip_calculator/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        color: KColor.grayishCyan,
      ),
    );
  }
}
