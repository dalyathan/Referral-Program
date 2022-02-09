import 'package:dribbble_mahmudul_hasan_manik_referral_program/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double labelHeightRatio = 0.25;
    double textFieldHeigtRatio = 0.55;
    double textFieldheight = height * textFieldHeigtRatio;
    double borderRadiusRatio = 0.3;
    return Container(
      height: height,
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: labelHeightRatio * height,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    label,
                    style: MyStyle.textStyle.copyWith(
                        color: MyStyle.blackish, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width,
              height: textFieldheight,
              child: TextField(
                textAlignVertical: const TextAlignVertical(y: -0.5),
                style: TextStyle(fontSize: textFieldheight * 0.4),
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
            )
          ]),
    );
  }
}
