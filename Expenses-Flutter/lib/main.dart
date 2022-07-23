import 'package:flutter/material.dart';

import 'models/transaction.dart';
import 'widgets/transactions_list.dart';

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
  List<Transaction> transactions = [
    Transaction("1", "Nike Shoes 69", 39.99, DateTime.now()),
    Transaction("2", "Puma cal", 23.00, DateTime.now()),
    Transaction("3", "Puma Ones", 109, DateTime.now()),
  ];

  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses"),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: const Text("Chart")),
          ),
          Column(
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
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
          TransactionsList(),
        ],
      ),
    );
  }
}
