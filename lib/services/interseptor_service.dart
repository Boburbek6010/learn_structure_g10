// import 'dart:developer';
// // import 'package:http_interceptor/http_interceptor.dart';
// import 'package:l/l.dart';
//
// class InterceptorService implements InterceptorContract{
//   @override
//   Future<RequestData> interceptRequest({required RequestData data}) async {
//     l.i('Method: ${data.method}');
//     l.i('Params: ${data.params}');
//     l.w('Headers: ${data.headers}');
//     return data;
//   }
//
//   @override
//   Future<ResponseData> interceptResponse({required ResponseData data}) async{
//     l.i('Status Code: ${data.statusCode}');
//     return data;
//   }
//
// }