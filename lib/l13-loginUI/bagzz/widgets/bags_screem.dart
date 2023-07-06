import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/bagzz/bags_info.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/app_bar_widget.dart';

class BagsScreen extends StatefulWidget {
  final BagsInfo bagssInfo;
  const BagsScreen({super.key, required this.bagssInfo});

  @override
  State<BagsScreen> createState() => _BagsScreenState();
}

class _BagsScreenState extends State<BagsScreen> {
  final CarouselController _carouselController = CarouselController();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                          Image(image: AssetImage(widget.bagssInfo.imageName))),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.bagssInfo.name,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF000000)),
                            ),
                            const Text(
                              'Wallet with chain',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              'Style #36252 0YK0G 1000',
                              style: TextStyle(color: Color(0xFF848484)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          '\$564',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000)),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 31,
                          child: TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  shape: MaterialStatePropertyAll<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(0)))),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xFF000000))),
                              child: const Text(
                                'BUY NOW',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFFBFBFB)),
                              )),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xFF000000)))),
                            child: const Text(
                              'ADD TO CART',
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        _carouselController.animateToPage(0);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFF000000)))),
                        child: const Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                  InkWell(
                      onTap: () {
                        _carouselController.animateToPage(1);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFF000000)))),
                        child: const Text(
                          'Shipping info',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                  InkWell(
                      onTap: () {
                        _carouselController.animateToPage(2);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFF000000)))),
                        child: const Text(
                          'Payment options',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  viewportFraction: 1,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    print(carouselData[index]);
                  },
                ),
                items: carouselData.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                item,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
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
