import 'package:flutter/material.dart';

class HomeMarketCofeeButtons extends StatefulWidget {
  const HomeMarketCofeeButtons({super.key});

  @override
  State<HomeMarketCofeeButtons> createState() => _HomeMarketCofeeButtonsState();
}

class _HomeMarketCofeeButtonsState extends State<HomeMarketCofeeButtons> {
  List<bool> _isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = [true, false, false];
              });
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isSelected[0] == true
                    ? const Color(0xFF4C4DDC)
                    : const Color(0xFFF5F5F5),
              ),
              child: Center(
                child: Text(
                  'Hotel',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: _isSelected[0] == true
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF878787),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = [false, true, false];
              });
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isSelected[1] == true
                    ? const Color(0xFF4C4DDC)
                    : const Color(0xFFF5F5F5),
              ),
              child: Center(
                  child: Text(
                'Market',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: _isSelected[1] == true
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFF878787),
                ),
              )),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = [false, false, true];
              });
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isSelected[2] == true
                    ? const Color(0xFF4C4DDC)
                    : const Color(0xFFF5F5F5),
              ),
              child: Center(
                child: Text(
                  'Cofee',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: _isSelected[2] == true
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF878787),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
