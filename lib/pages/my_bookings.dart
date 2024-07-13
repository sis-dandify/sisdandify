import 'package:flutter/material.dart';
import 'package:sisdandify/components/my_bookings/booking_card.dart';
import 'package:sisdandify/data/my_bookings_data.dart' as data;

class MyBookings extends StatelessWidget {

  static const appointments = {
    '1 Gennaio 2023 - 09:30': {
      'Assistente': 'Tania',
      'Sede': 'SIS BOUTIQUE',
      'Indirizzo': 'Viale Strasburgo, 102/104, 90146 Palermo PA',
      'Nome': 'Mario Rossi',
      'Telefono': '+39 333 1234567',
      'Email': 'mario.rossi@test.com'
    },
    '2 Gennaio 2023 - 09:30': {
      'Assistente': 'Tania',
      'Sede': 'SIS BOUTIQUE',
      'Indirizzo': 'Viale Strasburgo, 102/104, 90146 Palermo PA',
      'Nome': 'Mario Rossi',
      'Telefono': '+39 333 1234567',
      'Email': 'mario.rossi@test.com'
    },
  };

  const MyBookings({
    super.key,
  });

  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        Text(data.myAppointmentsLabel,
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 60),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: appointments.entries.map((e) {
            return BookingCard(title: e.key, subtitles: e.value);
            }).toList(),
        ),
      ],
    );
  }
}
