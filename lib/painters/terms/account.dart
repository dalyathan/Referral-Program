import 'package:flutter/material.dart';
import 'dart:math';

import '../../style.dart';

class AccountIconPainter extends CustomPainter {
  late double borderRadiusRatio;
  late double borderRadius;
  late Canvas canvas;
  late Size size;
  late Paint brush;
  @override
  void paint(Canvas canvas, Size size) {
    this.canvas = canvas;
    this.size = size;
    brush = Paint()
      ..color = MyStyle.greenish
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
    borderRadiusRatio = 0.1;
    borderRadius = size.height * borderRadiusRatio;
    drawShadow();
    drawActual();
  }

  drawActual() {
    double paddingRatio = 0.1;
    double padding = size.height * paddingRatio;
    Offset center =
        Offset(size.width * 0.5 - padding, size.height * 0.5 + padding);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: center,
                width: size.width - padding - borderRadius,
                height: size.height - padding - borderRadius),
            Radius.circular(borderRadius)),
        brush);
  }

  drawShadow() {
    double shadowWidthRatio = 0.6;
    double shadowHeightRatio = 0.2;
    Offset shadowBorderCurveCenter =
        Offset(size.width - borderRadius, borderRadius);
    canvas.drawArc(
        Rect.fromCircle(center: shadowBorderCurveCenter, radius: borderRadius),
        0,
        -pi / 2,
        false,
        brush);
    canvas.drawLine(
        Offset(shadowBorderCurveCenter.dx - size.width * shadowWidthRatio, 0),
        Offset(shadowBorderCurveCenter.dx, 0),
        brush);
    canvas.drawLine(
        Offset(size.width, borderRadius),
        Offset(size.width, borderRadius + size.height * shadowHeightRatio),
        brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
