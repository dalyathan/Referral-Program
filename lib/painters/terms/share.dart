import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/util/math/vector.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ShareIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sweepAngle = pi / 3.5;
    double innerRadiusRatio = 0.3;
    double smallerCircleStartAngle = 5.5 * pi / 3;
    double smallerCircleSweepAngle = -4.25 * pi / 3;
    double smallerCircleRadius = size.height * ((0.5 - innerRadiusRatio) * 0.5);
    Offset topCenter = Offset(size.width * 0.5, smallerCircleRadius);
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
      );
    canvas.drawPath(curvedPath, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
