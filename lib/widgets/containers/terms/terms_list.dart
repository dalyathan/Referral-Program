import 'package:dribbble_mahmudul_hasan_manik_referral_program/util/data/DummyTermsData.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/coins.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/share.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/icons/website.dart';
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
    SizedBox largerSpacer = SizedBox(
      height: 0.045 * size.height,
    );
    SizedBox smallerSpacer = SizedBox(
      height: 0.025 * size.height,
    );
    return Column(
      children: [
        smallerSpacer,
        SingleTermContainer(
          height: height,
          icon: ShareIcon(),
          term: DummyTermsData.terms[0],
          width: width,
        ),
        largerSpacer,
        SingleTermContainer(
          height: height,
          icon: CoinsIcon(),
          term: DummyTermsData.terms[1],
          width: width,
        ),
        largerSpacer,
        SingleTermContainer(
          height: height,
          icon: AccountIcon(),
          term: DummyTermsData.terms[2],
          width: width,
        ),
        largerSpacer,
        SingleTermContainer(
          height: height,
          icon: WebsiteIcon(),
          term: DummyTermsData.terms[3],
          width: width,
        )
      ],
    );
  }
}
