import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppFont extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const AppFont (this.text, {super.key, this.textAlign = TextAlign.left, this.color = Colors.white, this.fontWeight = FontWeight.normal, this.size = 15});

  @override
  Widget build(BuildContext context) {
    return Text (
      text,
      textAlign: textAlign,
      style: TextStyle (
        fontSize: size,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}
