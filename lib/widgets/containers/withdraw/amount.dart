import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class AmountContainer extends StatelessWidget {
  final double width;
  final double height;
  final TextEditingController _controller = TextEditingController();
  AmountContainer({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusRatio = 0.3;
    double textFieldHeigtRatio = 0.65;
    double dollarSignWidthRatio = 0.175;
    double arrowsColumnWidthRatio = 0.175;
    double arrowIconsWidthRatio = 0.5;
    double textFieldheight = height * textFieldHeigtRatio;
    double dollarSignContainerWidth = width * dollarSignWidthRatio;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width * 0.2,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Amount",
              style: MyStyle.textStyle.copyWith(
                  fontWeight: FontWeight.bold, color: MyStyle.blackish),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            SizedBox(
              width: width,
              height: textFieldheight,
              child: TextField(
                controller: _controller,
                textAlignVertical: const TextAlignVertical(y: -0.5),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(244, 244, 246, 1),
                      ),
                      borderRadius: BorderRadius.circular(
                          textFieldheight * borderRadiusRatio),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(244, 244, 246, 1),
                      ),
                      borderRadius: BorderRadius.circular(
                          textFieldheight * borderRadiusRatio),
                    ),
                    fillColor: const Color.fromRGBO(244, 244, 246, 1),
                    filled: true),
              ),
            ),
            Container(
              width: dollarSignContainerWidth,
              height: textFieldheight,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 227, 230, 1),
                  borderRadius: BorderRadius.circular(
                      textFieldheight * borderRadiusRatio)),
              child: Center(
                  child: SizedBox(
                height: textFieldheight * 0.5,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    "\$",
                    style: MyStyle.textStyle,
                  ),
                ),
              )),
            ),
            Positioned(
              right: dollarSignContainerWidth,
              child: SizedBox(
                height: textFieldheight,
                width: width * arrowsColumnWidthRatio,
                child: Column(
                  children: [
                    Material(
                      color: const Color.fromRGBO(244, 244, 246, 1),
                      child: InkResponse(
                        radius: textFieldheight * arrowIconsWidthRatio,
                        onTap: () {
                          if (_controller.text.isEmpty) {
                            _controller.text = "1";
                          } else {
                            _controller.text =
                                (int.parse(_controller.text) + 1).toString();
                          }
                        },
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: textFieldheight * arrowIconsWidthRatio,
                        ),
                      ),
                    ),
                    Material(
                        color: const Color.fromRGBO(244, 244, 246, 1),
                        child: InkResponse(
                          radius: textFieldheight * arrowIconsWidthRatio,
                          onTap: () {
                            if (_controller.text.isNotEmpty &&
                                _controller.text != "0") {
                              _controller.text =
                                  (int.parse(_controller.text) - 1).toString();
                            }
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: textFieldheight * arrowIconsWidthRatio,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
