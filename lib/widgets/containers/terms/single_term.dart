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
    double iconSize = height * 0.6;
    double textWidth = (width - iconSize) * 0.9;
    icon.height = iconSize;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: width,
      //color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          icon,
          const Spacer(),
          LimitedBox(
            maxWidth: textWidth,
            maxHeight: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: height * 0.3,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        term.title,
                        style: MyStyle.textStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            color: MyStyle.blackish),
                      ),
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
                        .copyWith(color: MyStyle.fadedBlackish),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
