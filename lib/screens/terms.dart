import '../widgets/containers/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double effectiveContentWidth =
        size.width * (1 - 2 * MyStyle.horizontalPaddingRatio);
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
                  title: "Terms",
                  height: size.height * MyStyle.appBarHeightRatio,
                  width: effectiveContentWidth),
            ],
          ),
        ),
      ),
    );
  }
}
