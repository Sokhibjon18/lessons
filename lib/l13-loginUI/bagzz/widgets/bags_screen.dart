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
final List<String> carouselData2 = [
  'All products are made with carefully selected materials. Please handle with care for longer product life.Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth Store in the provided flannel bag or box Clean with a soft, dry cloth',
  'Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.',
  'PayPal may not be used to purchase Made to Order Décor or DIY items. The full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.',
];
