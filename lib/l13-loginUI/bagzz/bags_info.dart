class BagsInfo {
  String imageName;
  String name;
  String bagsTayp;
  int count;
  int cost;
  BagsInfo({
    required this.cost,
    required this.count,
    required this.imageName,
    required this.name,
    required this.bagsTayp,
  });
}

List<BagsInfo> bagsInfo = [
  BagsInfo(
    cost: 200,
      count: 0,
      imageName: 'assets/redBag.png',
      name: 'Artsy',
      bagsTayp: 'ShOP NOW'),
  BagsInfo(
    cost: 300,
      count: 0,
      imageName: 'assets/whiteBag.png',
      name: 'Berkely',
      bagsTayp: 'SHOP NOW'),
  BagsInfo(
    cost: 500,
      count: 0,
      imageName: 'assets/blackBag.png',
      name: 'Capucinus',
      bagsTayp: 'SHOP NOW'),
  BagsInfo(
    cost: 250,
      count: 0,
      imageName: 'assets/greenBag.png',
      name: 'Monogram',
      bagsTayp: 'SHOP NOW'),
];




