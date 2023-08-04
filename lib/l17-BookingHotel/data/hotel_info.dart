// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HotelInfo {
  String hotelName;
  String hotelLocation;
  String hotelPrice;
  String hotelStars;
  String hotelPhoto;
  String hotelDescription;
  DateTimeRange? bookedDate;
  String preview1;
  String preview2;
  String preview3;

  HotelInfo({
    required this.hotelName,
    required this.hotelLocation,
    required this.hotelPrice,
    required this.hotelStars,
    required this.hotelPhoto,
    required this.hotelDescription,
    this.bookedDate,
    required this.preview1,
    required this.preview2,
    required this.preview3,
  });
  factory HotelInfo.info(HotelInfo hotel) {
    return HotelInfo(
      hotelName: hotel.hotelName,
      hotelLocation: hotel.hotelLocation,
      hotelPrice: hotel.hotelPrice,
      hotelStars: hotel.hotelStars,
      hotelPhoto: hotel.hotelPhoto,
      hotelDescription: hotel.hotelDescription,
      bookedDate: hotel.bookedDate,
      preview1: hotel.preview1,
      preview2: hotel.preview2,
      preview3: hotel.preview3,
    );
  }

  @override
  String toString() {
    return 'HotelInfo(hotelName: $hotelName, hotelLocation: $hotelLocation, hotelPrice: $hotelPrice, hotelStars: $hotelStars, hotelPhoto: $hotelPhoto, hotelDescription: $hotelDescription, bookedDate: $bookedDate, preview1: $preview1, preview2: $preview2, preview3: $preview3)';
  }
}
