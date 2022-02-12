import 'package:flutter/material.dart';

class NavBarCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(193, 43, 42, 42)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0625000, size.height * 0.0500000);
    path0.quadraticBezierTo(size.width * 0.0112500, size.height * 0.0387500,
        size.width * 0.0125000, size.height * 0.2450000);
    path0.quadraticBezierTo(size.width * 0.0125000, size.height * 0.3650000,
        size.width * 0.0125000, size.height * 0.4050000);
    path0.cubicTo(
        size.width * 0.0118750,
        size.height * 0.8062500,
        size.width * 0.0882875,
        size.height * 0.9637500,
        size.width * 0.1243750,
        size.height * 0.9575000);
    path0.cubicTo(
        size.width * 0.3309375,
        size.height * 0.9575000,
        size.width * 0.6696875,
        size.height * 0.9450000,
        size.width * 0.8762500,
        size.height * 0.9450000);
    path0.cubicTo(
        size.width * 0.9018750,
        size.height * 0.9581500,
        size.width * 0.9875000,
        size.height * 0.7969000,
        size.width * 0.9881250,
        size.height * 0.4125000);
    path0.quadraticBezierTo(size.width * 0.9879687, size.height * 0.3706250,
        size.width * 0.9875000, size.height * 0.2450000);
    path0.quadraticBezierTo(size.width * 0.9881250, size.height * 0.0387500,
        size.width * 0.9375000, size.height * 0.0500000);
    path0.cubicTo(
        size.width * 0.7187500,
        size.height * 0.0500000,
        size.width * 0.7187500,
        size.height * 0.0500000,
        size.width * 0.0625000,
        size.height * 0.0500000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
