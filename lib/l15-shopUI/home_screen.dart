import 'package:flutter/material.dart';
import 'package:lesson_13/l15-shopUI/widgets/bags.dart';
import 'package:lesson_13/l15-shopUI/widgets/news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            News(),
            Bags(),
          ],
        ),
      ),
    );
  }
}
