import 'dart:io';
import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:sisdandify/data/bookings_data.dart' as data;

class CalendarPicker extends StatelessWidget {
  final Function(List<DateTime?>) onChanged;
  final List<DateTime?> dates;

  const CalendarPicker({
    super.key,
    required this.dates,
    required this.onChanged,
  });

  dateChanged(List<DateTime?> dates) {
    onChanged(dates);
    stdout.writeln('selected date: ${dates[0]}');
  }

  @override
  Widget build(context) {
    final calendarConfig = CalendarDatePicker2Config(
      firstDate: DateTime.now(),
      centerAlignModePicker: true,
    );

    return Column(
      children: [
        const SizedBox(height: 40),
        Text(data.calendarLabel,
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 10),
        CalendarDatePicker2(config: calendarConfig, value: dates, onValueChanged: dateChanged),
      ],
    );
  }

}