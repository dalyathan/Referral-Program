import '/painters/refer_and_earn/broken_lines.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class GraphBackdrop extends StatelessWidget {
  final List<String> amounts;
  final double width;
  final double height;
  const GraphBackdrop(
      {Key? key,
      required this.amounts,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rowHeightRatio = (1 / amounts.length);
    double textWidthRatio = 0.1;
    double brokenLineWidthRatio = 0.85;
    return Container(
      //color: Colors.red,
      height: height,
      width: width,
      child: Column(
        children: amounts
            .map((dollar) => Container(
                  //color: dollar == '300' ? Colors.amber : Colors.transparent,
                  //height: height * rowHeightRatio,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * textWidthRatio,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '\$$dollar',
                            style: MyStyle.textStyle
                                .copyWith(color: MyStyle.fadedBlackish),
                          ),
                        ),
                      ),
                      CustomPaint(
                        painter: BrokenLinePainter(),
                        size: Size(width * brokenLineWidthRatio,
                            height * rowHeightRatio),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
