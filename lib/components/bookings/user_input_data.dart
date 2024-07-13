import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sisdandify/components/inactive_widget.dart';
import 'package:sisdandify/data/bookings_data.dart' as data;

class UserInputData extends InactiveWidget {
  final Function(String, String) onChanged;
  
  const  UserInputData({
    super.key,
    required super.isActive,
    required this.onChanged
  });

  @override
  State<StatefulWidget> createState() {
    return _UserInputDataState();
  }
}

class _UserInputDataState extends State<UserInputData> {

  isValueNullOrEmpty(value, field) =>
      (value == null || value.isEmpty) ? 'Inserisci il tuo $field' : null;

  isEmailValid(value) =>
      EmailValidator.validate(value) ? null : "Inserisci una email valida";
  
  formChanged(key, value)  => widget.onChanged(key, value);

  @override
  Widget build(context) {
    return AbsorbPointer(
      absorbing: !widget.isActive,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(data.yourData,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: widget.statusColor)),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(hintText: "Nome"),
              validator: (value) => isValueNullOrEmpty(value, 'nome'),
              onChanged: (value) => formChanged('name', value),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(hintText: "Cognome"),
              validator: (value) => isValueNullOrEmpty(value, 'cognome'),
              onChanged: (value) => formChanged('surname', value),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(hintText: "Email"),
              validator: (value) => isEmailValid(value),
              onChanged: (value) => formChanged('email', value),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(hintText: "Telefono"),
              keyboardType: TextInputType.number,
              validator: (value) => isValueNullOrEmpty(value, 'telefono'),
              onChanged: (value) => formChanged('phone', value),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
