import 'package:flutter/material.dart';
import 'package:lesson_13/l15-shopUI/bagzz.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: Stack(
        children: [
          const SizedBox(
            height: 205,
            width: double.infinity,
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(height: 195, child: Image.asset(newsImageName[selectedIndex]))),
          Positioned(
            right: 10,
            top: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color(0xFFFFFFFF),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'This',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFFFFFFFF),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'season`s',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFFFFFFFF),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'latest',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: Row(
              children: [
                Container(
                  color: const Color(0xFF000000),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        color: Color(0xFFFFFFFF),
                      )),
                ),
                Container(
                  color: const Color(0xFF000000),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_sharp,
                        color: Color(0xFFFFFFFF),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
