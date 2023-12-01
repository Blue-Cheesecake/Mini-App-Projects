import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/utils/utils.dart';
import 'package:age_calculator/features/home/logic/logic.dart';

class ResultYearWD extends ConsumerWidget {
  const ResultYearWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResultTextWD(
      title: HomepageMessages.years,
      value: ref.watch(formOutputStateProvider.select((value) => value.year)),
    );
  }
}
