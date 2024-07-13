import 'package:flutter/material.dart';
import '../button_layout.dart';

class Menu extends StatelessWidget {
  final List<ButtonLayout> menuButtons;

  const Menu({super.key, required this.menuButtons});

  @override
  Widget build(context) {
    return SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: menuButtons
        ));
  }
}
