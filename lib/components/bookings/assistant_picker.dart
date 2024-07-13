import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sisdandify/data/bookings_data.dart' as data;
import '../inactive_widget.dart';
import 'assistant_button.dart';

class AssistantPicker extends InactiveWidget {
  final Function(String) onChanged;
  final String assistant;

  const AssistantPicker(
      {super.key,
      required super.isActive,
      required this.assistant,
      required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    return _AssistantState();
  }
}

class _AssistantState extends State<AssistantPicker> {
  Map assistants = data.assistants;

  assistantChanged(assistant) {
    widget.onChanged(assistant);
    stdout.writeln('selected assistant: $assistant');
  }

  @override
  Widget build(context) {
    return AbsorbPointer(
      absorbing: !widget.isActive,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(data.assistantsLabel,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: widget.statusColor)),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: data.assistants.entries.map((e) {
                return Expanded(
                  child: AssistantButton(
                    image: e.value['image'] as String,
                    label: e.key,
                    selected: widget.assistant == e.key,
                    onTap: assistantChanged,
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
