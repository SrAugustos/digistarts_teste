import 'package:digistarts_teste/modules/home/model/statistics_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class StatiticsRepository extends ChangeNotifier {
  final dio = Dio();

  final String url =
      'https://api.brasil.io/v1/dataset/covid19/caso/data/?da=&format=json&search=';
  List<Covid> statitics = [];

  getData() async {
    final response = await dio.get(url,
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: {
              "Authorization": " Token 8b34c604f8c467c5950550f6870bde20dc5229fb"
            }));

    var list = response.data['results'] as List;

    for (var json in list) {
      final item = Covid.fromJson(json);
      statitics.add(item);
    }
    notifyListeners();

    return statitics;
  }
}
