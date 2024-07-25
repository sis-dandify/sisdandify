import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sisdandify/data/contacts_data.dart' as data;

class Location extends StatelessWidget {
  static const String sisMap = 'assets/images/contacts/sis-map.jpg';
  const Location({
    super.key,
  });

  void _launchURL() async {
    final Uri url = Uri.parse('https://maps.app.goo.gl/4EUfPh6bYkpQ8sCB9');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
      Text(data.locationLabel, style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 20),
      Text(data.addressLabel, style: Theme.of(context).textTheme.bodySmall),
      const SizedBox(height: 20),
      GestureDetector(
        onTap: _launchURL,
        child: Image.asset(sisMap, width: 600),
      ),
    ]);
  }
}