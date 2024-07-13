import 'package:flutter/material.dart';
import 'package:sisdandify/components/inactive_widget.dart';

import '../button_label.dart';

class HourButton extends InactiveWidget {
  final String label;
  final bool selected;
  final void Function(String) onTap;

  const HourButton({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap, required super.isActive,
  });


  @override
  State<StatefulWidget> createState() {
    return HourButtonState();
  }
}

class HourButtonState extends State<HourButton> {

  selectButton() {
    widget.onTap(widget.label);
  }

  @override
  Widget build(context) {

    Color backgroundColor = widget.selected ? Colors.black : Colors.white;
    Color inactiveBackgroundColor = Colors.grey;
    Color labelColor = widget.selected ? Colors.white : Colors.black;
    Color inactiveLabelColor = Colors.white;

    return Visibility(
      visible: widget.label != '',
      child: OutlinedButton(
        onPressed: selectButton,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          backgroundColor: widget.isActive ? backgroundColor : inactiveBackgroundColor,
          surfaceTintColor: widget.isActive ? backgroundColor : inactiveBackgroundColor,
          side: BorderSide(color: widget.isActive? Colors.black: Colors.grey, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: ButtonLabel(
          label: widget.label,
          color: widget.isActive ? labelColor : inactiveLabelColor,
        ),
      ),
    );
  }
}
