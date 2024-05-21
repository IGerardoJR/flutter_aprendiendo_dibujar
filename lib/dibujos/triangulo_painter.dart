import 'package:flutter/material.dart';

class TrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    canvas.drawColor(Colors.black, BlendMode.clear);

    // Inicio(x,y) | Fin(x,y)
    canvas.drawLine(
        Offset(size.width / 2, 20), Offset(20, size.height - 100), paint);

    canvas.drawLine(
        Offset(20, size.height - 100), //  /
        Offset(size.width - 20, size.height - 100),
        paint); // _

    canvas.drawLine(Offset(size.width - 20, size.height - 100),
        Offset(size.width / 2, 20), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
