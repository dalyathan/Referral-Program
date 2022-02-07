import 'package:flutter/material.dart';

import '../../style.dart';

class CoinsIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double gapBetweenCoinStandRatio = 0.15;
    double verticalGapBetweenCoinsratio = 0.075;
    double coinWidth = size.width * (1 - gapBetweenCoinStandRatio) * 0.5;
    Paint brush = Paint()
      ..color = MyStyle.greenish
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
