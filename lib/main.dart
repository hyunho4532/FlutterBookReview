import 'package:book_review/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const App();
    // return MultiRepositoryProvider (
    //   providers: [
    //
    //   ],
    //
    //   child: MultiBlocProvider (
    //     providers: [
    //
    //     ],
    //
    //     child: App(),
    //   ),
    // );
  }
}
