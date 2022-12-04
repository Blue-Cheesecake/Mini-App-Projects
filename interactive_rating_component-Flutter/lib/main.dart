import 'package:flutter/material.dart';
import 'package:interactive_rating_component/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Overpass",
      ),
      home: const Homepage(),
    );
  }
}
