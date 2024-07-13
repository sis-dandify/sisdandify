import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  final Widget child;

  const ButtonLayout({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child
    );
  }
}
