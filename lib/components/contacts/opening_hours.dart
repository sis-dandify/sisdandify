import 'package:flutter/material.dart';
import 'package:sisdandify/data/contacts_data.dart' as data;

class OpeningHours extends StatelessWidget {
  const OpeningHours({
    super.key,
  });

  static const buttons = {
    'Phone': 'assets/images/contacts/phone.svg',
    'WhatsApp': 'assets/images/contacts/whatsapp.svg',
    'Instagram': 'assets/images/contacts/instagram.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Text(data.openingHoursLabel,
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: data.openingHours.entries.map((e) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(e.key,
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16.0)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Align( // Aggiunto il widget Align
                            alignment: Alignment.centerRight, // Allineato a destra
                            child: Text(e.value,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.grey, thickness: 1.0),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}