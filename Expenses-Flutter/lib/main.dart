import 'dart:math';

import 'package:expensesflutter/widgets/new_transaction.dart';
import 'package:flutter/material.dart';

import './widgets/transactions_list.dart';
import 'models/transaction.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Transaction> _transactions = [
    Transaction("1", "Nike Shoes 69", 39.99, DateTime.now()),
    Transaction("2", "Puma cal", 23.00, DateTime.now()),
    Transaction("3", "Puma Ones", 109, DateTime.now()),
    Transaction("4", "Addidas", 211, DateTime.now())
  ];

  void _addNewTransaction(String titleStr, String priceStr) {
    Transaction newTrans = Transaction(Random().nextInt(999999).toString(),
        titleStr, double.parse(priceStr), DateTime.now());
    setState(() {
      _transactions.add(newTrans);
    });
  }

  void willAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
              child: NewTransaction(pressedAdd: _addNewTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                willAddNewTransaction(context);
              },
              icon: const Icon(Icons.add))
        ],
        title: const Text("Expenses"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          willAddNewTransaction(context);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: const Text("Chart")),
            ),
            TransactionsList(transactions: _transactions),
          ],
        ),
      ),
    );
  }
}
