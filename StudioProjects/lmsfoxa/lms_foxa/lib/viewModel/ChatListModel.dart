import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatListModel extends StatelessWidget {
  const ChatListModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 339,
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            const Positioned(
              bottom: 15,
              left: 18,
              top: 14,
              right: 265,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('asset/Ellipse.png'),
                  radius: 53,
                ),
              ),
            ),
            Positioned(
              left: 85,
              top: 14,
              child: Text(
                'Brian',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  // height: 1.625,
                  color: const Color(0xff5B5B5B),
                ),

                // #5B5B5B
              ),
            ),
            Positioned(
              left: 85,
              top: 33,
              // bottom: 28,
              child: Text(
                'Developer',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  // height: 1.625,
                  color: const Color(0xff6F6F6F),
                ),
              ),
            ),
            Positioned(
              left: 85,
              // top: 33,
              bottom: 15,
              child: Text(
                'Type All New Messages',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                  // height: 1.625,
                  color: const Color(0xff6F6F6F),
                ),
              ),
            ),
            Positioned(
              right: 12,
              top: 2,
              // bottom: 28,
              child: Text(
                '12:58',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  // height: 1.625,
                  color: const Color(0xff000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
