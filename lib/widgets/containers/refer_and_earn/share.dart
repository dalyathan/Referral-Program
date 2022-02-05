import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/share_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../../../style.dart';

class ShareContainer extends StatelessWidget {
  final double width;
  const ShareContainer({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shareButtonWidthRatio = 0.2 * 0.8;
    List<Icon> icons = [
      const Icon(
        FontAwesomeIcons.google,
        color: Color.fromRGBO(67, 133, 245, 1),
      ),
      const Icon(
        FontAwesomeIcons.facebookF,
        color: Color.fromRGBO(56, 92, 142, 1),
      ),
      const Icon(
        FontAwesomeIcons.linkedinIn,
        color: Color.fromRGBO(80, 130, 246, 1),
      ),
      const Icon(
        FontAwesomeIcons.github,
        color: Color.fromRGBO(27, 31, 35, 1),
      ),
      Icon(
        Icons.more_horiz_outlined,
        color: MyStyle.fadedBlackish,
      ),
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: icons
            .map((icon) =>
                ShareButton(size: width * shareButtonWidthRatio, icon: icon))
            .toList());
  }
}
