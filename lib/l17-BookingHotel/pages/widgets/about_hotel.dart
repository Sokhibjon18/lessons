// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class AboutHotel extends StatefulWidget {
  const AboutHotel({
    Key? key,
    required this.name,
    required this.location,
    required this.price,
    required this.description,
  }) : super(key: key);
  final String name;
  final String location;
  final String price;
  final String description;
  @override
  State<AboutHotel> createState() => _AboutHotelState();
}

class _AboutHotelState extends State<AboutHotel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            RichText(
              text: TextSpan(
                text: widget.price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4C4DDC),
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: ' /night',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            SvgPicture.asset('assets/vectors/location.svg'),
            const SizedBox(width: 8),
            Text(
              widget.location,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF878787),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Description',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        ReadMoreText(
          widget.description,
          trimLines: 3,
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Show more ',
          trimExpandedText: ' Show less ',
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF4C4DDC),
          ),
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF4C4DDC),
          ),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF878787),
          ),
        ),
      ],
    );
  }
}
