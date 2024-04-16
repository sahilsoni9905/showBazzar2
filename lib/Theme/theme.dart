import 'package:flutter/material.dart';
import 'package:show_bazzar/Theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: Colors.blue.shade800,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.lightBlueAccent.shade100,
      appBarTheme: AppBarTheme(backgroundColor: Colors.blue.shade900),
      textTheme: TTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      primaryColor: Colors.black54,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme);
}
