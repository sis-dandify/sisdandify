import 'package:flutter/material.dart';

class ButtonLabel extends StatelessWidget {
  const ButtonLabel({
    super.key,
    required this.label,
    required this.color
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style: Theme
            .of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
