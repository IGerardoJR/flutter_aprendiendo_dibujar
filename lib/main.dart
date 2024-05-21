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
  int indice = 1;
  List<CustomPainter> _listaDibujos = [CuadradoPainter(), TrianguloPainter()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: false, title: const Text('Aprendiendo a dibujar')),
        body: Center(
            child: Column(
          children: [
            Container(
              color: Colors.grey.shade400,
              child: CustomPaint(
                painter: _listaDibujos[indice],
                size: Size(500, 500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                dibujarCuadrado(),
                dibujarTriangulo(),
              ],
            )
          ],
        )),
      ),
    );
  }

  Widget dibujarCuadrado() {
    return ElevatedButton(
        onPressed: () => {
              setState(() {
                indice = 0;
              })
            },
        child: Text('Cuadrado'));
  }

  Widget dibujarTriangulo() {
    return ElevatedButton(
        onPressed: () => {
              setState(() {
                indice = 1;
              })
            },
        child: Text('Cuadrado'));
  }
}

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

class TrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;

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
