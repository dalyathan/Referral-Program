import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/super_type.dart';

import '../../../model/Term.dart';
import 'package:flutter/material.dart';

class SingleTermContainer extends StatelessWidget {
  final SuperTypeIcon icon;
  final Term term;
  final double height;
  const SingleTermContainer(
      {Key? key, required this.icon, required this.term, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    icon.height = height * 0.5;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: size.width,
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          icon,
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(flex: 2),
              Text(
                term.title,
                style: MyStyle.textStyle.copyWith(
                    fontWeight: FontWeight.bold, color: MyStyle.blackish),
              ),
              const Spacer(),
              Text(
                term.description,
                style: MyStyle.textStyle.copyWith(color: MyStyle.fadedBlackish),
              ),
              const Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
