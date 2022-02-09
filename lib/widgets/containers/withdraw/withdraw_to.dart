import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:dribbble_mahmudul_hasan_manik_referral_program/widgets/containers/withdraw/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WithdrawToContainer extends StatefulWidget {
  final double width;
  final double height;
  const WithdrawToContainer(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<WithdrawToContainer> createState() => _WithdrawToContainerState();
}

class _WithdrawToContainerState extends State<WithdrawToContainer> {
  bool highlightMasterCard = true;
  bool highlightVisa = false;
  bool highlightPaypal = false;
  @override
  Widget build(BuildContext context) {
    double paymentTypeWidthRatio = 0.3;
    double paymentTypeHeightRatio = 0.6;
    double paymentTypeHeight = widget.height * paymentTypeHeightRatio;
    double paymentTypeWidth = widget.width * paymentTypeWidthRatio;
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: widget.height * 0.175,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Withdraw to",
                  style: MyStyle.textStyle.copyWith(
                      color: MyStyle.blackish, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.height * 0.75,
            width: widget.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (highlightMasterCard == false) {
                      setState(() {
                        highlightMasterCard = true;
                        highlightVisa = false;
                        highlightPaypal = false;
                      });
                    }
                  },
                  child: PaymentMethodContainer(
                      iconData: FontAwesomeIcons.ccMastercard,
                      name: "Mastercard",
                      height: paymentTypeHeight,
                      width: paymentTypeWidth,
                      highlight: highlightMasterCard),
                ),
                GestureDetector(
                  onTap: () {
                    if (highlightVisa == false) {
                      setState(() {
                        highlightMasterCard = false;
                        highlightVisa = true;
                        highlightPaypal = false;
                      });
                    }
                  },
                  child: PaymentMethodContainer(
                      iconData: FontAwesomeIcons.ccVisa,
                      name: "Visa",
                      height: paymentTypeHeight,
                      width: paymentTypeWidth,
                      highlight: highlightVisa),
                ),
                GestureDetector(
                  onTap: () {
                    if (highlightPaypal == false) {
                      setState(() {
                        highlightMasterCard = false;
                        highlightVisa = false;
                        highlightPaypal = true;
                      });
                    }
                  },
                  child: PaymentMethodContainer(
                      iconData: FontAwesomeIcons.paypal,
                      name: "Paypal",
                      height: paymentTypeHeight,
                      width: paymentTypeWidth,
                      highlight: highlightPaypal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
