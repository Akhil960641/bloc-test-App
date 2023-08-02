import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  // final TextAlign textAlign;
  final FontWeight fontWeight;
  final String? fontFamily;
  final Color color;
  final int? maxLines;

  const AppText(
      {Key? key,
      required this.text,
      this.fontSize = 14,
      // this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black,
      this.fontFamily,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        // textAlign: textAlign,
        style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily));
  }
}
