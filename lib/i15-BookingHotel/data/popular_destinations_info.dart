// ignore_for_file: public_member_api_docs, sort_constructors_first
class Populardestinations {
  String picture;
  String location;
  String stars;
  String name;
  String price;
  String bookedDate;
  Populardestinations({
    required this.picture,
    required this.location,
    required this.stars,
    required this.name,
    required this.price,
    required this.bookedDate,
  });
}

List<Populardestinations> popularHotels = [
  Populardestinations(
      picture: 'assets/images/asteria_hotel.png',
      location: 'Wilora NT 0872, Australia',
      stars: '5.0',
      name: 'Asteria hotel',
      price: '165,3',
      bookedDate: '27 July 2023'),
  Populardestinations(
      picture: 'assets/images/margaritaville_hotel.png',
      location: 'Pigeon Forge',
      stars: '5.0',
      name: 'Margaritaville hotel',
      price: '220.7',
      bookedDate: '19 October 2023'),
  Populardestinations(
    picture: 'assets/images/park_hotel.png',
    location: 'Boa Viagem',
    stars: '5.0',
    name: 'Park hotel',
    price: '217.4',
    bookedDate: '13 November 2023',
  ),
];
