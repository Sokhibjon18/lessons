import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:lesson_13/l15-shopUI/search_screen.dart';
import 'package:lesson_13/l15-shopUI/widgets/app_bar_widget.dart';
import 'package:lesson_13/l15-shopUI/widgets/bottom_sheet_favorite.dart';
import 'package:lesson_13/l15-shopUI/widgets/bottom_sheet_widget.dart';

import 'home_screen.dart';

class Bagzz extends StatefulWidget {
  const Bagzz({super.key});

  @override
  State<Bagzz> createState() => _BagzzState();
}

class _BagzzState extends State<Bagzz> {
  int counter = 0;

  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const HomeScreen(),
    const SearchScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isBottomSheetVisible = false;

  void showBottomSheet() {
    setState(() {
      isBottomSheetVisible = true;
    });
    showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: false,
      context: context,
      builder: (BuildContext context) {
        return const BottomSheetWidget();
      },
    ).whenComplete(() {
      setState(() {
        isBottomSheetVisible = false;
      });
    });
  }

  void showBottomSheetFavorite() {
    setState(() {
      isBottomSheetVisible = true;
    });
    showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: false,
      context: context,
      builder: (BuildContext context) {
        return const BottomSheetFavorite();
      },
    ).whenComplete(() {
      setState(() {
        isBottomSheetVisible = false;
      });
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
              icon: Image(
                image: SvgImage.asset('assets/shop.svg'),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (newIndex) {
            if (newIndex == 2) {
              showBottomSheetFavorite();
            } else if (newIndex == 3) {
              showBottomSheet();
            } else {
              _onItemTapped(newIndex);
            }
            setState(() {
              newIndex = _selectedIndex;
            });
          },
        ),
      ),
    );
  }
}

List<String> newsImageName = ['assets/backroundImage.png', 'assets/news.png'];
