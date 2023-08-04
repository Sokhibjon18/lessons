import 'package:lesson_13/l15-shopUI/bags_info.dart';

class BagsInfoRepository {
  final List<BagsInfo> _bagsList = [];

  List<BagsInfo> getAllBagsInfo() {
    return List.from(_bagsList);
  }

  void addBagInfo(BagsInfo bagInfo) {
    _bagsList.add(bagInfo);
  }

  void deleteBagInfo(String name) {
    _bagsList.removeWhere((element) => element.name == name);
  }
}
