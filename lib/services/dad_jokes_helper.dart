import 'package:dddj/services/network_helper.dart';
import 'package:dddj/utils/dad_joke_response.dart';

class DadJokesHelper {
  static Future<String> fetchDadJoke() async {
    String endpoint = "https://icanhazdadjoke.com/";
    Map<String, String> headers = {"Accept": "application/json"};
    // call API endpoint with required headers
    Map<String, dynamic> json =
        await NetworkHelper.get(endpoint, headers) as Map<String, dynamic>;
    // convert json map to dart object
    DadJokeResponse dadJokeResponse = DadJokeResponse.fromJson(json);
    return dadJokeResponse.joke;
  }
}
