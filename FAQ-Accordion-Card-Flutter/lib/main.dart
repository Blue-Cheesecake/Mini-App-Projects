import 'package:faq_accordion_card/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "KumbhSans",
      ),
      home: const Homepage(),
    );
  }
}
