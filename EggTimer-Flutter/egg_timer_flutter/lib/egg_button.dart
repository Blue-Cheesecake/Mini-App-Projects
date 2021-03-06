import 'package:flutter/material.dart';

class EggButton extends StatefulWidget {
  final String imageAsset;
  final void Function(double) handler;
  final double duration;

  const EggButton(
      {Key? key,
      required this.imageAsset,
      required this.handler,
      required this.duration})
      : super(key: key);

  @override
  State<EggButton> createState() => _EggButtonState();
}

class _EggButtonState extends State<EggButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          widget.handler(widget.duration);
        },
        child: SizedBox(height: 120, child: Image.asset(widget.imageAsset)));
  }
}
