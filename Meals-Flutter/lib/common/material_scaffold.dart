import 'package:flutter/material.dart';

class MaterialScaffold extends StatelessWidget {
  const MaterialScaffold({Key? key, required this.widget, this.title})
      : super(key: key);

  final Widget widget;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 255, 253, 1),
      appBar: AppBar(
        centerTitle: false,
        elevation: 5,
        title: Text(
          title ?? "Meals",
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "RobotoCondensed",
              fontWeight: FontWeight.w700,
              fontSize: 35),
        ),
      ),
      body: widget,
    );
  }
}
