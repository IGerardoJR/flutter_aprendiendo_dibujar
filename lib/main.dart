import 'package:flutter/material.dart';
import 'package:aprendiendo_dibujar/dibujos/cuadrado_painter.dart';
import 'package:aprendiendo_dibujar/dibujos/triangulo_painter.dart';
import 'package:aprendiendo_dibujar/dibujos/rectangulo_painter.dart';
import 'package:aprendiendo_dibujar/dibujos/circulo_painter.dart';

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
  List<CustomPainter> _listaDibujos = [
    CuadradoPainter(),
    TrianguloPainter(),
    RectanguloPainter(),
    CirculoPainter()
  ];
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
                dibujarRectangulo(),
                dibujarCirculo(),
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
        child: Text('Triangulo'));
  }

  Widget dibujarRectangulo() {
    return ElevatedButton(
        onPressed: () => {
              setState(() {
                indice = 2;
              })
            },
        child: Text('Rectangulo'));
  }

  Widget dibujarCirculo() {
    return ElevatedButton(
        onPressed: () => {
              setState(() {
                indice = 3;
              })
            },
        child: Text('Circulo'));
  }
}
