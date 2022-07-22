import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your score",
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "$score",
              style: const TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
