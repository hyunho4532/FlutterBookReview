import 'package:dio/dio.dart';

class NaverBookRepository {
  final Dio _dio;

  NaverBookRepository(this._dio);

  // 서비스 API => 책 검색
  Future<dynamic> searchBook() async {
    var response = await _dio.get('/v1/search/book.json', queryParameters: {
      'query': '플러터',
      'display': 10,
      'start': 1,
      'sort': 'date',
    });

    print(response);

    return true;
  }
}