import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l15-shopUI/widgets/bags_screen.dart';

class BagInfoCarousel extends StatefulWidget {
  const BagInfoCarousel({super.key});

  @override
  State<BagInfoCarousel> createState() => _BagInfoCarouselState();
}

class _BagInfoCarouselState extends State<BagInfoCarousel> {
  final CarouselController _carouselController = CarouselController();
  bool a = true;
  bool b = false;
  bool c = false;

  List<Widget> getItems() {
    List<Widget> items = [];

    for (var i = 0; i < carouselData.length; i++) {
      items.add(Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              carouselData[i],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5B5B5B),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              carouselData2[i],
              style: const TextStyle(
                color: Color(0xFF5B5B5B),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    a = true;
                    c = false;
                    b = false;
                  });
                  _carouselController.animateToPage(0);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color:
                                  a == true ? const Color(0xFF000000) : const Color(0xFFFFFFFF)))),
                  child: const Text(
                    'Description',
                    style: TextStyle(
                        color: Color(0xFF000000), fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    a = false;
                    c = true;
                    b = false;
                  });
                  _carouselController.animateToPage(1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color:
                                  c == true ? const Color(0xFF000000) : const Color(0xFFFFFFFF)))),
                  child: const Text(
                    'Shipping info',
                    style: TextStyle(
                        color: Color(0xFF000000), fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    a = false;
                    c = false;
                    b = true;
                  });
                  _carouselController.animateToPage(2);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color:
                                  b == true ? const Color(0xFF000000) : const Color(0xFFFFFFFF)))),
                  child: const Text(
                    'Payment options',
                    style: TextStyle(
                        color: Color(0xFF000000), fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 20),
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            viewportFraction: 1,
            aspectRatio: 1,
            disableCenter: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {},
          ),
          items: getItems(),
        ),
      ],
    );
  }
}
