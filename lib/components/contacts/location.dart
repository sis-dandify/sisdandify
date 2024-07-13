import 'package:flutter/material.dart';
import 'package:sisdandify/data/contacts_data.dart' as data;

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
      Text(data.locationLabel, style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 20),
      Text(data.addressLabel, style: Theme.of(context).textTheme.bodySmall),
    ]);
  }
}