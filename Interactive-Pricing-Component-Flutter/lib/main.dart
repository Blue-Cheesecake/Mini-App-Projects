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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Manrope",
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: ComponentColor.textCTABackground,
          ),
          headline2: TextStyle(
            height: 1.8,
            fontSize: 16,
            color: ComponentColor.text,
          ),
          headline3: TextStyle(
            letterSpacing: 2,
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: ComponentColor.text,
          ),
          bodyText1: TextStyle(
            fontSize: 14.5,
            letterSpacing: 0.8,
            fontWeight: FontWeight.w600,
            color: ComponentColor.text,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
