import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class BrokenLinePainter extends CustomPainter {
  final double lineThickness;

  BrokenLinePainter(this.lineThickness);
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()
      ..color = MyStyle.fadedBlackish
      ..strokeWidth = lineThickness;
    double breakBetweenLinesRatio = 0.045;
    double fractureLength = 0.035;
    Offset start = Offset(0, size.height * 0.5);
    Offset end = Offset(size.width * fractureLength * 0.5, size.height * 0.5);
    while (end.dx < size.width) {
      canvas.drawLine(start, end, brush);
      start = Offset(end.dx + size.width * breakBetweenLinesRatio, start.dy);
      end = Offset(start.dx + size.width * fractureLength, end.dy);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
