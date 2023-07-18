import 'package:flutter/material.dart';
import 'package:lesson_13/i15-BookingHotel/I15_hidden_drawer.dart';
import 'package:lesson_13/l13-loginUI/welcome_page.dart';
import 'package:lesson_13/l19-currensy/ui/currensy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CurrensyPage(),
    );
  }
}
