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
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              title: const Text("Tip Amount"),
              subtitle: const Text("/ person"),
              trailing: Text("\$$tipAmount"),
            ),
            ListTile(
              title: const Text("Total"),
              subtitle: const Text("/ person"),
              trailing: Text("\$$total"),
            ),
            ElevatedButton(onPressed: resetHandler, child: const Text("RESET"))
          ],
        ),
      ),
    );
  }
}
