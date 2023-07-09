// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:lesson_13/l13-loginUI/bagzz/bags_info.dart';

class BottomSheetWidget extends StatefulWidget {
  final int counterr;
  const BottomSheetWidget({
    Key? key,
    required this.counterr,
  }) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                          border: Border(
                              bottom: BorderSide(color: Color(0xFF000000)))),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 81,
                                    child: Image(
                                        image: AssetImage(
                                            bagsInfo[index].imageName))),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          count--;
                                        });
                                      },
                                      child: Container(
                                          color: const Color(0xFF000000),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Color(0xFFFFFFFF),
                                          )),
                                    ),
                                    Container(
                                        color: const Color(0xFFFFFFFF),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text('$count'),
                                        )),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          count++;
                                        });
                                      },
                                      child: Container(
                                          color: const Color(0xFF000000),
                                          child: const Icon(
                                            Icons.add,
                                            color: Color(0xFFFFFFFF),
                                          )),
                                    ),
                                  ],
                                )
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
                                const Text(
                                  '\$564',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF000000)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
