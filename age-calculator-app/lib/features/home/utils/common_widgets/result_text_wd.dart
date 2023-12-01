import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';
import 'package:age_calculator/features/home/utils/utils.dart';

class ResultTextWD extends StatelessWidget {
  const ResultTextWD({required this.title, required this.value, Key? key}) : super(key: key);

  final int? value;
  final String title;

  @override
  Widget build(BuildContext context) {
    const double fontSize = 55;

    return RichText(
      text: TextSpan(
        text: value == null ? HomepageMessages.empty : value.toString(),
        style: TextStyles.bodyText1.copyWith(
          color: DesignSystem.acaPrimary,
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic,
        ),
        children: [
          TextSpan(
            text: ' $title',
            style: TextStyles.bodyText1.copyWith(
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}
