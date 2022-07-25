import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({
    Key? key,
    required this.pressedAdd,
  }) : super(key: key);

  final void Function(String, String) pressedAdd;

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
              keyboardType: TextInputType.text,
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
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: const InputDecoration(label: Text("Price")),
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              pressedAdd(titleController.text, priceController.text);
            },
            child: const Text(
              "Add",
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
