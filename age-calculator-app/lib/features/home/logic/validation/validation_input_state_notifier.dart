import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/utils/utils.dart';
import 'package:age_calculator/features/home/logic/logic.dart';

class ValidationInputStateNotifier extends StateNotifier<ValidationInputState> {
  ValidationInputStateNotifier() : super(ValidationInputState());

  bool isFormValid({
    required int? day,
    required int? month,
    required int? year,
  }) {
    bool isValid = true;
    ValidationInputState temp = ValidationInputState();
    if (day == null) {
      isValid = false;
      temp = temp.copyWith(dayErrorText: HomepageMessages.requiredErrorText);
    }
    if (month == null) {
      isValid = false;
      temp = temp.copyWith(monthErrorText: HomepageMessages.requiredErrorText);
    }
    if (year == null) {
      isValid = false;
      temp = temp.copyWith(yearErrorText: HomepageMessages.requiredErrorText);
    }

    if (!ValidationFunctions.isDayValid(day: day!, month: month!)) {
      isValid = false;
      temp = temp.copyWith(dayErrorText: HomepageMessages.invalidDayErrorText);
    }
    if (!ValidationFunctions.isMonthValid(month)) {
      isValid = false;
      temp = temp.copyWith(monthErrorText: HomepageMessages.invalidMonthErrorText);
    }
    if (ValidationFunctions.isFutureYear(year!)) {
      isValid = false;
      temp = temp.copyWith(yearErrorText: HomepageMessages.invalidYearErrorText);
    }

    state = temp;
    return isValid;
  }
}
