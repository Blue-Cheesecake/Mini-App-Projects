import 'package:custom_paint_basic/pages/painter/circle_painter.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(),
    );
  }
}
