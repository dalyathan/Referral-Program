import 'package:dribbble_mahmudul_hasan_manik_referral_program/painters/terms/coins.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';
import 'package:flutter/material.dart';

class CoinsIcon extends SuperTypeIcon {
  CoinsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.9;
    double width = height * aspectRatio;
    return CustomPaint(
      painter: CoinsIconPainter(),
      size: Size(width, height),
    );
  }
}
