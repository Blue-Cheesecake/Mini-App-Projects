import 'package:expensesflutter/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

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
          UserTransactions(),
        ],
      ),
    );
  }
}
