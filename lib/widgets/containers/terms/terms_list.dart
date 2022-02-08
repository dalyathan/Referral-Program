import 'package:dribbble_mahmudul_hasan_manik_referral_program/util/data/DummyTermsData.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/coins.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/share.dart';
import 'package:flutter/material.dart';

import '../../icons/account.dart';
import 'single_term.dart';

class TermsListContainer extends StatelessWidget {
  final double width;
  const TermsListContainer({
    Key? key,
    required this.width,
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
          width: width,
        ),
        SingleTermContainer(
          height: height,
          icon: CoinsIcon(),
          term: DummyTermsData.terms[1],
          width: width,
        ),
        SingleTermContainer(
          height: height,
          icon: AccountIcon(),
          term: DummyTermsData.terms[2],
          width: width,
        )
      ],
    );
  }
}
