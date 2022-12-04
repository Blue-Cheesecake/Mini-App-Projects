import 'package:flutter/material.dart';
import 'package:interactive_rating_component/homepage.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Overpass",
      ),
      home: const Homepage(),
    );
  }
}
