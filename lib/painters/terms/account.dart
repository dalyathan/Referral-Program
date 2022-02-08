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
    double paddingRatio = 0.075;
    double padding = size.height * paddingRatio;
    Offset center =
        Offset(size.width * 0.5 - padding, size.height * 0.5 + padding);
    double width = size.width - padding - borderRadius;
    double height = size.height - padding - borderRadius;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(center: center, width: width, height: height),
            Radius.circular(borderRadius)),
        brush);
    canvas.drawLine(Offset(0, size.height - 3 * height / 4),
        Offset(width, size.height - 3 * height / 4), brush);
    double smallerDashesOffset = 0.2;
    double largerDashWidthRatio = 0.15;
    double middleDashWidthRatio = 0.1;
    double smallerDashWidthRatio = 0.1;
    Offset A =
        Offset(size.width * smallerDashesOffset, size.height - height * 0.5);
    Offset B =
        Offset(size.width * (smallerDashesOffset + largerDashWidthRatio), A.dy);
    canvas.drawLine(A, B, brush);
    Offset C = Offset(B.dx + size.width * smallerDashesOffset * 0.5, A.dy);
    Offset D = Offset(C.dx + size.width * middleDashWidthRatio, A.dy);
    canvas.drawLine(C, D, brush);
    Offset E = Offset(A.dx, A.dy + height / 4);
    Offset F = Offset(E.dx + size.width * smallerDashWidthRatio, E.dy);
    canvas.drawLine(E, F, brush);
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
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
