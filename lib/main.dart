import 'package:flutter/material.dart';
import 'package:lesson_13/i20-Theming/home_page.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: isSwitch
          ? AppThemes.appThemeData[AppTheme.darkTheme]
          : AppThemes.appThemeData[AppTheme.lightTheme],

      // theme:
      home: const I20HomePage(),
    );
  }
}
