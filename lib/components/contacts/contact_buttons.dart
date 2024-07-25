import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactButtons extends StatelessWidget {
  const ContactButtons({
    super.key,
  });

  static const buttons = {
    'Phone': {
      'icon': 'assets/images/contacts/phone.svg',
      'onTap': 'mailto:gasparemascolino@icloud.com',
    },
    'WhatsApp': {'icon': 'assets/images/contacts/whatsapp.svg'},
    'Instagram': {'icon': 'assets/images/contacts/instagram.svg'},
  };

  void _handleTap(String label) async {
    final button = buttons[label];
    if (button != null && button.containsKey('onTap')) {
      final url = button['onTap']!;
      launchUrlString(url);

    } else {
      print('Tapped on $label');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buttons.entries.map((entry) {
            return GestureDetector(
              onTap: () => _handleTap(entry.key),
              child: Column(
                children: [
                  SvgPicture.asset(
                    entry.value['icon']!,
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(entry.key,
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                ],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}