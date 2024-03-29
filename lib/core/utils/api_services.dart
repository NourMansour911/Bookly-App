import 'package:dio/dio.dart';

class Api {
  static const _baseUrl = 'https://www.googleapis.com/books/v1';
  final Dio _dio = Dio();
  Future<Map<String, dynamic>> get(
      {required String endPoint, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    var response =
        await _dio.get(_baseUrl + endPoint, options: Options(headers: headers));
    return response.data;
  }

  post({
    required endPoint,
    required body,
  }) async {
    var response;
    response = await _dio.post(_baseUrl + endPoint, data: body);
    return response.data;
  }
}
/* 
   put({required url, required body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    dio.Response response =
        await d.put(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print("Error in <statusCode> Your's = ${response.statusCode}\n");
      throw Exception("${jsonDecode(response.body)}");
    }
  } */