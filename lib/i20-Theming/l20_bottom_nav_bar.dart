// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lesson_13/i20-Theming/home_page.dart';
import 'package:lesson_13/l17-BookingHotel/l17_home_page.dart';

class L20BottonNavBar extends StatefulWidget {
  const L20BottonNavBar({
    Key? key,
    required this.changeTheme,
  }) : super(key: key);

  final Function changeTheme;

  @override
  State<L20BottonNavBar> createState() => _L20BottonNavBarState();
}

class _L20BottonNavBarState extends State<L20BottonNavBar> {
  Widget _getPage(int currentPage) {
    switch (currentPage) {
      case 0:
        return L20HomePage(changeTheme: widget.changeTheme);
      case 1:
        return const Scaffold(body: Text(''));
      case 2:
        return const Scaffold(body: Text(''));
      default:
    }
    return Container();
  }

  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theming'),
        ),
        body: _getPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
