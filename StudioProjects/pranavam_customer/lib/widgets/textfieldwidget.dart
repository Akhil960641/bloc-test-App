import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 290,
      height: 45,
      decoration: ShapeDecoration(
        color: const Color(0xFFE6E6E6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: TextField(
          cursorHeight: 15,
          cursorOpacityAnimates: true,
          style: GoogleFonts.balooPaaji2(
              fontSize: 14, fontWeight: FontWeight.w400, height: 1.45),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.balooPaaji2(
                  color: const Color(0xFF7C7C7C),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.45)),
        ),
      )),
    );
  }
}
