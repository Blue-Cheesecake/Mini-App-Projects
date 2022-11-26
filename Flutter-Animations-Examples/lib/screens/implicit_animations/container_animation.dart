import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/homepage.dart';

class ContainerAnimation extends StatefulWidget {
  static const routeName = "${Homepage.routeName}/container_animation";

  const ContainerAnimation({Key? key}) : super(key: key);

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  var _originBigger = false;

  Widget _original() {
    return Column(
      children: [
        Text("Container", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 15),
        Container(
          width: _originBigger ? 150 : 100,
          height: _originBigger ? 200 : 120,
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(Icons.android),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => setState(() {
            _originBigger = !_originBigger;
          }),
          child: Text(_originBigger ? "SMALLER" : "BIGGER"),
        ),
      ],
    );
  }

  var _animationBigger = false;
  Widget _animation() {
    return Column(
      children: [
        Text(
          "Animated",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        ///////////
        AnimatedContainer(
          width: _animationBigger ? 150 : 100,
          height: _animationBigger ? 200 : 120,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          duration: const Duration(milliseconds: 160),
          child: const Icon(Icons.apple),
        ),
        ///////////
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => setState(() {
            _animationBigger = !_animationBigger;
          }),
          child: Text(_animationBigger ? "SMALLER" : "BIGGER"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Container Animation',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _original(),
              _animation(),
            ],
          ),
        ),
      ),
    );
  }
}
