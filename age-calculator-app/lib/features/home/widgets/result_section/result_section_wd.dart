import 'package:flutter/material.dart';

import 'package:age_calculator/features/home/widgets/result_section/widgets/widgets.dart';

class ResultSectionWD extends StatelessWidget {
  const ResultSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResultYearWD(),
        ResultMonthWD(),
        ResultDayWD(),
      ],
    );
  }
}
