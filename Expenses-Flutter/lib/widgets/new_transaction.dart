import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key}) : super(key: key);

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
            },
            child: const Text(
              "Add",
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
