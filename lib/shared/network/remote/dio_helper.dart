import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static intit() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic>? query}) async {
    print('*****************************************');
    print('*****************************************');
    print(url.toString());
    print(query.toString());
    print('*****************************************');
    print('*****************************************');
    print('*****************************************');

    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
