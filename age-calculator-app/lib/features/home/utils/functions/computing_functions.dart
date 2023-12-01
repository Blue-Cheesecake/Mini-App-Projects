final class ComputingFunctions {
  const ComputingFunctions._();

  static DateTime findDifferenceCurrentDate({required int day, required int month, required int year}) {
    DateTime currentDate = DateTime.now();
    DateTime givenDate = DateTime(year, month, day);
    Duration difference = currentDate.difference(givenDate);
    return DateTime.fromMillisecondsSinceEpoch(difference.inMilliseconds, isUtc: true);
  }
}
