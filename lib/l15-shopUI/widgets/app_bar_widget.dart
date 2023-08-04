import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image(image: SvgImage.asset('assets/more.svg'))),
                const Text(
                  'bagzz',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000)),
                )
              ],
            ),
            Image.asset('assets/child.png')
          ],
        );
  }
}