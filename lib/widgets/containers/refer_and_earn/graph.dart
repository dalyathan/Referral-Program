import 'package:dribbble_mahmudul_hasan_manik_referral_program/util/data/DummyGraphData.dart';

import '../../../widgets/containers/refer_and_earn/bar_graph.dart';
import '../../../widgets/containers/refer_and_earn/select_period.dart';
import 'package:flutter/material.dart';

class GraphContainer extends StatefulWidget {
  final double width;
  final double height;
  const GraphContainer({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<GraphContainer> createState() => _GraphContainerState();
}

class _GraphContainerState extends State<GraphContainer> {
  double barGraphHeightRatio = 0.6;
  double selectDateHeightRatio = 0.33;
  String currentPeriod = DummyGraphDataUtil.periods[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SelectPeridoContainer(
          height: widget.height * selectDateHeightRatio,
          width: widget.width,
          period: currentPeriod,
          selectPeriod: (newPeriod) =>
              setState(() => {currentPeriod = newPeriod}),
        ),
        SizedBox(
          height: widget.height *
              (1 - (selectDateHeightRatio + barGraphHeightRatio)),
        ),
        BarGraphContainer(
            width: widget.width,
            height: widget.height * barGraphHeightRatio,
            points: DummyGraphDataUtil.get(currentPeriod))
      ],
    );
  }
}
