// https://sheetdb.io/api/v1/2ikfd2v977uqy
// https://script.google.com/macros/s/AKfycbw8XqCqZLjevvqyLjufYmvEMjByE82B9SRkVJJwQW2CM2ESy1o/exec
// final https://script.google.com/macros/s/AKfycbw8XqCqZLjevvqyLjufYmvEMjByE82B9SRkVJJwQW2CM2ESy1o/exec
import 'dart:convert';

import 'package:cse_2a9/data/models/time_tabel_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  final _base_url = 'script.google.com';

  Future<List<TimeTable>> getTimeTable() async {
    final url = Uri.https(_base_url,
        '/macros/s/AKfycbw8XqCqZLjevvqyLjufYmvEMjByE82B9SRkVJJwQW2CM2ESy1o/exec');
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body) as List;
      final timeTable = json
          .map((timeTableJson) => TimeTable.fromJson(timeTableJson))
          .toList();
      // print(timeTable);
      return timeTable;
    } catch (e) {
      throw e;
    }
  }
}
