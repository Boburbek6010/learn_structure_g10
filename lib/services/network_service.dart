import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  static const String baseUrl = "generativelanguage.googleapis.com";
  static const String apiGetGeminiText = "/v1beta/models/gemini-pro:generateContent";

  static const Map<String, String> headers = {
    "Content-Type": "application/json"
  };

  static Future<String?> postData(String baseUrl, String api, Map<String, dynamic> body, Map<String, dynamic> param) async {
    Uri url = Uri.https(baseUrl, api, param);
    Response response = await http.post(url, body: jsonEncode(body), headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }


  static Map<String, dynamic> paramGeminiText() => <String, dynamic>{
    "key":"AIzaSyCCscV5JV4L3FfvW643-qcnw9FoIIcd-Wk"
  };

}
