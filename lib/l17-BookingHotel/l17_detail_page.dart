// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/l17-BookingHotel/data/hotel_info.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/about_hotel.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/hotel_convenients_row.dart';
import 'package:lesson_13/l17-BookingHotel/widgets/hotel_preview.dart';

import 'data/hotels_repository.dart';

class L17DetailPage extends StatefulWidget {
  const L17DetailPage({
    Key? key,
    required this.hotelInfo,
  }) : super(key: key);
  final HotelInfo hotelInfo;
  @override
  State<L17DetailPage> createState() => _L17DetailPageState();
}

class _L17DetailPageState extends State<L17DetailPage> {
  void addHotelToSchedule() {
    HotelInfo newHotelInfo = HotelInfo.info(widget.hotelInfo);
    newHotelInfo.bookedDate = selectedDates;
    HotelsRepository.instance.bookedHotelsList.add(newHotelInfo);
    log(newHotelInfo.hashCode.toString());
  }

  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFEDEDED)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                    const Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFEDEDED)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  height: 246,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(widget.hotelInfo.hotelPhoto),
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
                            child: SvgPicture.asset('assets/vectors/liked.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const HotelConvenientsRow(),
                const SizedBox(height: 24),
                AboutHotel(
                  name: widget.hotelInfo.hotelName,
                  location: widget.hotelInfo.hotelLocation,
                  price: widget.hotelInfo.hotelPrice,
                  description: widget.hotelInfo.hotelDescription,
                ),
                const SizedBox(height: 16),
                HotelPreview(
                  preview1: widget.hotelInfo.preview1,
                  preview2: widget.hotelInfo.preview2,
                  preview3: widget.hotelInfo.preview3,
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () async {
                    final DateTimeRange? dateTimeRange =
                        await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2050),
                    );
                    if (dateTimeRange != null) {
                      setState(() {
                        selectedDates = dateTimeRange;
                      });

                      addHotelToSchedule();
                      log(HotelsRepository.instance.bookedHotelsList
                          .toString());
                    }
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF4C4DDC),
                    ),
                    child: const Center(
                      child: Text(
                        'Booking Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
