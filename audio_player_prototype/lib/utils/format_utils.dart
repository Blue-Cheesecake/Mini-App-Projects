String formatTime(Duration d) {
  double totalSec = d.inSeconds.toDouble();
  int totalMin = totalSec.toInt() ~/ 60;
  totalSec -= totalMin * 60;
  String minString = totalMin < 10 ? "0$totalMin" : totalMin.toString();
  String secString = totalSec < 10
      ? "0${totalSec.toInt().toString()}"
      : totalSec.toStringAsFixed(0);
  return "$minString:$secString";
}
