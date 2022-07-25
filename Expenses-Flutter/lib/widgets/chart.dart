import 'package:expensesflutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Pass the transactions for showing the recent chart
class Chart extends StatelessWidget {
  final List<Transaction> transactions;

  const Chart({Key? key, required this.transactions}) : super(key: key);

  List<Map<String, Object>> get groupedValues {
    return List.generate(7, (index) {
      // we subtract the day by index since index represent each 7 days.
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var total = 0.0;

      for (var i = 0; i < transactions.length; i++) {
        Transaction t = transactions[i];
        if (t.date.day == weekDay.day &&
            t.date.month == weekDay.month &&
            t.date.year == weekDay.year) {
          total += t.price;
        }
      }

      return {
        "day": DateFormat.E().format(weekDay),
        "amount": total,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: groupedValues.map((e) {
            var day = e["day"].toString();
            var amount = e["amount"].toString();
            return Text("Day: $day, Amount: $amount");
          }).toList(),
        ),
      ),
    );
  }
}
