import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: DibujarApp(),
  ));
}

class DibujarApp extends StatefulWidget {
  const DibujarApp({super.key});

  @override
  State<DibujarApp> createState() => _DibujarAppState();
}

class _DibujarAppState extends State<DibujarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: false, title: const Text('Aprendiendo a dibujar')),
        body: Center(
            child: Container(
          color: Colors.grey.shade400,
          child: CustomPaint(
            painter: MasterPainter(),
            size: Size(300, 450),
          ),
        )),
      ),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    // canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);

    // Donde empieza \ Donde termina
    canvas.drawLine(
        Offset(size.width, size.height / 2), Offset(size.width / 2, 60), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
