import 'package:flutter/material.dart';

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
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Tip Amount",
                style: Theme.of(context).textTheme.headline2,
              ),
              subtitle: const Text("/ person"),
              trailing: Text("\$${tipAmount.toStringAsFixed(2)}"),
            ),
            ListTile(
              title: Text(
                "Total",
                style: Theme.of(context).textTheme.headline2,
              ),
              subtitle: const Text("/ person"),
              trailing: Text("\$${total.toStringAsFixed(2)}"),
            ),
            ElevatedButton(onPressed: resetHandler, child: const Text("RESET"))
          ],
        ),
      ),
    );
  }
}
