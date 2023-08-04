import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/l17-BookingHotel/data/hotels_repository.dart';

class MySchedule extends StatelessWidget {
  const MySchedule({Key? key, required this.today}) : super(key: key);
  final DateTime today;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Schedule',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: HotelsRepository.instance.bookedHotelsList.length,
            itemBuilder: (BuildContext context, int index) {
              final bookedHotel =
                  HotelsRepository.instance.bookedHotelsList[index];
              final startDate = bookedHotel.bookedDate!.start;
              final endDate = bookedHotel.bookedDate!.end;
              if (today.isBefore(startDate) || today.isAfter(endDate)) {
                return Container();
              } else {}
              return Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 2, right: 2),
                child: Container(
                  height: 108,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image(
                              image: AssetImage(bookedHotel.hotelPhoto),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    bookedHotel.hotelName,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: bookedHotel.hotelPrice,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF4C4DDC),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                          text: ' /night',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF878787),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/vectors/location_border.svg'),
                                  const SizedBox(width: 8),
                                  Text(
                                    bookedHotel.hotelLocation,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF878787),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/vectors/calendar.svg'),
                                  const SizedBox(width: 8),
                                  Text(
                                    '${bookedHotel.bookedDate!.start.year}-0${bookedHotel.bookedDate!.start.month}-${bookedHotel.bookedDate!.start.day}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF878787),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
