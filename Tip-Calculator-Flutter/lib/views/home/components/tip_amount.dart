import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/constants.dart';

class TipAmountCard extends StatelessWidget {
  final double tipAmount;
  final double total;
  final void Function() resetHandler;

  const TipAmountCard(
      {Key? key,
      required this.tipAmount,
      required this.total,
      required this.resetHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: ThemeColor.veryDarkCyan,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 10),
        decoration: BoxDecoration(
            color: ThemeColor.veryDarkCyan,
            borderRadius: const BorderRadius.all(Radius.circular(13))),
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Tip Amount",
                style: Theme.of(context).textTheme.headline2,
              ),
              subtitle: Text(
                "/ person",
                style: Theme.of(context).textTheme.headline3,
              ),
              trailing: Text(
                "\$${tipAmount.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ListTile(
              title: Text(
                "Total",
                style: Theme.of(context).textTheme.headline2,
              ),
              subtitle: Text(
                "/ person",
                style: Theme.of(context).textTheme.headline3,
              ),
              trailing: Text(
                "\$${total.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(vertical: 9)),
                    backgroundColor:
                        MaterialStateProperty.all(ThemeColor.strongCyan),
                  ),
                  onPressed: resetHandler,
                  child: Text(
                    "RESET",
                    style: TextStyle(
                      color: ThemeColor.veryDarkCyan,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
