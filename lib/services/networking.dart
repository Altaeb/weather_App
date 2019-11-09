import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future grtData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String date = response.body;
      return jsonDecode(date);
    } else {
      print(response.statusCode);
    }
  }
}
