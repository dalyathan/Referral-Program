import '../../../widgets/containers/common/horizontal_rule.dart';
import '../../../widgets/containers/refer_and_earn/contacts_list.dart';
import '../../../widgets/containers/refer_and_earn/share.dart';
import '../../../widgets/containers/refer_and_earn/share_via.dart';

import '../widgets/containers/refer_and_earn/copy_url.dart';
import '../../../widgets/containers/refer_and_earn/graph.dart';
import '../../../widgets/containers/refer_and_earn/withdraw_button.dart';

import '../style.dart';
import '../widgets/containers/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ReferAndEarnScreen extends StatelessWidget {
  const ReferAndEarnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double effectiveContentWidth =
        size.width * (1 - 2 * MyStyle.horizontalPaddingRatio);
    double graphHeightRatio = 0.375;
    double withdrawButtonHeightRatio = 0.075;
    double copyUrlHeightRatio = 0.1;
    SizedBox smallerSpacer = SizedBox(
      height: 0.025 * size.height,
    );
    SizedBox largerSpacer = SizedBox(
      height: 0.045 * size.height,
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * MyStyle.horizontalPaddingRatio,
                right: size.width * MyStyle.horizontalPaddingRatio,
                top: size.height * MyStyle.topPaddingRatio),
            child: Column(
              children: [
                CustomAppBar(
                    title: "Refer & Earn",
                    height: size.height * MyStyle.appBarHeightRatio,
                    nextPage: "Terms",
                    width: effectiveContentWidth),
                smallerSpacer,
                GraphContainer(
                    width: effectiveContentWidth,
                    height: size.height * graphHeightRatio),
                smallerSpacer,
                WithdrawButton(
                  height: size.height * withdrawButtonHeightRatio,
                  width: effectiveContentWidth,
                ),
                largerSpacer,
                HorizontalRule(
                  width: effectiveContentWidth,
                ),
                largerSpacer,
                CopyUrlContainer(
                  height: size.height * copyUrlHeightRatio,
                  width: effectiveContentWidth,
                ),
                smallerSpacer,
                ShareViaContainer(width: effectiveContentWidth),
                smallerSpacer,
                ShareContainer(
                  width: effectiveContentWidth,
                ),
                largerSpacer,
                HorizontalRule(
                  width: effectiveContentWidth,
                ),
                largerSpacer,
                ContactsListContainer(
                  width: effectiveContentWidth,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
