import 'package:dribbble_mahmudul_hasan_manik_referral_program/painters/refer_and_earn/single_bar.dart';
import 'package:flutter/material.dart';

class SingleBarContainer extends StatelessWidget {
  final String yValue;
  final double width;
  final double height;
  const SingleBarContainer(
      {Key? key,
      required this.yValue,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: yValue,
      preferBelow: false,
      triggerMode: TooltipTriggerMode.tap,
      verticalOffset: height * 0.55,
      child: CustomPaint(
        size: Size(width, height),
        painter: SingleBarPainter(),
      ),
    );
  }
}
