import 'package:flutter/material.dart';

enum AppTheme { darkTheme, lightTheme }

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      dividerColor: Colors.black54,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF263238),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.purple.shade700;
              }
              return Colors.purple;
            },
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.deepPurple,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.deepPurple,
            width: 2.0,
          ),
        ),
      ),
      cardTheme: CardTheme(
        elevation: 8.0,
        shadowColor: const Color(0xFF333333),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      timePickerTheme: const TimePickerThemeData(
        backgroundColor: Color(0xFF121212),
        hourMinuteTextColor: Color(0xFFFFFFFF),
        dayPeriodTextColor: Color(0xFFAAAAAA),
        dialHandColor: Color(0xFF2962FF),
        dialBackgroundColor: Color(0xFF1E1E1E),
        entryModeIconColor: Color(0xFF64B5F6),
      ),
      textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF263238),
        selectedItemColor: Color(0xFF64B5F6),
        unselectedItemColor: Color(0xFFB0BEC5),
      ),
    ),
    //////////////////////////////////!
    AppTheme.lightTheme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      dividerColor: const Color(0xFF757575),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFECEFF1),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.black),
        ),
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue.shade900;
              }
              return Colors.blue;
            },
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.teal,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.teal,
            width: 2.0,
          ),
        ),
      ),
      cardTheme: CardTheme(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      timePickerTheme: const TimePickerThemeData(
        backgroundColor: Color(0xFFF0F2F5),
        hourMinuteTextColor: Color(0xFF333333),
        dayPeriodTextColor: Color(0xFF757575),
        dialHandColor: Color(0xFF2962FF),
        dialBackgroundColor: Color(0xFFFFFFFF),
        entryModeIconColor: Color(0xFF64B5F6),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFECEFF1),
        selectedItemColor: Color(0xFF1976D2),
        unselectedItemColor: Color(0xFF9E9E9E),
      ),
    ),
  };
}
