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
            SizedBox(
              width: width * 0.2,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Balance',
                  style: MyStyle.textStyle.copyWith(
                      color: const Color.fromRGBO(163, 210, 206, 1),
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.35,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  '\$2648.00',
                  style: MyStyle.textStyle.copyWith(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
