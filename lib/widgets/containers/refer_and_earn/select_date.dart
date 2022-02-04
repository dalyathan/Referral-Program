import 'package:flutter/material.dart';

import '../../../style.dart';

class SelectDate extends StatefulWidget {
  final double height;
  final double width;
  const SelectDate({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  String listValue = 'Today';
  @override
  Widget build(BuildContext context) {
    double dropdownButtonWidth = widget.width * 0.5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          //color: Colors.amber,
          width: widget.width * 0.4,
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
          width: dropdownButtonWidth,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: listValue,
                items: <String>[
                  'Today',
                  'Last Week',
                  'This Month',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => setState(() {
                  listValue = newValue!;
                }),
                icon: Icon(
                  Icons.expand_more_outlined,
                  color: MyStyle.fadedBlackish,
                ),
                style: MyStyle.textStyle.copyWith(color: MyStyle.fadedBlackish),
                elevation: 0,
                iconSize: dropdownButtonWidth * 0.25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
