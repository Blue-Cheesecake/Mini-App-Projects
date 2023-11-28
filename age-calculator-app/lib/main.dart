import 'package:age_calculator/config/config.dart';
import 'package:flutter/material.dart';

import 'package:age_calculator/features/home/homepage.dart';

void main() {
  runApp(const AppWD());
}

class AppWD extends StatelessWidget {
  const AppWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ACATheme.getThemeData(),
      home: const Homepage(),
    );
  }
}
