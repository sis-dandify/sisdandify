import 'package:flutter/material.dart';


abstract class InactiveWidget extends StatefulWidget {
  final bool isActive;

  const InactiveWidget({super.key, required this.isActive});

  get statusColor => isActive ? Colors.black : Colors.grey;

}
