import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction({
    Key? key,
    required this.pressedAdd,
  }) : super(key: key);

  final void Function(String, String) pressedAdd;

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.text,
              controller: titleController,
              decoration: const InputDecoration(label: Text("Title")),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: const InputDecoration(label: Text("Price")),
            ),
          ),
          TextButton(
              onPressed: () {
                widget.pressedAdd(titleController.text, priceController.text);
                Navigator.pop(context);
              },
              child: const Text(
                "Add",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
