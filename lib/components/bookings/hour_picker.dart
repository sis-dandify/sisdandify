import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sisdandify/components/bookings/hour_button.dart';
import 'package:sisdandify/components/inactive_widget.dart';
import 'package:sisdandify/data/bookings_data.dart' as data;

import '../button_layout.dart';

class HourPicker extends InactiveWidget {
  final Function(String) onChanged;
  final String hour;

  const HourPicker({
    super.key,
    required this.hour,
    required this.onChanged,
    required super.isActive,
  });

  @override
  State<StatefulWidget> createState() {
    return _HourPickerState();
  }
}

class _HourPickerState extends State<HourPicker> {
  Map hours = data.hours;

  hourChanged(hour) {
    widget.onChanged(hour);
    stdout.writeln('selected hour: $hour');
  }

  @override
  Widget build(context) {
    return AbsorbPointer(
      absorbing: !widget.isActive,
      child: Column(
        children: [
          Text(data.hourLabel,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: widget.statusColor)),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Table(
              children: [
                for (var i = 0; i < hours.length; i += 3)
                  TableRow(
                    children: [
                      for (var j = i; j < i + 3; j++)
                        ButtonLayout(
                          child: HourButton(
                            label: hours.keys.elementAt(j),
                            selected: widget.hour == hours.keys.elementAt(j),
                            onTap: hourChanged,
                            isActive: widget.isActive,
                          ),
                        ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
