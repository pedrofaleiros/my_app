import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor colorPrimarySwatch = const MaterialColor(
    0xFFFFFFFF,
    const <int, Color>{
      50: const Color(0xFF004D40),
      100: const Color(0xFF004D40),
      200: const Color(0xFF004D40),
      300: const Color(0xFF004D40),
      400: const Color(0xFF004D40),
      500: const Color(0xFFC0E7B6),
      600: const Color(0xFF8FB586),
      700: const Color(0xFF39796B),
      800: const Color(0xFF004D40),
      900: const Color(0xFF00251A),
    },
  );

  var elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(180, 50)),
        padding: MaterialStateProperty.all(EdgeInsets.all(10))),
  );


var outlinedButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size(100, 40)),
    //elevation: MaterialStateProperty.all(5),
    //overlayColor: MaterialStateProperty.all(Colors.white),
  ),
);

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
        elevatedButtonTheme: elevatedButtonTheme,
        outlinedButtonTheme: outlinedButtonTheme,
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
        elevatedButtonTheme: elevatedButtonTheme,
        outlinedButtonTheme: outlinedButtonTheme,
      );
}
