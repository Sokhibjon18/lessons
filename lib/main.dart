import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_13/L19-Theming/pages/home_page.dart';
import 'package:lesson_13/L19-Theming/pages/l19_bottom_nav_bar.dart';
import 'package:lesson_13/firebase_auth/bloc/auth_bloc.dart';
import 'package:lesson_13/firebase_auth/pages/firebase_auth_sign_in_page.dart';
import 'package:lesson_13/firebase_firestore/pages/firebase_firestore_page.dart';
import 'package:lesson_13/todo_app/application/todo/todo_bloc.dart';
import 'package:lesson_13/todo_app/application/todo_overview/todo_overview_bloc.dart';
import 'package:lesson_13/todo_app/presentation/todo_overview/todo_overview_page.dart';

import 'L19-Theming/model/app_theme.dart';
import 'firebase_firestore/bloc/contact_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => ContactBloc(),
        ),
        BlocProvider(
          create: (context) => TodoBloc(),
        ),
        BlocProvider(
          create: (context) => TodoOverviewBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: isSwitch ? ThemeMode.dark : ThemeMode.light,
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        darkTheme: AppThemes.appThemeData[AppTheme.darkTheme],
        home: const TodoOverviewPage(),
      ),
    );
  }
}
