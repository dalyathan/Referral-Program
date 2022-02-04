import 'package:flutter/material.dart';

import '../../style.dart';

class SingleBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double greenBarWidthRatio = 0.125;
    Paint brush = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * greenBarWidthRatio
      ..color = MyStyle.greenish;
    Offset bottom =
        Offset(size.width * 0.5, size.width * greenBarWidthRatio * 0.5);
    Offset top = Offset(bottom.dx, size.height);
    canvas.drawLine(bottom, top, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
