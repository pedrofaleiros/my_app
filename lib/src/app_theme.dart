import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      accentColor: Color(0xff004D40),
      fontFamily: 'Poppins');

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        accentColor: Color(0xff004D40),
        fontFamily: 'Poppins',
      );
}
