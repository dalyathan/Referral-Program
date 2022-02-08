import 'package:flutter/material.dart';
import 'dart:math';

import '../../style.dart';

class WebsiteIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()
      ..color = MyStyle.greenish
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
    double innerRadiusRatio = 0.5;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width * 0.5, size.height * 0.5),
            radius: size.width * 0.5 * innerRadiusRatio),
        -pi / 8,
        -4.5 * pi / 3,
        false,
        brush);
    Offset A = Offset(size.width * 0.5 * (1 + innerRadiusRatio),
        size.height * 0.5 * innerRadiusRatio * 1.2);
    Offset B = Offset(A.dx, size.height * (1 - 0.5 * innerRadiusRatio) * 0.8);
    Offset C = Offset(size.width * (1 - 0.5 * innerRadiusRatio * 0.5), B.dy);
    canvas.drawLine(A, B, brush);
    canvas.drawArc(
        Rect.fromCircle(
            center: C, radius: size.width * 0.5 * innerRadiusRatio * 0.5),
        0,
        pi,
        false,
        brush);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width * 0.5, size.height * 0.5),
            radius: size.width * 0.5),
        pi / 8,
        -5.25 * pi / 3,
        false,
        brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
