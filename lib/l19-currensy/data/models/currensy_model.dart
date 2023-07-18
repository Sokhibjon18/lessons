class CurrensyModel {
  int id;
  String Ccy;
  String Code;
  String CcyNm_UZ;
  String Date;
  String Rate;
  CurrensyModel({
    required this.id,
    required this.Ccy,
    required this.Code,
    required this.CcyNm_UZ,
    required this.Date,
    required this.Rate,
  });

  factory CurrensyModel.fromJson(Map<String, dynamic> json) {
    int id = json['id'] ?? 'No data';
    // ignore: non_constant_identifier_names
    String Ccy = json['Ccy'] ?? 'No data';
    String Code = json['Code'] ?? 'No data';
    String Date = json['Date'] ?? 'No data';
    String CcyNm_UZ = json['CcyNm_UZ'] ?? 'No data';
    String Rate = json['Rate'] ?? 'No data';
    return CurrensyModel(
        id: id,
        Ccy: Ccy,
        Code: Code,
        CcyNm_UZ: CcyNm_UZ,
        Date: Date,
        Rate: Rate);
  }
}
