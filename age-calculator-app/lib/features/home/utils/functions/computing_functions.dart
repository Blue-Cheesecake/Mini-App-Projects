final class ComputingFunctions {
  const ComputingFunctions._();

  static ({int years, int months, int days}) findDifferenceCurrentDate({
    required int day,
    required int month,
    required int year,
  }) {
    DateTime currentDate = DateTime.now();
    DateTime givenDate = DateTime(year, month, day);

    int years = currentDate.year - givenDate.year;
    int months = currentDate.month - givenDate.month;
    int days = currentDate.day - givenDate.day;

    if (days < 0) {
      months--;
      days += DateTime(givenDate.year, givenDate.month + 1, 0).day;
    }

    if (months < 0) {
      years--;
      months += 12;
    }

    return (years: years, months: months, days: days);
  }
}
