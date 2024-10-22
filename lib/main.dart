import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_food/screens/auth/index.dart';
import 'package:green_food/screens/details/index.dart';
import 'package:green_food/screens/orders/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return MaterialApp(
      title: 'Green',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: defaultColor,
          surface: defaultColor,
        ),
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const Orders(),
    );
  }
}
