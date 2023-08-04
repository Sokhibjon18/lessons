import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:lesson_13/l17-BookingHotel/l17_schedule_page.dart';
import 'package:lesson_13/l17-BookingHotel/l17_setting_page.dart';
import 'package:lesson_13/l17-BookingHotel/l17_home_page.dart';

class L17HiddenDrawerMenu extends StatefulWidget {
  const L17HiddenDrawerMenu({super.key});

  @override
  State<L17HiddenDrawerMenu> createState() => _L17HiddenDrawerMenuState();
}

class _L17HiddenDrawerMenuState extends State<L17HiddenDrawerMenu> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home page',
          baseStyle: const TextStyle(color: Colors.black),
          selectedStyle: const TextStyle(color: Colors.white),
          colorLineSelected: Colors.white,
        ),
        const L17HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Schedule',
          baseStyle: const TextStyle(color: Colors.black),
          selectedStyle: const TextStyle(color: Colors.white),
          colorLineSelected: Colors.white,
        ),
        const L17SchedulePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: const TextStyle(color: Colors.black),
          selectedStyle: const TextStyle(color: Colors.white),
          colorLineSelected: Colors.white,
        ),
        const L17SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.green,
      initPositionSelected: 0,
      disableAppBarDefault: true,
      slidePercent: 50,
      contentCornerRadius: 40,
    );
  }
}
