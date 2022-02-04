import 'dart:math';

import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/bar_graph_axes.dart';
import 'package:flutter/material.dart';

import 'bars.dart';

class BarGraphContainer extends StatelessWidget {
  final double width;
  final double height;
  final Map<String, String> points;
  late List<String> yAxisPoints;
  BarGraphContainer(
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
    double topYPointOffsetRatio = (1 / (yAxisPoints.length + 1)) * 0.5;
    double lineThickness = 1;
    return Stack(
      children: [
        BarGraphAxesContainer(
          points: points,
          height: height,
          width: width,
          yAxisPoints: yAxisPoints,
          xAxisHeightRatio: xAxisHeightRatio,
          xAxisWidthRatio: xAxisWidthRatio,
          lineThickness: lineThickness,
        ),
        Positioned(
          top: height * topYPointOffsetRatio - lineThickness * 0.5,
          left: width * (1 - xAxisWidthRatio),
          child: BarsContainer(
            height: height * (1 - xAxisHeightRatio - 2 * topYPointOffsetRatio) +
                lineThickness,
            width: width * xAxisWidthRatio,
            yValues: List.from(points.values),
          ),
        )
      ],
    );
  }

  List<String> getYaxisPoints({double divideBy = 100}) {
    List<double> ys = points.values.map((e) => double.parse(e)).toList();
    double maxY = ys.reduce(max);
    int length = (maxY / divideBy).ceil();
    return List<String>.generate(
        length, (index) => '${(index + 1) * divideBy}');
  }
}
