import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';

import '../../../model/Term.dart';
import 'package:flutter/material.dart';

class SingleTermContainer extends StatelessWidget {
  final SuperTypeIcon icon;
  final Term term;
  final double height;
  final double width;
  const SingleTermContainer(
      {Key? key,
      required this.icon,
      required this.term,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = height * 0.45;
    double textWidth = (width - iconSize) * 0.9;
    icon.height = iconSize;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: width,
      //color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          icon,
          const Spacer(),
          LimitedBox(
            maxWidth: textWidth,
            maxHeight: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: LimitedBox(
                    maxWidth: textWidth,
                    maxHeight: height * 0.35,
                    child: Text(
                      term.title,
                      style: MyStyle.textStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: MyStyle.blackish,
                          fontSize: 15),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: height * 0.65,
                  width: textWidth,
                  child: Text(
                    term.description,
                    style: MyStyle.textStyle
                        .copyWith(color: MyStyle.fadedBlackish, fontSize: 12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
