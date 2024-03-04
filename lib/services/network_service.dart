import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;


class NetworkService {
  static const String baseUrl = "notify.eskiz.uz";
  static const String apiSendSMS = "/api/message/sms/send";

  static const Map<String, String> headers = {
  "Authorization": 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTIwMzM0NTAsImlhdCI6MTcwOTQ0MTQ1MCwicm9sZSI6InRlc3QiLCJzaWduIjoiNjMxZTExYmE1MmRiZTQwZmFmZGExZWVhZWIwYWZkNmNmZDA1ZjhiMTllNjE1ZGU3MzU5OTNkNGYwNWI2OGJmNCIsInN1YiI6IjY2MTQifQ.vG_U97RI4_xGQ2tvZHKpPx8v8ZA80bT5ZjUZk-Iq31Q'
  };

  static Future<String?> postData(String baseUrl, String api, Map<String, dynamic> body) async {
    Uri url = Uri.http(baseUrl, api);
    Response response = await http.post(url, body: body, headers: headers);
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
