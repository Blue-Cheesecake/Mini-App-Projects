import 'package:expensesflutter/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(int) pressedRemove;

  const TransactionsList(
      {Key? key, required this.transactions, required this.pressedRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ?
        //  Empty Transactions
        Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text("Empty Transactions")),
              SizedBox(
                height: 200,
                child: Image.asset(
                  "assets/images/waiting.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        // There are some transactions
        : ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 2)),
                          child: Text(
                            transactions[index].price.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactions[index].title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(transactions[index].getDateStr(),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () => pressedRemove(index),
                      icon: const Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                    )
                  ],
                ),
              );
            },
            itemCount: transactions.length,
          );
  }
}
