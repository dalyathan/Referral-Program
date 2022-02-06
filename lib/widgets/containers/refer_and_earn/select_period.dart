import '../../../util/data/DummyGraphData.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class SelectPeridoContainer extends StatefulWidget {
  final double height;
  final double width;
  final String period;
  final Function(String) selectPeriod;
  const SelectPeridoContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.period,
      required this.selectPeriod})
      : super(key: key);

  @override
  State<SelectPeridoContainer> createState() => _SelectPeridoContainerState();
}

class _SelectPeridoContainerState extends State<SelectPeridoContainer> {
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
                value: widget.period,
                items: DummyGraphData.periods.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => widget.selectPeriod(newValue!),
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
