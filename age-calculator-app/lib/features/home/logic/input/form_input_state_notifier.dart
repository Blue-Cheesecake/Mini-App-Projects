import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier({required Ref ref})
      : _ref = ref,
        super(FormInputState());

  final Ref _ref;

  void _checkFormValidity() {
    final isValid = _ref.read(validationInputStateProvider.notifier).isFormValid(
          day: state.day,
          month: state.month,
          year: state.year,
        );
    _updateIsButtonEnabled(isValid);
  }

  void updateDay(int? value) {
    state = state.copyWith(day: value);
    _checkFormValidity();
  }

  void updateMonth(int? value) {
    state = state.copyWith(month: value);
    _checkFormValidity();
  }

  void updateYear(int? value) {
    state = state.copyWith(year: value);
    _checkFormValidity();
  }

  void _updateIsButtonEnabled(bool value) {
    state = state.copyWith(isButtonEnabled: value);
  }
}
