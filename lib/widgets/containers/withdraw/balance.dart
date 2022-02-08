import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  final double width;
  final double height;
  const BalanceContainer({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusRatio = 0.2;
    double paddingRatio = 0.1;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: MyStyle.greenish,
          borderRadius: BorderRadius.circular(height * borderRadiusRatio)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * paddingRatio),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Balance',
              style: MyStyle.textStyle
                  .copyWith(color: MyStyle.fadedBlackish, fontSize: 20),
            ),
            Text(
              '\$2648.00',
              style: MyStyle.textStyle.copyWith(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
