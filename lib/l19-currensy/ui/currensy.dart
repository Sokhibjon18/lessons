import 'package:country_flags/country_flags.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l19-currensy/data/models/currensy_model.dart';

class CurrensyPage extends StatefulWidget {
  const CurrensyPage({super.key});

  @override
  State<CurrensyPage> createState() => _CurrensyPageState();
}

class _CurrensyPageState extends State<CurrensyPage> {
  Future<List> getDataFromApi() async {
    final response =
        await Dio().get('https://cbu.uz/oz/arkhiv-kursov-valyut/json/');
    List currencies =
        (response.data as List).map((e) => CurrensyModel.fromJson(e)).toList();

    return currencies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 127, 151, 163),
        title: const Text(
          'Currensy',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 127, 151, 163),
      body: SafeArea(
          child: FutureBuilder(
              future: getDataFromApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('Xatolik yuzaga keldi'),
                  );
                }
                if (snapshot.hasData) {
                  List data = snapshot.data!;
                  data.remove(data[72]);
                  data.remove(data[1]);
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: CountryFlag.fromCountryCode(
                                      '${data[index].Ccy.substring(0, 2)}'),
                                ),
                                Expanded(
                                    child: Text(
                                  data[index].CcyNm_UZ,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000)),
                                )),
                                const SizedBox(width: 10),
                                Expanded(
                                    child: Text(
                                  '${data[index].Rate} sum',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000)),
                                ))
                              ],
                            ),
                          ),
                        );
                      });
                }
                return const Center(child: Text('Malumot keldi'));
              })),
    );
  }
}
