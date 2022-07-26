import 'package:expensesflutter/models/transaction.dart';
import 'package:expensesflutter/widgets/bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Pass the transactions for showing the recent chart
class Chart extends StatelessWidget {
  final List<Transaction> transactions;

  const Chart({Key? key, required this.transactions}) : super(key: key);

  List<Map<String, Object>> get groupedValues {
    List<Map<String, Object>> genList = List.generate(7, (index) {
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

    return genList;
  }

  double maxSpending() {
    double s = 0.0;
    for (var item in groupedValues) {
      s += (item["amount"] as double);
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedValues.map((e) {
              var day = e["day"].toString();
              var amount = e["amount"].toString();
              return Flexible(
                fit: FlexFit.loose,
                child: BarChart(
                  label: day,
                  amount: double.parse(amount),
                  spendingPctOfTotal: maxSpending() == 0
                      ? 0
                      : (e["amount"] as double) / maxSpending(),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
