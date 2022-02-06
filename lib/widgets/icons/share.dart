import 'package:dribbble_mahmudul_hasan_manik_referral_program/painters/refer_and_earn/share.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';
import 'package:flutter/material.dart';

class ShareIcon extends SuperTypeIcon {
  ShareIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1;
    double width = height * aspectRatio;
    return CustomPaint(
      painter: ShareIconPainter(),
      size: Size(width, height),
    );
  }
}
