import 'package:flutter/material.dart';
import 'package:tip_calculator/screens/home/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "SpaceMono"),
      home: Homepage(),
    );
  }
}
