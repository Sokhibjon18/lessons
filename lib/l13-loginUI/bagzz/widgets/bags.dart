import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:lesson_13/l13-loginUI/bagzz/bags_info.dart';
import 'package:lesson_13/l13-loginUI/bagzz/widgets/bags_screen.dart';

class Bags extends StatefulWidget {
  const Bags({super.key});

  @override
  State<Bags> createState() => _BagsState();
}

class _BagsState extends State<Bags> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2 / 2.5,
        crossAxisCount: 2,
      ),
      itemCount: bagsInfo.length,
      itemBuilder: (BuildContext context, int index) {
        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isButtonPressed = true;
              });
              a.add(bagsInfo[index].imageName);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BagsScreen(bagssInfo: bagsInfo[index]),
                ),
              );
            },
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: Image.asset(bagsInfo[index].imageName)),
                    IconButton(
                        onPressed: () {},
                        icon: Image(image: SvgImage.asset('assets/heart.svg')))
                  ],
                ),
                Text(
                  bagsInfo[index].name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000)),
                ),
                const SizedBox(height: 12),
                Column(
                  children: [
                    Text(
                      bagsInfo[index].bagsTayp,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000)),
                    ),
                    Image(image: SvgImage.asset('assets/line.svg'))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

List<String> a = [];
