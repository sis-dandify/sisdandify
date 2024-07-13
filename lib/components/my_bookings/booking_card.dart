import 'package:flutter/material.dart';

import '../alert_dialog.dart';

class BookingCard extends StatelessWidget {
  final String title;
  final Map<String, String> subtitles;

  const BookingCard({super.key, required this.title, required this.subtitles});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 10),
            ListTile(
                leading: const Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Column(
                  children: subtitles.entries.map((e) {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          "${e.key}: ${e.value}",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black54
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'CANCELLA',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => const AlertWindow(
                            title: 'VUOI PROCEDERE CON LA CANCELLAZIONE DELL\'APPUNTAMENTO?',
                            description: '',
                          ));
                  },
                ),
                const SizedBox(width: 8),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
