import 'package:flutter/material.dart';
import 'package:news_homepage/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      routes: {
        Homepage.routeName: (context) => const Homepage(),
      },
      initialRoute: Homepage.routeName,
    );
  }
}
