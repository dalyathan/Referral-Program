import 'package:flutter/material.dart';
import 'dart:math';
import '../../style.dart';

class CoinsIconPainter extends CustomPainter {
  late double gapBetweenCoinSRatio;
  late double verticalGapBetweenCoinsRatio;
  late double coinHeightRatio;
  late double coinWidth;
  late double smallerCoinSetHeightRatio;
  late Canvas canvas;
  late Paint brush;
  late Size size;

  @override
  void paint(Canvas canvas, Size size) {
    this.size = size;
    this.canvas = canvas;
    gapBetweenCoinSRatio = 0.1;
    verticalGapBetweenCoinsRatio = 0.035;
    coinHeightRatio = 0.15;
    coinWidth = size.width * (1 - gapBetweenCoinSRatio) * 0.5;
    smallerCoinSetHeightRatio = 0.45;
    brush = Paint()
      ..color = MyStyle.greenish
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    drawCoinSet(Offset(
        size.width - coinWidth * 0.5, size.height * coinHeightRatio * 0.5));
    drawCoinSet(
        Offset(coinWidth * 0.5, size.height * (smallerCoinSetHeightRatio)));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  drawSmallerCoinSet() {}

  drawCoinSet(Offset topCoinCenter) {
    canvas.drawOval(
        Rect.fromCenter(
            center: topCoinCenter,
            width: coinWidth,
            height: size.height * coinHeightRatio),
        brush);
    while (topCoinCenter.dy < size.height * (1 - coinHeightRatio * 0.5)) {
      topCoinCenter = Offset(
          topCoinCenter.dx,
          topCoinCenter.dy +
              size.height * (coinHeightRatio + verticalGapBetweenCoinsRatio));
      canvas.drawArc(
          Rect.fromCenter(
              center: topCoinCenter,
              width: coinWidth,
              height: size.height * coinHeightRatio),
          -pi / 6,
          4 * pi / 3,
          false,
          brush);
    }
  }
}
