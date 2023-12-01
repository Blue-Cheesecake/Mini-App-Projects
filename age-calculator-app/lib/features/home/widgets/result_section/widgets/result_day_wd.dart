import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';
import 'package:age_calculator/features/home/utils/utils.dart';

class ResultDayWD extends ConsumerWidget {
  const ResultDayWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResultTextWD(
      title: HomepageMessages.days,
      value: ref.watch(formOutputStateProvider.select((value) => value.days)),
    );
  }
}
