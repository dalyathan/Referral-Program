import 'package:flutter/material.dart';

import '../../../style.dart';

class HorizontalRule extends StatelessWidget {
  final double width;
  const HorizontalRule({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: MyStyle.fadedBlackish,
      height: 0.25,
    );
  }
}
