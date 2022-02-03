import 'package:flutter/material.dart';

import '../../../style.dart';

class SelectDate extends StatelessWidget {
  final double height;
  final double width;
  const SelectDate({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.amber,
          width: width * 0.4,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Referal Income',
              style: MyStyle.textStyle.copyWith(
                  color: MyStyle.blackish, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          //color: Colors.red,
          width: width * 0.25,
          height: height,
          child: FittedBox(
            fit: BoxFit.contain,
            child: DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: MyStyle.textStyle
                        .copyWith(color: MyStyle.fadedBlackish),
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        )
      ],
    );
  }
}
