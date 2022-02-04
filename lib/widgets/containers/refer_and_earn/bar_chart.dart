import 'dart:math';

import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/graph_backdrop.dart';
import 'package:flutter/material.dart';

class BarChartContainer extends StatelessWidget {
  final double width;
  final double height;
  final Map<String, String> points;
  late List<String> yAxisPoints;
  BarChartContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.points})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    yAxisPoints = getYaxisPoints();
    double xAxisHeightRatio = 0.15;
    double xAxisWidthRatio = 0.85;
    return Stack(
      children: [
        GraphBackdrop(
          points: points,
          height: height,
          width: width,
          yAxisPoints: yAxisPoints,
          xAxisHeightRatio: xAxisHeightRatio,
          xAxisWidthRatio: xAxisWidthRatio,
        )
      ],
    );
  }

  List<String> getYaxisPoints({double divideBy = 100}) {
    List<double> ys = points.values.map((e) => double.parse(e)).toList();
    double minY = ys.reduce(min);
    double maxY = ys.reduce(max);
    int length = (maxY / divideBy).ceil();
    return List<String>.generate(
        length, (index) => '${(index + 1) * divideBy}');
  }
}
