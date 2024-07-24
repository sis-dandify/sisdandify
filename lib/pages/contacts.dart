import 'package:flutter/material.dart';
import 'package:sisdandify/components/contacts/contact_buttons.dart';
import 'package:sisdandify/components/contacts/location.dart';
import 'package:sisdandify/components/contacts/opening_hours.dart';
import 'package:sisdandify/data/contacts_data.dart' as data;

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
  });

  @override
  Widget build(context) {
    return SingleChildScrollView( // Added SingleChildScrollView
      child: Column(
        children: [
          const SizedBox(height: 80),
          Text(data.contactsLabel, style: Theme
              .of(context)
              .textTheme
              .titleLarge),
          const ContactButtons(),
          const OpeningHours(),
          const Location()
        ],
      ),
    );
  }
}
