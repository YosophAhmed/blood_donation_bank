import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String url,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Status Code Problem ${response.statusCode}',
      );
    }
  }

  Future<dynamic> post({
    required String url,
    body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response = await http.post(
      Uri.parse(
        url,
      ),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Status Code Problem ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }

}
