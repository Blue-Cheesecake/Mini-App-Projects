import 'package:basic_animation_flutter/basic_animation_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main()  );

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BasicAnimationPage(),
    );
  }
}
