import 'package:book_review/src/common/components/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Widget _googleLoginBtn(BuildContext context) {
    return GestureDetector (
      onTap: () {

      },

      child: Container (
        margin: const EdgeInsets.symmetric(horizontal: 50),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
        ),
        child: Row (
          children: [
            SvgPicture.asset('assets/svg/icons/google_logo.svg'),
            const SizedBox (
              width: 30,
            ),
            const AppFont (
              'Google로 계속하기',
              color: Colors.black,
              size: 14,
            ),
          ],
        )
      ),
    );
  }

  Widget _appleLoginBtn(BuildContext context) {
    return GestureDetector (
      onTap: () {

      },

      child: Container (
          margin: const EdgeInsets.symmetric(horizontal: 50),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular(7),
            color: Colors.black,
          ),
          child: Row (
            children: [
              SvgPicture.asset('assets/svg/icons/apple_logo.svg'),
              const SizedBox (
                width: 20,
              ),
              const AppFont (
                'Apple로 계속하기',
                color: Colors.white,
                size: 14,
              ),
            ],
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack (
        fit: StackFit.expand,
        children: [
          Image.asset (
            'assets/images/splash_bg.png',
            fit: BoxFit.cover,
          ),

          Container (
            color: Colors.black.withOpacity(0.6),

            child: SafeArea (
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  const Column (
                    children: [
                      AppFont (
                        '책 리뷰',
                        size: 30,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox (
                        height: 30,
                      ),

                      AppFont (
                        '로그인하여 직접 리뷰를 남겨보세요.\n많은 이들이 책을 고르기에 도움이 될 것입니다.',
                        size: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff878787),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Column (
                    children: [
                      const AppFont (
                        '회원가입 / 로그인',
                        size: 14,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                      ),

                      const SizedBox (
                        height: 40,
                      ),

                      _googleLoginBtn(context),

                      const SizedBox (
                        height: 30,
                      ),

                      _appleLoginBtn(context),
                    ],
                  ),

                  const SizedBox (
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}