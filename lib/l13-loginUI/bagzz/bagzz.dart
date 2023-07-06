import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:lesson_13/l13-loginUI/bagzz/profile_screen.dart';
import 'package:lesson_13/l13-loginUI/bagzz/search_screen.dart';
import 'package:lesson_13/l13-loginUI/bagzz/shop_screen.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/app_bar_widget.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags_screem.dart';

import 'home_screen.dart';

class Bagzz extends StatefulWidget {
  const Bagzz({super.key});

  @override
  State<Bagzz> createState() => _BagzzState();
}

class _BagzzState extends State<Bagzz> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
    const ShopScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const AppBarWidget(),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: const Color(0xFFFFFFFF)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting, // Dumaloq chekkalar
          backgroundColor: Colors.blue, // Orqa fon rangi
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: SvgImage.asset('assets/home.svg'),
                color: Color(0xFF000000),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(image: SvgImage.asset('assets/find.svg')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: SvgImage.asset('assets/smallHeart.svg'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image(image: SvgImage.asset('assets/shop.svg')),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

List<String> newsImageName = ['assets/backroundImage.png', 'assets/news.png'];
