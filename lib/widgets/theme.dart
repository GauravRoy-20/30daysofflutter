import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      canvasColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: creamcolor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: MyTheme.darkBluishColor,
        foregroundColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: MyTheme.darkBluishColor,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      canvasColor: MyTheme.darkCreamColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: MyTheme.lightBluishColor,
        foregroundColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.white,
        brightness: Brightness.dark,
      ));

  static Color creamcolor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
