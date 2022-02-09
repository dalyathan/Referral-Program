import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class PaymentMethodContainer extends StatelessWidget {
  final IconData iconData;
  final String name;
  final double height;
  final double width;
  final bool highlight;
  const PaymentMethodContainer(
      {Key? key,
      required this.iconData,
      required this.name,
      required this.height,
      required this.width,
      required this.highlight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusRatio = 0.25;
    double horizontalPaddingRatio = 0.075;
    double verticalPaddingRatio = 0.1;
    double contentBoxWidth = width * (1 - 2 * horizontalPaddingRatio);
    double contentBoxHeight = height * (1 - 2 * verticalPaddingRatio);
    double borderThickness = 3.5;
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(241, 241, 241, 1),
                width: borderThickness,
              ),
              borderRadius: BorderRadius.circular(height * borderRadiusRatio)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: verticalPaddingRatio * height,
                horizontal: horizontalPaddingRatio * width),
            child: SizedBox(
              width: contentBoxWidth,
              height: contentBoxHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      iconData,
                      size: contentBoxHeight * 0.5,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: contentBoxWidth,
                      child: Text(
                        name,
                        style: MyStyle.textStyle.copyWith(fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: highlight,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                border: Border.all(
                  color: MyStyle.greenish,
                  width: borderThickness,
                ),
                borderRadius:
                    BorderRadius.circular(height * borderRadiusRatio)),
            child: Align(
              alignment: const Alignment(0.9, -0.8),
              child: Icon(
                Icons.done_rounded,
                color: MyStyle.greenish,
                size: width * 0.125,
              ),
            ),
          ),
        )
      ],
    );
  }
}
