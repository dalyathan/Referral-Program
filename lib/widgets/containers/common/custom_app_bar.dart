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
          splashColor: MyStyle.blackish,
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
          width: width * 0.4,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Refer & Earn',
              style: MyStyle.textStyle.copyWith(
                  color: MyStyle.blackish, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
        nextPage != null
            ? SizedBox(
                width: width * 0.1,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    nextPage!,
                    style: MyStyle.textStyle.copyWith(color: MyStyle.greenish),
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
