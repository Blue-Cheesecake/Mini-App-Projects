import 'dart:math';

import 'package:expensesflutter/models/transaction.dart';
import 'package:expensesflutter/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key, required this.listDelegate, required this.delegate})
      : super(key: key);

  final List<Transaction> listDelegate;
  final State<UserTransactions> delegate;

  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Card(
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(label: Text("Title")),
            ),
          ),
        ),
        Card(
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: TextField(
              controller: priceController,
              decoration: const InputDecoration(label: Text("Price")),
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              print(titleController.text);
              print(priceController.text);
              Transaction newTrans = Transaction(
                  Random().nextInt(999999).toString(),
                  titleController.text,
                  double.parse(priceController.text),
                  DateTime.now());
              delegate.setState(() {
                listDelegate.add(newTrans);
              });
            },
            child: const Text(
              "Add",
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
