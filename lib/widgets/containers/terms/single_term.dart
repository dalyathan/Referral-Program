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
    return Row(
      children: [
        icon,
        Column(
          children: [Text(term.title), Text(term.description)],
        )
      ],
    );
  }
}
