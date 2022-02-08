import 'package:dribbble_mahmudul_hasan_manik_referral_program/painters/terms/account.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';
import 'package:flutter/material.dart';

class AccountIcon extends SuperTypeIcon {
  AccountIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1.33;
    double width = height * aspectRatio;
    return Container(
      color: Colors.amber,
      child: CustomPaint(
        painter: AccountIconPainter(),
        size: Size(width, height),
      ),
    );
  }
}
