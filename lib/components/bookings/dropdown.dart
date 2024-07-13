import 'dart:io';
import 'package:sisdandify/data/bookings_data.dart' as data;
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final Function(String?) onPressed;

  const Dropdown({super.key, required this.onPressed});

  @override
  State<StatefulWidget> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedOption = 'SIS DANDIFY BOUTIQUE';

  void dropdownChanged(String? option) {
    setState(() {
      selectedOption = option!;
      widget.onPressed(option);
    });
    stdout.writeln('selected option: $option');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
      Text(data.branchLabel,
          style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 40),
      DropdownMenu(
          menuStyle: const MenuStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            surfaceTintColor: MaterialStatePropertyAll(Colors.white),
          ),
          onSelected: dropdownChanged,
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: 'boutique', label: 'SIS BOUTIQUE'),
            DropdownMenuEntry(value: 'lab', label: 'SIS LAB')
          ]),
      const SizedBox(height: 10),
    ]);
  }
}
