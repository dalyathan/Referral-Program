import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../util/math/path.dart';

class ShareIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sweepAngle = pi / 3;
    double innerRadiusRatio = 0.3;
    double smallerCircleStartAngle = 5.5 * pi / 3;
    double smallerCircleSweepAngle = -4.25 * pi / 3;
    double smallerCircleRadius = size.height * ((0.5 - innerRadiusRatio) * 0.5);
    Offset topCenter = Offset(size.width * 0.5, smallerCircleRadius);
    PathVectorUtil vectorUtil = PathVectorUtil(size);
    double screwSweepAngle = pi / 1.5;
    Paint brush = Paint()
      ..color = MyStyle.greenish
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
    Path curvedPath = Path()
      ..addArc(
        Rect.fromCircle(center: topCenter, radius: smallerCircleRadius),
        smallerCircleStartAngle,
        smallerCircleSweepAngle,
      )
      ..addArc(
          Rect.fromCircle(
              center: Offset(size.width * 0.5, size.height * 0.5),
              radius: size.width * (0.5 + innerRadiusRatio) * 0.5),
          3.15 * pi / 3,
          sweepAngle);
    canvas.drawPath(curvedPath, brush);
    canvas.drawPath(vectorUtil.rotatePath(curvedPath, screwSweepAngle), brush);
    canvas.drawPath(
        vectorUtil.rotatePath(curvedPath, 2 * screwSweepAngle), brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
