// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyHotelInfo {
  String hotelName;
  String hotelLocation;
  String hotelPrice;
  String hotelStars;
  String hotelPhoto;
  NearbyHotelInfo({
    required this.hotelName,
    required this.hotelLocation,
    required this.hotelPrice,
    required this.hotelStars,
    required this.hotelPhoto,
  });
}

List<NearbyHotelInfo> hotelList = [
  NearbyHotelInfo(
    hotelName: 'The Aston hotel',
    hotelLocation: 'Alice Springs NT 0870, Australia',
    hotelPrice: '165,3',
    hotelStars: '5.0',
    hotelPhoto: 'assets/images/aston_hotel.png',
  ),
  NearbyHotelInfo(
    hotelName: 'The Minaro hotel',
    hotelLocation: '3910 Tokaj, Csurgo volgyi ut',
    hotelPrice: '195.0',
    hotelStars: '5.0',
    hotelPhoto: 'assets/images/minaro_hotel.png',
  ),
  NearbyHotelInfo(
    hotelName: 'The Orlando hotel',
    hotelLocation: 'Sheraton Suites Orlando Airport',
    hotelPrice: '211.0',
    hotelStars: '5.0',
    hotelPhoto: 'assets/images/orlando_hotel.png',
  )
];
