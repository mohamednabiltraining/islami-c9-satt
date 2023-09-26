import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondry = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black), // app bar text
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 20,
        ),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black), //
      ),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: lightPrimary,
          background: Colors.white,
          primary: lightPrimary),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(size: 32)),
      dividerColor: lightPrimary,
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white), // app bar text
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 20,
        ),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white), //
      ),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          background: darkPrimary,
          primary: darkPrimary),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: darkSecondry,
          selectedIconTheme: IconThemeData(size: 32)),
      dividerColor: darkSecondry,
      cardTheme: CardTheme(
          color: darkPrimary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary));
}
