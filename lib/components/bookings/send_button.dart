import 'package:flutter/material.dart';
import 'package:sisdandify/components/button_label.dart';
import 'package:sisdandify/components/inactive_widget.dart';

class SendButton extends InactiveWidget {
  final String label;
  final void Function() onTap;

  const SendButton({
    super.key,
    required this.label,
    required this.onTap, required super.isActive,
  });

  @override
  State<StatefulWidget> createState() {
    return _SendButtonState();
  }
}

class _SendButtonState extends State<SendButton> {
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: !widget.isActive,
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          backgroundColor: widget.isActive ? Colors.black : Colors.grey,
          foregroundColor: widget.isActive ? Colors.black : Colors.grey,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: ButtonLabel(
          label: widget.label,
          color: Colors.white,
        ),
      ),
    );
  }
}
