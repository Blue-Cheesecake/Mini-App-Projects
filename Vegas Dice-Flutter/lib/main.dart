import 'package:flutter/material.dart';
import 'package:vegas_dice_flutter/views/index.dart';

void main() => const Main();

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index(),
    );
  }
}
