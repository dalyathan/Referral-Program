import '/widgets/containers/withdraw/balance.dart';

import '../../widgets/containers/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double effectiveContentWidth =
        size.width * (1 - 2 * MyStyle.horizontalPaddingRatio);
    double balanceHeightRatio = 0.075;
    SizedBox smallerSpacer = SizedBox(
      height: 0.025 * size.height,
    );
    SizedBox largerSpacer = SizedBox(
      height: 0.045 * size.height,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * MyStyle.horizontalPaddingRatio,
              right: size.width * MyStyle.horizontalPaddingRatio,
              top: size.height * MyStyle.topPaddingRatio),
          child: Column(
            children: [
              CustomAppBar(
                  title: "Withdraw",
                  height: size.height * MyStyle.appBarHeightRatio,
                  width: effectiveContentWidth),
              largerSpacer,
              BalanceContainer(
                height: size.height * balanceHeightRatio,
                width: effectiveContentWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
