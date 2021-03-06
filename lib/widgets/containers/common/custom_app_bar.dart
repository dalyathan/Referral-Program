import 'package:dribbble_mahmudul_hasan_manik_referral_program/screens/terms.dart';

import '../../../screens/withdraw.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  String? nextPage;
  CustomAppBar(
      {Key? key,
      required this.title,
      this.nextPage,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkResponse(
          onTap: () => Navigator.pop(context),
          radius: height * 0.5,
          child: Ink(
            child: Icon(
              Icons.keyboard_backspace_rounded,
              color: MyStyle.greenish,
              size: height * 0.5,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        SizedBox(
          width: width * 0.1,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Back',
              style: MyStyle.textStyle.copyWith(color: MyStyle.blackish),
            ),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
        SizedBox(
          width: width * 0.35,
          child: Text(
            title,
            style: MyStyle.textStyle.copyWith(
                color: MyStyle.blackish,
                fontWeight: FontWeight.bold,
                fontSize: 17.5),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
        nextPage != null
            ? InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TermsScreen()),
                ),
                child: SizedBox(
                  width: width * 0.15,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      nextPage!,
                      style:
                          MyStyle.textStyle.copyWith(color: MyStyle.greenish),
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: width * 0.1,
              )
      ],
    );
  }
}
