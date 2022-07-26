import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final String label;
  final double amount;
  final double spendingPctOfTotal;

  const BarChart(
      {Key? key,
      required this.label,
      required this.amount,
      required this.spendingPctOfTotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 10,
          height: 60,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                  color: const Color.fromRGBO(220, 220, 220, 0.5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("\$ ${amount.toStringAsFixed(1)}"))
      ],
    );
  }
}
