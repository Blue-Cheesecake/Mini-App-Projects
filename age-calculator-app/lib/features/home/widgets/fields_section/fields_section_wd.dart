import 'package:flutter/material.dart';

import 'package:age_calculator/features/home/widgets/fields_section/widgets/widgets.dart';

class FieldsSectionWD extends StatelessWidget {
  const FieldsSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double space = 16;

    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        DayTextFieldWD(),
        SizedBox(width: space),
        MonthTextFieldWD(),
        SizedBox(width: space),
        YearTextFieldWD(),
      ],
    );
  }
}
