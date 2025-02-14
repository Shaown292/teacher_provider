import 'package:flutter/material.dart';

// Light theme
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.red,
  hintColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
);

// Dark theme
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  hintColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
);
