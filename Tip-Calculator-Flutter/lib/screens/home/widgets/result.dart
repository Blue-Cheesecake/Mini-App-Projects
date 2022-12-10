import 'package:flutter/material.dart';
import 'package:tip_calculator/constants.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key,
      required this.bill,
      required this.tipPercentage,
      required this.numPeople,
      required this.callback})
      : super(key: key);

  final double bill;
  final int tipPercentage;
  final int numPeople;
  final Function callback;

  Widget _display(String titleTxt, String subtitleTxt, String trailingTxt) {
    return ListTile(
      title: Text(
        titleTxt,
        style: TextStyle(
          fontSize: 17,
          color: KColor.white,
        ),
      ),
      subtitle: Text(
        subtitleTxt,
        style: TextStyle(
          fontSize: 14,
          color: KColor.darkGrayishCyan,
        ),
      ),
      trailing: Text(
        "\$$trailingTxt",
        style: TextStyle(
          fontSize: 34,
          color: KColor.strongCyan,
        ),
      ),
    );
  }

  Widget _resetButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: KColor.strongCyan,
        ),
        onPressed: () {
          callback();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "RESET",
            style: TextStyle(
              fontSize: 24,
              color: KColor.veryDarkCyan,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double tipAmount =
        bill * double.parse(tipPercentage.toString()) / 100;
    final double finalCharge = bill + tipAmount;
    final double eachCost = finalCharge / numPeople;

    return Container(
      decoration: BoxDecoration(
        color: KColor.veryDarkCyan,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          _display("Tip Amount", "/ person",
              (tipAmount / numPeople).toStringAsFixed(2)),
          _display("Total", "/ person", eachCost.toStringAsFixed(2)),
          const SizedBox(height: 20),
          _resetButton(),
        ],
      ),
    );
  }
}
