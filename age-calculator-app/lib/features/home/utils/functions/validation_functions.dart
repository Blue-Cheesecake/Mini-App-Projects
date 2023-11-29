class ValidationFunctions {
  ValidationFunctions._();

  static bool isMonthValid(int month) {
    return month >= 1 && month <= 12;
  }

  static bool isDayValid({required int day, required int month}) {
    if (day < 1 || day > 31) {
      return false;
    }
    if (month == 2) {
      return day >= 1 && day <= 28;
    }
    if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
      return day >= 1 && day <= 31;
    }
    return day >= 1 && day <= 30;
  }

  static bool isFutureYear(int year) {
    final now = DateTime.now();
    return year > now.year;
  }
}
