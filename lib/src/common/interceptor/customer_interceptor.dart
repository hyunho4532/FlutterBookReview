import 'package:dio/dio.dart';

class CustomerInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Naver-Client-Id'] = '0qMOlEnC8vFb9mMNLWKU';
    options.headers['X-Naver-Client-Secret'] = 'pVr1B38BBk';

    super.onRequest(options, handler);
  }
}