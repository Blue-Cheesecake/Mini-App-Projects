import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final double price;
  final DateTime date;

  Transaction(this.id, this.title, this.price, this.date);

  String getDateStr() => DateFormat().format(date);
}
