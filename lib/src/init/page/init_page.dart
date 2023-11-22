import 'package:book_review/src/common/components/btn.dart';
import 'package:flutter/material.dart';

import '../../common/components/app_font.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

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

          Positioned (
            bottom: MediaQuery.of(context).padding.bottom,
            left: 40,
            right: 40,
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                const AppFont(
                  '도서 리뷰 앱으로\n좋아하는 책을 찾아보세요',
                  textAlign: TextAlign.center,
                  size: 28,
                  fontWeight: FontWeight.bold,
                ),

                const SizedBox (
                  height: 20,
                ),

                const AppFont(
                  '책 리뷰에서 솔직하고 통찰력 있는 리뷰를 받아보세요.\n모든 장르의 책에 대한 리뷰를 확인하실 수 있습니다.\n(로맨스에서 공상과학까지)',
                  textAlign: TextAlign.center,
                  size: 13,
                  color: Color(0xff878787),
                ),

                const SizedBox (
                  height: 20,
                ),

                Btn (
                  onTap: () {},

                  text: '시작하기',
                ),

                const SizedBox (
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}