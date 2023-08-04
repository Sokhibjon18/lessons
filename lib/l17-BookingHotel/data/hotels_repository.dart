// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:lesson_13/l17-BookingHotel/data/hotel_info.dart';

class HotelsRepository {
  static final HotelsRepository instance = HotelsRepository._instance();

  factory HotelsRepository() => instance;

  HotelsRepository._instance();

  List<HotelInfo> bookedHotelsList = [];

  List<HotelInfo> hotelList = [
    HotelInfo(
      hotelName: 'The Aston hotel',
      hotelLocation: 'Alice Springs NT 0870, Australia',
      hotelPrice: '165,3',
      hotelStars: '5.0',
      hotelPhoto: 'assets/images/aston_hotel.png',
      hotelDescription:
          'Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic,getaway or a luxurious vacation. The Aston Hotel offers exquisite accommodations with well-appointed rooms and suites that provide stunning views of the sea. The hotel`s modern and elegant design creates a sophisticated atmosphere, complemented by exceptional service and attention to detail.',
      preview1: 'assets/images/aston-1.png',
      preview2: 'assets/images/aston-2.png',
      preview3: 'assets/images/aston-3.png',
    ),
    HotelInfo(
      hotelName: 'The Minaro hotel',
      hotelLocation: '3910 Tokaj, Csurgo volgyi ut',
      hotelPrice: '195.0',
      hotelStars: '5.0',
      hotelPhoto: 'assets/images/minaro_hotel.png',
      hotelDescription:
          'The Minaro Hotel, nestled in the picturesque surroundings of 3910 Tokaj, Csurgo volgyi ut, offers a serene and enchanting retreat. This boutique hotel combines modern elegance with a touch of traditional charm, providing a truly unforgettable experience for its guests.Situated amidst the scenic beauty of Tokaj, the Minaro Hotel offers breathtaking views of the surrounding vineyards and rolling hills. The location is renowned for its winemaking heritage and offers a tranquil ambiance that allows guests to unwind and immerse themselves in the natural beauty of the region.',
      preview1: 'assets/images/minaro-1.png',
      preview2: 'assets/images/minaro-2.png',
      preview3: 'assets/images/minaro-3.png',
    ),
    HotelInfo(
      hotelName: 'The Orlando hotel',
      hotelLocation: 'Sheraton Suites Orlando Airport',
      hotelPrice: '211.0',
      hotelStars: '5.0',
      hotelPhoto: 'assets/images/orlando_hotel.png',
      hotelDescription:
          'Sheraton Suites Orlando Airport is a well-established hotel conveniently located near Orlando International Airport. As part of the renowned Sheraton hotel brand, it offers a comfortable and convenient stay for both business and leisure travelers visiting the Orlando area.The hotel features spacious and modern suites, providing guests with ample space to relax and unwind. Each suite is tastefully designed and equipped with a range of amenities to ensure a comfortable stay. Whether you`re traveling alone, with a partner, or as a family, the Sheraton Suites Orlando Airport offers accommodations to suit various needs',
      preview1: 'assets/images/orlando-1.png',
      preview2: 'assets/images/orlando-2.png',
      preview3: 'assets/images/orlando-3.png',
    ),
  ];

  List<HotelInfo> popularHotels = [
    HotelInfo(
      hotelPhoto: 'assets/images/asteria_hotel.png',
      hotelLocation: 'Wilora NT 0872, Australia',
      hotelStars: '5.0',
      hotelName: 'Asteria hotel',
      hotelPrice: '165,3',
      hotelDescription:
          'Asteria Hotel is a luxurious accommodation offering modern design and upscale amenities. With well-appointed rooms and suites, guests can enjoy a comfortable and sophisticated stay. Exceptional service, a variety of dining options, a spa, fitness facilities, and more ensure a memorable and relaxing experience.',
      preview1: 'assets/images/asteria-1.png',
      preview2: 'assets/images/asteria-2.png',
      preview3: 'assets/images/asteria-3.png',
    ),
    HotelInfo(
      hotelPhoto: 'assets/images/margaritaville_hotel.png',
      hotelLocation: 'Pigeon Forge',
      hotelStars: '5.0',
      hotelName: 'Margaritaville hotel',
      hotelPrice: '220.7',
      hotelDescription:
          'Margaritaville Hotel is a vibrant and lively destination known for its tropical-themed atmosphere. Inspired by the laid-back lifestyle of a beach paradise, the hotel offers a unique and immersive experience. Colorful decor, lively entertainment, comfortable rooms, vibrant dining options, and poolside relaxation create a fun and carefree vacation environment.',
      preview1: 'assets/images/margaritaville-1.png',
      preview2: 'assets/images/margaritaville-2.png',
      preview3: 'assets/images/margaritaville-3.png',
    ),
    HotelInfo(
      hotelPhoto: 'assets/images/park_hotel.png',
      hotelLocation: 'Boa Viagem',
      hotelStars: '5.0',
      hotelName: 'Park hotel',
      hotelPrice: '217.4',
      hotelDescription:
          'Park Hotel is a stylish and contemporary hotel blending modern comforts with sophistication. Situated in a scenic location, it offers beautiful views of the surroundings. With well-appointed rooms and suites, elegant dining options, and a range of amenities, Park Hotel caters to the needs of both business and leisure travelers, providing a comfortable and enjoyable stay.',
      preview1: 'assets/images/park-1.png',
      preview2: 'assets/images/park-2.png',
      preview3: 'assets/images/park-3.png',
    ),
  ];
}
