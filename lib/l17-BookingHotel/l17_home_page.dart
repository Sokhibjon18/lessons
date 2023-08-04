import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/nearby_hotels.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/home_market_cofee_buttons.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/popular_destinations.dart';

class L17HomePage extends StatelessWidget {
  const L17HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 24, left: 24, top: 24, bottom: 24),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Current location',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF878787),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/vectors/location.svg'),
                            const SizedBox(width: 8),
                            const Text(
                              'Wallace, Australia',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SvgPicture.asset('assets/vectors/arrow_down.svg'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: const Color(0xFFEDEDED)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset(
                          'assets/vectors/notification.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const HomeMarketCofeeButtons(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nearby your location',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4C4DDC),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const NearbyHotels(),
                const SizedBox(height: 24),
                const PopularDestinations(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
