import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags_screen.dart';

class BagInfoCarousel extends StatefulWidget {
  const BagInfoCarousel({super.key});

  @override
  State<BagInfoCarousel> createState() => _BagInfoCarouselState();
}

class _BagInfoCarouselState extends State<BagInfoCarousel> {
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  _carouselController.animateToPage(0);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xFF000000)))),
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
                      border:
                          Border(bottom: BorderSide(color: Color(0xFF000000)))),
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
                      border:
                          Border(bottom: BorderSide(color: Color(0xFF000000)))),
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
    );
  }
}
