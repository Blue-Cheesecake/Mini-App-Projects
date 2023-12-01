import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/utils/utils.dart';
import 'package:age_calculator/features/home/logic/logic.dart';

class FormOutputStateNotifier extends StateNotifier<FormOutputState> {
  FormOutputStateNotifier() : super(FormOutputState());

  void calculateDate({required int day, required int month, required int year}) {
    final DateTime result = ComputingFunctions.findDifferenceCurrentDate(day: day, month: month, year: year);

    state = state.copyWith(
      days: result.day,
      months: result.month,
      year: result.year,
    );
  }
}
