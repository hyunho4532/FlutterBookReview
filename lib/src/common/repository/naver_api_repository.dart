import 'package:book_review/src/common/model/naver_book_info_results.dart';
import 'package:book_review/src/common/model/naver_book_search_option.dart';
import 'package:dio/dio.dart';

class NaverBookRepository {
  final Dio _dio;

  NaverBookRepository(this._dio);

  // 서비스 API => 책 검색
  Future<dynamic> searchBook(NaverBookSearchOption searchOption) async {
    var response = await _dio.get('/v1/search/book.json',
        queryParameters: searchOption.toMap());

    return NaverBookInfoResults.fromJson(response.data);
  }
}