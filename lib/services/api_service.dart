import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    print(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      webtoonInstances = jsonDecode(response.body);

      for (var webtoon in webtoonInstances) {
        //final toon = WebtoonModel.fromJson(webtoon);
        print(webtoon.title);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
