import 'package:expensesflutter/managers/transactionsManager.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({Key? key}) : super(key: key);

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  TransactionManager transactionManager = TransactionManager();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionManager.getTransactions.map((e) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                child: Text(
                  e.price.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(e.getDateStr(),
                      style: const TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
