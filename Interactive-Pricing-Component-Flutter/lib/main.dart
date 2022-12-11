import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Manrope"),
      routes: {
        Homepage.routeName: (context) => const Homepage(),
      },
      initialRoute: Homepage.routeName,
    );
  }
}
