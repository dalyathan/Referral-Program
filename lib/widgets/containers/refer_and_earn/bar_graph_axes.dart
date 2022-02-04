import '/painters/refer_and_earn/broken_lines.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class BarGraphAxesContainer extends StatelessWidget {
  final Map<String, String> points;
  final List<String> yAxisPoints;
  final double width;
  final double height;
  final double xAxisHeightRatio;
  final double xAxisWidthRatio;
  final double lineThickness;
  const BarGraphAxesContainer(
      {Key? key,
      required this.points,
      required this.width,
      required this.height,
      required this.yAxisPoints,
      required this.xAxisHeightRatio,
      required this.xAxisWidthRatio,
      required this.lineThickness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double textWidthRatio = 0.1;
    double rowHeightRatio = (1 / (yAxisPoints.length + 1));
    double yAxisHeight = height * (1 - xAxisHeightRatio);
    double rowHeight = yAxisHeight * rowHeightRatio;
    double textWidth = width * textWidthRatio;
    double lineWidth = width * xAxisWidthRatio;
    return Container(
      //color: Colors.black,
      height: height,
      width: width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...yAxisPoints.reversed.map((dollar) =>
                drawYAxis(rowHeight, textWidth, lineWidth, '\$$dollar')),
            drawYAxis(rowHeight, textWidth, lineWidth, '', isPointZero: true),
            drawXAxis(xAxisHeightRatio * height, lineWidth)
          ]),
    );
  }

  Widget drawYAxis(
      double rowHeight, double textWidth, double lineWidth, String amount,
      {isPointZero = false}) {
    return Container(
      //color: Colors.black,
      height: rowHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pointOnYAxis(amount, textWidth, rowHeight),
          isPointZero
              ? SizedBox(
                  height: rowHeight,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: lineThickness,
                      width: lineWidth,
                      color: MyStyle.fadedBlackish,
                    ),
                  ),
                )
              : CustomPaint(
                  painter: BrokenLinePainter(lineThickness),
                  size: Size(lineWidth, rowHeight),
                )
        ],
      ),
    );
  }

  Widget drawXAxis(double xAxisHeight, double xAxisWidth) {
    List<String> xs = List<String>.from(points.keys);
    double oneXWidth = (xAxisWidth / xs.length);
    double oneXHeight = xAxisHeight;
    return SizedBox(
      height: xAxisHeight,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          pointOnYAxis('', width - xAxisWidth, xAxisHeight),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: xs
                .map((e) => SizedBox(
                      width: oneXWidth,
                      height: oneXHeight,
                      child: Center(
                        child: SizedBox(
                          width: oneXWidth * 0.8,
                          height: oneXHeight,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              e,
                              style: MyStyle.textStyle
                                  .copyWith(color: MyStyle.fadedBlackish),
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget pointOnYAxis(String value, double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          value,
          style: MyStyle.textStyle.copyWith(color: MyStyle.fadedBlackish),
        ),
      ),
    );
  }
}
