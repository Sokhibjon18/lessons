// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthSocialMediaButtons extends StatelessWidget {
  const AuthSocialMediaButtons({
    Key? key,
    required this.facebookOnTap,
    required this.googleOnTap,
    required this.appleOnTap,
  }) : super(key: key);
  final Function facebookOnTap;
  final Function googleOnTap;
  final Function appleOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => facebookOnTap,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFE8ECF4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: SvgPicture.asset(
                  'assets/vectors/facebook_logo.svg',
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => googleOnTap,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFE8ECF4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: SvgPicture.asset('assets/vectors/google_logo.svg'),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => appleOnTap,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFE8ECF4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: SvgPicture.asset('assets/vectors/apple_logo.svg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
