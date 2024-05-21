import 'package:flutter/material.dart';

class CuadradoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    // canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);

    // Donde empieza \ Donde termina
    canvas.drawLine(Offset(20, 50), Offset(size.width - 20, 50), paint); // -
    canvas.drawLine(Offset(20, 50), Offset(20, size.height - 50), paint); // |
    canvas.drawLine(Offset(20, size.height - 50),
        Offset(size.width - 20, size.height - 50), paint); // _
    canvas.drawLine(Offset(size.width - 20, 50),
        Offset(size.width - 20, size.height - 50), paint); // |
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
