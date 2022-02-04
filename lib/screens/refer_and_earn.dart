import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/bar_chart.dart';

import '../widgets/containers/refer_and_earn/graph_backdrop.dart';

import '../style.dart';
import '../widgets/containers/common/custom_app_bar.dart';
import '../widgets/containers/refer_and_earn/select_date.dart';
import 'package:flutter/material.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double effectiveContentWidth =
        size.width * (1 - 2 * MyStyle.horizontalPaddingRatio);
    double selectDateHeightRatio = 0.125;
    double graphHeightRatio = 0.2;
    SizedBox spacer = SizedBox(
      height: 0.025 * size.height,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * MyStyle.horizontalPaddingRatio,
              right: size.width * MyStyle.horizontalPaddingRatio,
              top: size.height * MyStyle.topPaddingRatio),
          child: Column(
            children: [
              CustomAppBar(
                  title: "Refer & earn",
                  height: size.height * MyStyle.appBarHeightRatio,
                  width: effectiveContentWidth),
              spacer,
              SelectDate(
                height: size.height * selectDateHeightRatio,
                width: effectiveContentWidth,
              ),
              spacer,
              BarChartContainer(
                  width: effectiveContentWidth,
                  height: size.height * graphHeightRatio,
                  points: const {
                    'Sat': '410',
                    'Sun': '160',
                    'Mon': '700',
                    'Tue': '160',
                    'Wed': '210',
                    'Thu': '160',
                    'Fri': '145'
                  })
            ],
          ),
        ),
      ),
    );
  }
}
