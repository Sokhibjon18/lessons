import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/l17-BookingHotel/data/hotels_repository.dart';
import 'package:lesson_13/l17-BookingHotel/l17_detail_page.dart';

class NearbyHotels extends StatefulWidget {
  const NearbyHotels({super.key});

  @override
  State<NearbyHotels> createState() => _NearbyHotelsState();
}

class _NearbyHotelsState extends State<NearbyHotels> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          final hotelInfos = HotelsRepository.instance.hotelList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => L17DetailPage(
                    hotelInfo: hotelInfos,
                  ),
                ),
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 16, left: 8, bottom: 2, top: 2),
              child: Container(
                width: 257,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 209,
                      width: 257,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage(hotelInfos.hotelPhoto),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: SvgPicture.asset(
                                    'assets/vectors/heart.svg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 8, right: 8),
                      child: Row(
                        children: [
                          Text(
                            hotelInfos.hotelName,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          Expanded(child: Container()),
                          SvgPicture.asset('assets/vectors/star.svg'),
                          const SizedBox(width: 8),
                          Text(
                            hotelInfos.hotelStars,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        hotelInfos.hotelLocation,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF878787),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: RichText(
                        text: TextSpan(
                          text: hotelInfos.hotelPrice,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF4C4DDC),
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: ' /night',
                              style: TextStyle(color: Color(0xFF878787)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
