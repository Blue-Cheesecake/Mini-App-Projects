import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final void Function(String, String, DateTime) pressedAdd;

  const NewTransaction({
    Key? key,
    required this.pressedAdd,
  }) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  DateTime? selectedDate;

  void _selectDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      setState(() {
        selectedDate = pickedDate!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.text,
              controller: titleController,
              decoration: const InputDecoration(label: Text("Title")),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: const InputDecoration(label: Text("Price")),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate == null
                      ? "No Date is chosen"
                      : "Picked Date : ${DateFormat.yMd().format(selectedDate!)}",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextButton(
                    onPressed: _selectDate,
                    child: Text(
                      "Choose Date",
                      style: Theme.of(context).textTheme.bodyText2,
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
                onPressed: () {
                  widget.pressedAdd(titleController.text, priceController.text,
                      selectedDate!);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
