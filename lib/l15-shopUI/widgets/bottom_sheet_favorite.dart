import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:lesson_13/l15-shopUI/bags_info.dart';

class BottomSheetFavorite extends StatefulWidget {
  const BottomSheetFavorite({super.key});

  @override
  State<BottomSheetFavorite> createState() => _BottomSheetFavoriteState();
}

class _BottomSheetFavoriteState extends State<BottomSheetFavorite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: SvgImage.asset('assets/bigLine.svg')),
            Center(
                child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bagsInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xFF000000)))),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 100,
                                  child: Image(image: AssetImage(bagsInfo[index].imageName))),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bagsInfo[index].name,
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
                              const SizedBox(
                                height: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    bagsInfo[index].count = 0;
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Color(0xFF000000)))),
                                  child: const Text(
                                    'REMOVE',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
            InkWell(
              onTap: () {},
              child: Container(
                  color: const Color(0xFF000000),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'ADD ALL TO CART',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
