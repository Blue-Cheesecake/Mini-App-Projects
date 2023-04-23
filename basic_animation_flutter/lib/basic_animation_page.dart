import 'package:flutter/material.dart';

class BasicAnimationPage extends StatefulWidget {
  const BasicAnimationPage({Key? key}) : super(key: key);

  @override
  State<BasicAnimationPage> createState() => _BasicAnimationPageState();
}

class _BasicAnimationPageState extends State<BasicAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Animation'),
      ),
      body: Container(),
    );
  }
}
