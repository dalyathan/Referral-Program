import 'package:flutter/material.dart';

import '../../../style.dart';

class ShareButton extends StatelessWidget {
  final double size;
  final Icon icon;
  const ShareButton({Key? key, required this.size, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromRGBO(252, 252, 252, 1);
    double borderRadiusratio = 0.2;
    double iconSize = size * 0.4;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: MyStyle.fadedBlackish, width: 0.25),
          borderRadius: BorderRadius.circular(size * borderRadiusratio)),
      child: Center(
        child: SizedBox(
          height: iconSize,
          child: FittedBox(fit: BoxFit.fitHeight, child: icon),
        ),
      ),
    );
  }
}
