import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class WithdrawButton extends StatelessWidget {
  final double height;
  final double width;
  const WithdrawButton({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusRatio = 0.3;
    double textWidthRatio = 0.25;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(MyStyle.greenish),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(height * borderRadiusRatio),
                      side: BorderSide(color: MyStyle.greenish)))),
          onPressed: () {},
          child: Center(
            child: SizedBox(
              width: width * textWidthRatio,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Withdraw',
                  style: MyStyle.textStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          )),
    );
  }
}
