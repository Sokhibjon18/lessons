// ignore_for_file: public_member_api_docs, sort_constructors_first
class BagsInfo {
  String imageName;
  String name;
  String bagsTayp;
  BagsInfo({
    required this.imageName,
    required this.name,
    required this.bagsTayp,
  });
}

List<BagsInfo> bagsInfo = [
  BagsInfo(imageName: 'assets/redBag.png', name: 'Artsy', bagsTayp: 'ShOP NOW'),
  BagsInfo(
      imageName: 'assets/whiteBag.png', name: 'Berkely', bagsTayp: 'SHOP NOW'),
  BagsInfo(
      imageName: 'assets/blackBag.png',
      name: 'Capucinus',
      bagsTayp: 'SHOP NOW'),
  BagsInfo(
      imageName: 'assets/greenBag.png', name: 'Monogram', bagsTayp: 'SHOP NOW'),
];
