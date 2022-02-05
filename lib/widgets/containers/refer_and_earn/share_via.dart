import 'package:flutter/material.dart';

import '../../../style.dart';

class ShareViaContainer extends StatelessWidget {
  final double width;
  const ShareViaContainer({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hrWidthRatio = 0.225;
    double hrWidth = width * hrWidthRatio;
    double middleTextWidth = width * (1 - 2 * hrWidthRatio);
    return Row(
      children: [
        hr(hrWidth),
        const Spacer(),
        SizedBox(
          width: middleTextWidth * 0.6,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Or Share via',
              style: MyStyle.textStyle.copyWith(color: MyStyle.fadedBlackish),
            ),
          ),
        ),
        const Spacer(),
        hr(hrWidth),
      ],
    );
  }

  Container hr(double hrWidth) => Container(
        width: hrWidth,
        color: MyStyle.fadedBlackish,
        height: 0.25,
      );
}
