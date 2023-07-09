import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/bagzz/bags_info.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/app_bar_widget.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags_screen_widget/bage_info_carousel.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags_screen_widget/new_bag_info.dart';

class BagsScreen extends StatefulWidget {
  final BagsInfo bagssInfo;
  const BagsScreen({super.key, required this.bagssInfo});

  @override
  State<BagsScreen> createState() => _BagsScreenState();
}

class _BagsScreenState extends State<BagsScreen> {
  bool selecttedCarouselIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const AppBarWidget(),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewBagsInfo(bagBag: widget.bagssInfo),
              const SizedBox(height: 40),
              const BagInfoCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> carouselData = [
  'As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.',
  'Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.',
  'We accepts the following forms of payment for online purchases:',
];
