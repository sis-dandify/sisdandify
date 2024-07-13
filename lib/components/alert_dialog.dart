import 'package:flutter/material.dart';

class AlertWindow extends StatelessWidget {
  final String title;
  final String description;

  const AlertWindow({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        surfaceTintColor: Colors.white,
        content:
            Text(description, style: Theme.of(context).textTheme.titleSmall),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ANNULLA'),
            child:
                Text('ANNULLA', style: Theme.of(context).textTheme.labelSmall),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'CONFERMA'),
            child:
                Text('CONFERMA', style: Theme.of(context).textTheme.labelSmall),
          ),
        ]);
  }
}
