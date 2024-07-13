import 'package:flutter/material.dart';
import '../components/homepage/menu.dart';
import '../data/homepage_data.dart' as data;

class Homepage extends StatelessWidget {
  static const String sisLogo = 'assets/images/homepage/sis.png';

  const Homepage({
    super.key,
  });

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(sisLogo, width: 200),
          const SizedBox(height: 30),
          Menu(menuButtons: data.menuButtons),
        ],
      ),
    );
  }
}
