import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  static Future<dynamic> get(
    String endpoint,
    Map<String, String>? headers,
  ) async {
    // call API endpoint and pass any optional headers
    http.Response response = await http.get(
      Uri.parse(endpoint),
      headers: headers,
    );

    // check response status code for success
    if (response.statusCode == 200) {
      // return parsed JSON response
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to call API endpoint.");
    }
  }
}
