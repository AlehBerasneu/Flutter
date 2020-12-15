import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telegram_flutter/pages/HomePage.dart';
import 'package:telegram_flutter/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram_flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
            textTheme: GoogleFonts.marmeladTextTheme(
              Theme.of(context).textTheme,

            ),
        ),
      home: LoginPage(),
    );
  }
}


