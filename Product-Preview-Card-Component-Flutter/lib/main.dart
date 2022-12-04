import 'package:flutter/material.dart';
import 'package:product_preview_card_component_flutter/screens/home/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Preview Card',
      theme: ThemeData(fontFamily: "Montserrat"),
      home: const Homepage(),
    );
  }
}
