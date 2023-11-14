import 'package:book_review/src/app.dart';
import 'package:book_review/src/common/interceptor/customer_interceptor.dart';
import 'package:book_review/src/common/repository/naver_api_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://openapi.naver.com'));
  dio.interceptors.add(CustomerInterceptor());

  runApp(MyApp(dio: dio));
}

class MyApp extends StatelessWidget {
  final Dio dio;

  const MyApp({super.key, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider (
      providers: [
        RepositoryProvider (
          create: (context) => NaverBookRepository(dio),
        )
      ],

      child: MultiBlocProvider (
        providers: [

        ],

        child: App(),
      ),
    );
  }
}
