import 'package:book_review/src/init/page/init_page.dart';
import 'package:book_review/src/login/page/login_page.dart';
import 'package:book_review/src/root/page/root_page.dart';
import 'package:book_review/src/splash/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  late GoRouter router;

  @override
  void initState() {
    super.initState();

    router = GoRouter (
      initialLocation: '/login',
      
      routes: [
        GoRoute (
            path: '/',
            builder: (context, state) => const RootPage(),
        ),

        GoRoute (
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router (
      routerConfig: router,
      theme: ThemeData (
        appBarTheme: const AppBarTheme (
          elevation: 0,
          backgroundColor: Color(0xff1C1C1C),
          titleTextStyle: TextStyle (
            color: Colors.white,
          )
        ),
        scaffoldBackgroundColor: const Color(0xff1C1C1C),
      ),
    );
  }
}
