import 'package:dio/dio.dart';

abstract class Api {
  static const baseUrl = 'https://www.googleapis.com/books/v1';
  static final Dio dio = Dio();
  static get({required String endPoint, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    var response =
        await dio.get(baseUrl + endPoint, options: Options(headers: headers));
    return response.data;
  }

  static post({
    required endPoint,
    required body,
  }) async {
    var response;
    response = await dio.post(baseUrl + endPoint, data: body);
    return response.data;
  }
}
/* 
  static put({required url, required body, String? token}) async {
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