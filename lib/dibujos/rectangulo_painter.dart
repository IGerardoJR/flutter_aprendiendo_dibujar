import 'package:flutter/material.dart';

class RectanguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;

    canvas.drawLine(Offset(60, 20), Offset(size.width - 60, 20), paint); // -
    canvas.drawLine(Offset(60, 20), Offset(60, size.height - 40), paint); // |
    canvas.drawLine(Offset(60, size.height - 40),
        Offset(size.width - 60, size.height - 40), paint);
    canvas.drawLine(Offset(size.width - 60, size.height - 40),
        Offset(size.width - 60, 20), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
