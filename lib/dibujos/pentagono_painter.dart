import 'package:flutter/material.dart';

class PentagonoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint Paint paint = Paint();
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    canvas.drawColor(Colors.black, BlendMode.clear);

    canvas.drawLine(
        Offset(100, size.height - 100), Offset(20, 100), paint); // _
    canvas.drawLine(Offset(100, size.height - 100),
        Offset(size.width - 140, size.height - 100), paint);

    canvas.drawLine(Offset(20, 100), Offset(size.width / 2 - 10, 20), paint);
    canvas.drawLine(Offset(size.width - 140, size.height - 100),
        Offset(size.width - 60, 100), paint);
    canvas.drawLine(
        Offset(size.width - 60, 100), Offset(size.width / 2 - 10, 20), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
