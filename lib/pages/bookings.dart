import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sisdandify/components/alert_dialog.dart';
import 'package:sisdandify/components/bookings/calendar_picker.dart';
import 'package:sisdandify/components/bookings/hour_picker.dart';
import 'package:sisdandify/components/bookings/user_input_data.dart';
import 'package:sisdandify/components/bookings/dropdown.dart';
import 'package:sisdandify/components/button_layout.dart';
import 'package:sisdandify/data/bookings_data.dart' as data;

import '../components/bookings/assistant_picker.dart';
import '../components/bookings/send_button.dart';

class Bookings extends StatefulWidget {
  const Bookings({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _BookingsState();
  }
}

class _BookingsState extends State<Bookings> {
  final _formKey = GlobalKey<FormState>();

  String branchSelected = '';
  List<DateTime?> datesSelected = [];
  String assistantSelected = '';
  String hourSelected = '';
  Map<String, String> userInputData = {};

  formStatus() => stdout.writeln(
      'form status: $branchSelected - ${datesSelected.isNotEmpty ? datesSelected.first : ''} - $assistantSelected - $hourSelected - $userInputData');

  void onChangedBranch(String? optionSelected) {
    setState(() {
      branchSelected = optionSelected!;
      datesSelected = [];
      assistantSelected = '';
      hourSelected = '';
    });
    formStatus();
  }

  onChangedSelectedDate(List<DateTime?> dateTime) {
    setState(() {
      datesSelected = dateTime;
      assistantSelected = '';
      hourSelected = '';
    });
    formStatus();
  }

  onChangedAssistant(String assistant) {
    setState(() {
      assistantSelected = assistant;
      hourSelected = '';
    });
    formStatus();
  }

  onChangedHour(String hour) {
    setState(() {
      hourSelected = hour;
    });
    formStatus();
  }

  onChangedUserInputData(String key, String value) {
    setState(() {
      userInputData[key] = value;
    });
    formStatus();
  }

  @override
  Widget build(context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Text(data.appointmentsLabel,
                style: Theme.of(context).textTheme.titleLarge),
            Dropdown(
              onPressed: onChangedBranch,
            ),
            CalendarPicker(
              dates: datesSelected,
              onChanged: onChangedSelectedDate,
            ),
            AssistantPicker(
              isActive: datesSelected.isNotEmpty,
              assistant: assistantSelected,
              onChanged: onChangedAssistant,
            ),
            HourPicker(
              isActive: assistantSelected.isNotEmpty,
              hour: hourSelected,
              onChanged: onChangedHour,
            ),
            UserInputData(
              isActive: hourSelected.isNotEmpty,
              onChanged: onChangedUserInputData,
            ),
            ButtonLayout(
              child: SendButton(
                isActive: userInputData.keys.length == 4 &&
                    !userInputData.values.contains('') &&
                    hourSelected.isNotEmpty,
                label: 'INVIA',
                onTap: () {
                  bool? isValid = _formKey.currentState?.validate();
                  if (isValid != null && isValid) {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertWindow(
                              title: 'VUOI PROCEDERE?',
                              description:
                                  "Giorno: ${datesSelected[0].toString().split(' ')[0]}\n"
                                  "Ora: $hourSelected\n"
                                  "Operatore: $assistantSelected",
                            ));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
