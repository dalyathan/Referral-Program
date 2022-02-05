import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';

import '/model/person.dart';
import 'package:flutter/material.dart';

class ContactsContainer extends StatelessWidget {
  final double width;
  final double height;
  final Person person;
  const ContactsContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double clipRadiusRatio = 0.1;
    double textWidthRatio = 0.2;
    Color inviteButtonBackgroundColor = const Color.fromRGBO(244, 244, 246, 1);
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(height * clipRadiusRatio),
          child: SizedBox(
              height: height,
              width: height,
              child: Image.network(person.photoLink)),
        ),
        Column(
          children: [
            SizedBox(
              width: width * textWidthRatio,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(person.name,
                    style: MyStyle.textStyle.copyWith(color: MyStyle.blackish)),
              ),
            ),
            SizedBox(
              width: width * textWidthRatio,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(person.number,
                    style: MyStyle.textStyle.copyWith(color: MyStyle.blackish)),
              ),
            )
          ],
        ),
        Container()
      ],
    );
  }
}
