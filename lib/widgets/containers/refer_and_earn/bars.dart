import 'dart:math';

import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/single_bar.dart';
import 'package:flutter/material.dart';

class BarsContainer extends StatelessWidget {
  final double height;
  final double width;
  final List<String> yValues;
  const BarsContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.yValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double singleBarWidth = width / yValues.length;
    double maxValue = yValues.map((e) => double.parse(e)).toList().reduce(max);
    return Container(
      height: height,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: yValues
            .map((e) => SingleBarContainer(
                yValue: e,
                width: singleBarWidth,
                height: height * (double.parse(e) / maxValue)))
            .toList(),
      ),
    );
  }
}
