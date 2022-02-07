import 'package:dribbble_mahmudul_hasan_manik_referral_program/util/data/DummyTermsData.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/share.dart';
import 'package:flutter/material.dart';

import 'single_term.dart';

class TermsListContainer extends StatelessWidget {
  const TermsListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height * 0.1;
    return Column(
      children: [
        SingleTermContainer(
          height: height,
          icon: ShareIcon(),
          term: DummyTermsData.terms[0],
        )
      ],
    );
  }
}
