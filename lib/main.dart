import 'package:flutter/material.dart';
import 'package:lesson_13/i20-Theming/home_page.dart';
import 'package:lesson_13/i20-Theming/l20_bottom_nav_bar.dart';

import 'i20-Theming/model/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitch = false;

  void changeTheme() {
    isSwitch = !isSwitch;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isSwitch ? ThemeMode.dark : ThemeMode.light,
      theme: AppThemes.appThemeData[AppTheme.lightTheme],
      darkTheme: AppThemes.appThemeData[AppTheme.darkTheme],
      home: L20BottonNavBar(changeTheme: changeTheme),
    );
  }
}
