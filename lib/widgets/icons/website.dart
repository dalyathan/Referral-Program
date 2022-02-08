import 'package:dribbble_mahmudul_hasan_manik_referral_program/painters/terms/website.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';
import 'package:flutter/material.dart';

class WebsiteIcon extends SuperTypeIcon {
  WebsiteIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1;
    double width = height * aspectRatio;
    return CustomPaint(
      painter: WebsiteIconPainter(),
      size: Size(width, height),
    );
  }
}
