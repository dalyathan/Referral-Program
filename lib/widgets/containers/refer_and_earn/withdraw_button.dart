import '../../../screens/withdraw.dart';
import '../../../style.dart';
import 'package:flutter/material.dart';

class WithdrawButton extends StatelessWidget {
  final double width;
  final double height;
  const WithdrawButton({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double textWidthRatio = 0.5;
    double buttonWidthRatio = 0.3;
    double buttonWidth = width * buttonWidthRatio;
    double buttonBorderRadiusRatio = 0.2;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: width * textWidthRatio,
          child: FittedBox(
            child: Text(
              '\$2,648.00',
              style: MyStyle.textStyle.copyWith(
                  color: MyStyle.blackish, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WithdrawScreen()),
          ),
          child: Container(
            height: height,
            width: buttonWidth,
            decoration: BoxDecoration(
                color: MyStyle.fadedGreenish,
                borderRadius:
                    BorderRadius.circular(height * buttonBorderRadiusRatio)),
            child: Center(
              child: SizedBox(
                height: height * 0.6,
                width: buttonWidth * 0.8,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Withdraw',
                    style: MyStyle.textStyle.copyWith(color: MyStyle.greenish),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
