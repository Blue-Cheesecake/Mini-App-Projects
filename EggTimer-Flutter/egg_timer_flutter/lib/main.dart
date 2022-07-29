import 'dart:async';

import 'package:egg_timer_flutter/egg_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Main());

enum EggLevel { soft, medium, hard }

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.deepOrangeAccent),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Timer _timer;

  final Map<EggLevel, double> eggMap = {
    EggLevel.soft: 5.0,
    EggLevel.medium: 10.0,
    EggLevel.hard: 15.0,
  };

  var _isDone = false;
  double _currentStatus = 0.0;

  void _pressedEggTimer(double duration) {
    _currentStatus = 0;
    int start = duration.toInt();
    var eachStep = 1.0 / duration;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
            _currentStatus += eachStep;
          });
        }
      },
    );

    if (start == 0) {
      // play sound

    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _currentStatus = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "How do you like your eggs?",
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    EggButton(
                        imageAsset: "assets/images/soft_egg@3x.png",
                        handler: _pressedEggTimer,
                        duration: eggMap[EggLevel.soft]!),
                    const Spacer(),
                    EggButton(
                        imageAsset: "assets/images/medium_egg@3x.png",
                        handler: _pressedEggTimer,
                        duration: eggMap[EggLevel.medium]!),
                    const Spacer(),
                    EggButton(
                        imageAsset: "assets/images/hard_egg@3x.png",
                        handler: _pressedEggTimer,
                        duration: eggMap[EggLevel.hard]!),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                LinearProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  value: _currentStatus,
                  semanticsLabel: "Progress bar",
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
