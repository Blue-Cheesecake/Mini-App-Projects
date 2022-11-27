import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/homepage.dart';
import 'package:flutter_animations/screens/implicit_animations/align_animation.dart';
import 'package:flutter_animations/screens/implicit_animations/container_animation.dart';
import 'package:flutter_animations/screens/implicit_animations/list_animation.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
      ),
      routes: {
        Homepage.routeName: (_) => const Homepage(),
        AlignAnimation.routeName: (_) => const AlignAnimation(),
        ContainerAnimation.routeName: (_) => const ContainerAnimation(),
        ListAnimation.routeName: (_) => const ListAnimation(),
      },
      initialRoute: Homepage.routeName,
      home: const Homepage(),
    );
  }
}
