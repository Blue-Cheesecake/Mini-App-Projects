import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier({required Ref ref})
      : _ref = ref,
        super(FormInputState());

  final Ref _ref;

  void checkFormValidity() {
    final isValid = _ref.read(validationInputStateProvider.notifier).isFormValid(
          day: state.day,
          month: state.month,
          year: state.year,
        );
    state = state.copyWith(isButtonEnabled: isValid);
  }

  void updateDay(int? value) {
    state = state.copyWith(day: value);
  }

  void updateMonth(int? value) {
    state = state.copyWith(month: value);
  }

  void updateYear(int? value) {
    state = state.copyWith(year: value);
  }

  void updateIsButtonEnabled(bool value) {
    state = state.copyWith(isButtonEnabled: value);
  }
}
