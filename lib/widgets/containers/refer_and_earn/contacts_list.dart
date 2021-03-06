import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/common/horizontal_rule.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/refer_and_earn/contact.dart';

import '../../../style.dart';
import '../../../util/data/DummyContactsData.dart';
import 'package:flutter/material.dart';

class ContactsListContainer extends StatelessWidget {
  final double width;
  const ContactsListContainer({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double rowHeight = size.height * 0.125;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width * 0.3,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Contacts",
              style: MyStyle.textStyle.copyWith(
                  color: MyStyle.blackish, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ...DummyContactsData.contacts
            .sublist(0, DummyContactsData.contacts.length - 1)
            .map((person) => Column(children: [
                  ContactsContainer(
                      width: width, height: rowHeight, person: person),
                  HorizontalRule(width: width)
                ]))
            .toList(),
        ContactsContainer(
            width: width,
            height: rowHeight,
            person: DummyContactsData.contacts.last)
      ],
    );
  }
}
