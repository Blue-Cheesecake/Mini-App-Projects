import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 2.5
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    canvas.drawRect(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: 70,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
