import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const TextWidget(
      {super.key,
      this.text = "تم تثبيت طلبك بنجاح",
      this.textColor = Colors.white,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
