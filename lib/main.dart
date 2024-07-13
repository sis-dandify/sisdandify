import 'package:flutter/material.dart';
import 'package:sisdandify/pages/bookings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sisdandify/pages/bookings.dart';
import 'package:sisdandify/pages/contacts.dart';
import 'package:sisdandify/pages/homepage.dart';
import 'package:sisdandify/pages/my_bookings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sis Dandify',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: const Color.fromARGB(255, 1, 1, 1),
            secondary: Colors.white,
          ),
          textTheme: TextTheme(
            titleLarge: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            titleMedium: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            titleSmall: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            bodyLarge: GoogleFonts.robotoCondensed(
              fontSize: 20,
            ),
            bodyMedium: GoogleFonts.robotoCondensed(
              fontSize: 18,
            ),
            bodySmall: GoogleFonts.robotoCondensed(
              fontSize: 14,
            ),
            labelSmall: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(30),
          child: const Center(
            child: Contacts()
          ),
        ),
      ),
    );
  }
}
