import 'package:flutter_test/flutter_test.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

void main() {
  group('ValidationInputStateNotifier', () {
    test(
        'Given valid day, month, and year '
        'When isFormValid is called '
        'Then it should return true', () {
      const int day = 31;
      const int month = 5;
      const int year = 2023;

      final notifier = ValidationInputStateNotifier();
      final result = notifier.isFormValid(day: day, month: month, year: year);

      expect(result, true);
    });

    test(
        'Given invalid day, month, and year '
        'When isFormValid iscalled '
        'Then it should return false', () {
      final notifier = ValidationInputStateNotifier();

      // TC1: invalid day, valid month and year
      expect(notifier.isFormValid(day: 31, month: 4, year: 2001), false);

      // TC2: valid day, invalid month, and valid year
      expect(notifier.isFormValid(day: 25, month: 31, year: 2021), false);

      // TC3: valid day, valid month, and invalid year
      expect(notifier.isFormValid(day: 23, month: 6, year: 2077), false);

      // TC4: invalid day and month, valid year
      expect(notifier.isFormValid(day: 99, month: -1, year: 2020), false);

      // TC5: valid day, invalid month and year
      expect(notifier.isFormValid(day: 31, month: 2, year: 45111), false);

      // TC6: invalid day, valid month, and invalid year
      expect(notifier.isFormValid(day: -31, month: 5, year: 1111111), false);

      // TC7: all invalid
      expect(notifier.isFormValid(day: 1111, month: 111, year: 2077), false);
    });
  });
}
