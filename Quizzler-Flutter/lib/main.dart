import 'package:flutter/material.dart';
import 'package:quizzler_flutter/views/homepage.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(37, 44, 74, 1),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color.fromRGBO(37, 44, 74, 0.5)),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                color: Color.fromRGBO(37, 44, 74, 1),
                fontWeight: FontWeight.w500,
                fontSize: 25),
            titleMedium: TextStyle(
              color: Colors.blueAccent,
              fontSize: 18,
            ),
          )),
      home: const Homepage(),
    );
  }
}
