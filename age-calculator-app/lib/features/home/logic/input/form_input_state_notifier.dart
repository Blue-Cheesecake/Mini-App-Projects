import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier() : super(FormInputState());

  void updateDay(int? value) {
    state = state.copyWith(day: value);
  }

  void updateMonth(int? value) {
    state = state.copyWith(month: value);
  }

  void updateYear(int? value) {
    state = state.copyWith(year: value);
  }
}
