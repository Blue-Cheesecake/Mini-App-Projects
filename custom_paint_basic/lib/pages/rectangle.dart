import 'package:flutter/material.dart';

import 'painter/painter.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RectanglePainter(),
    );
  }
}
