import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/homepage.dart';

class AlignAnimation extends StatefulWidget {
  const AlignAnimation({Key? key}) : super(key: key);

  static const routeName = "${Homepage.routeName}/align_animation";

  @override
  State<AlignAnimation> createState() => _AlignAnimationState();
}

class _AlignAnimationState extends State<AlignAnimation> {
  Widget _original() {
    return Align();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Align Animation',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
