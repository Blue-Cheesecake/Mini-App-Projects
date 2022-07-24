import 'package:expensesflutter/models/transaction.dart';
import 'package:expensesflutter/widgets/new_transaction.dart';
import 'package:expensesflutter/widgets/transactions_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> _transactions = [
    Transaction("1", "Nike Shoes 69", 39.99, DateTime.now()),
    Transaction("2", "Puma cal", 23.00, DateTime.now()),
    Transaction("3", "Puma Ones", 109, DateTime.now()),
    Transaction("4", "Addidas", 211, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          listDelegate: _transactions,
          delegate: this,
        ),
        TransactionsList(
          transactions: _transactions,
        ),
      ],
    );
  }
}
