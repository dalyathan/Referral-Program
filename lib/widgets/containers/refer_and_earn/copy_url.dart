import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class CopyUrlContainer extends StatelessWidget {
  final double width;
  final double height;
  const CopyUrlContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color urlTextBackgroundColor = const Color.fromRGBO(244, 244, 246, 1);
    Color copyButtonBackgroundColor = const Color.fromRGBO(228, 227, 230, 1);
    double borderRadiusRatio = 0.2;
    double horizontalOffsetRatio = 0.1;
    double copyButtonWidthRatio = 0.3;
    double copyButtonWidth = width * copyButtonWidthRatio;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: urlTextBackgroundColor,
              borderRadius: BorderRadius.circular(height * borderRadiusRatio)),
          child: Padding(
            padding: EdgeInsets.only(left: width * horizontalOffsetRatio),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('https://bit.ly/3qnrUr7',
                  style: MyStyle.textStyle
                      .copyWith(color: MyStyle.fadedBlackish, fontSize: 12.5)),
            ),
          ),
        ),
        Container(
          height: height,
          width: copyButtonWidth,
          decoration: BoxDecoration(
              color: copyButtonBackgroundColor,
              borderRadius: BorderRadius.circular(height * borderRadiusRatio)),
          child: Center(
            child: SizedBox(
              height: height * 0.7,
              width: copyButtonWidth * 0.5,
              child: FittedBox(
                child: Text(
                  'Copy',
                  style: MyStyle.textStyle.copyWith(color: MyStyle.blackish),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
