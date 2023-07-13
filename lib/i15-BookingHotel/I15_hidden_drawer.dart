import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:lesson_13/i15-BookingHotel/I15Schedule_page.dart';
import 'package:lesson_13/i15-BookingHotel/I15_setting_page.dart';
import 'package:lesson_13/i15-BookingHotel/I15_home_page.dart';

class I15HiddenDrawerMenu extends StatefulWidget {
  const I15HiddenDrawerMenu({super.key});

  @override
  State<I15HiddenDrawerMenu> createState() => _I15HiddenDrawerMenuState();
}

class _I15HiddenDrawerMenuState extends State<I15HiddenDrawerMenu> {
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
        const I15HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Schedule',
          baseStyle: const TextStyle(color: Colors.black),
          selectedStyle: const TextStyle(color: Colors.white),
          colorLineSelected: Colors.white,
        ),
        const I15SchedulePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: const TextStyle(color: Colors.black),
          selectedStyle: const TextStyle(color: Colors.white),
          colorLineSelected: Colors.white,
        ),
        const I15SettingPage(),
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
