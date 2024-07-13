import 'package:flutter/material.dart';
import 'package:sisdandify/components/button_label.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final void Function() onTap;

  const MenuButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.black,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: ButtonLabel(
        label: label,
        color: Colors.white,
      ),
    );
  }
}
