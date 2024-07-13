import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactButtons extends StatelessWidget {

  const ContactButtons({
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
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buttons.entries.map((entry) {
            return Column(
              children: [
                SvgPicture.asset(
                  entry.value,
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(entry.key, style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall),
                ),
              ],
            );
          }).toList(),
        )
      ],
    );
  }
}
