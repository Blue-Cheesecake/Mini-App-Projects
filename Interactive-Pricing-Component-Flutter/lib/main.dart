import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/screens/home.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Manrope",
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: ComponentColor.textCTABackground
          ),
          headline2: TextStyle(
            fontSize: 16,
              color: ComponentColor.text
          )
        )
      ),
      home: Home(),
    );
  }
}
