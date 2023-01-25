import 'package:flutter/material.dart';
import 'package:your_healthcalculators/HomePage.dart';

void main() => runApp(HealthCalculators());

class HealthCalculators extends StatelessWidget {
  // Root Widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF23629C),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
        ),
      ),
      home: HomePage(),
      //remove banner flag: Debug from upper right corner
      debugShowCheckedModeBanner: false,
    );
  }
}
