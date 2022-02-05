import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class ContactsListContainer extends StatelessWidget {
  final double width;
  const ContactsListContainer({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width * 0.2,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Contacts",
              style: MyStyle.textStyle.copyWith(color: MyStyle.blackish),
            ),
          ),
        )
      ],
    );
  }
}
