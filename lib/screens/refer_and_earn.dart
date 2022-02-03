import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double effectiveContentWidth =
        size.width * (1 - 2 * MyStyle.horizontalPaddingRatio);
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
                  width: effectiveContentWidth)
            ],
          ),
        ),
      ),
    );
  }
}
