import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppFoody',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(
          Theme.of(context).textTheme
        ),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
