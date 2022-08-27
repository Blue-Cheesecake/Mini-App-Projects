import 'package:flutter/material.dart';

class StartTrialButton extends StatelessWidget {
  const StartTrialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {}, child: const Text("Start my trial"));
  }
}
