import 'package:flutter/material.dart';

class CirculoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    canvas.drawColor(Colors.black, BlendMode.clear);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 150, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
