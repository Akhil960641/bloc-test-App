import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCourseModel extends StatelessWidget {
  const TopCourseModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 207,
            width: 157,
            decoration: BoxDecoration(
                color: const Color(0xff403B70),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Stack(
              children: [
                Positioned(
                  left: 5,
                  // width: 45,
                  bottom: 42,
                  child: Text(
                    'Flutter Development',
                    style: GoogleFonts.poppins(
                      // 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      height: 1.625,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  // width: 45,
                  bottom: 30,
                  child: Text(
                    'Flutter Development',
                    style: GoogleFonts.poppins(
                      // 'Poppins',
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                      height: 1.625,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  // width: 45,
                  bottom: 0,

                  child: Center(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 10,
                          color: Colors.white,
                        ),
                        const Text(
                          '2,000.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 43,
                        ),
                        const Icon(
                          Icons.star_outline_rounded,
                          size: 18,
                          color: Colors.amber,
                        ),
                        Text(
                          '4.5(100)',
                          style: GoogleFonts.poppins(
                            // 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w100,
                            height: 1.625,
                            color: const Color(0xffffffff),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 126,
            width: 157,

            // color: Colors.amber,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                // color: Colors.white10,
                image: DecorationImage(
                    image: AssetImage('asset/flutter.png'), fit: BoxFit.fill)),
          ),
          Positioned(
            left: 100,
            child: Container(
              // width: 46,
              width: 55,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                'Best Seller',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  height: 1.625,
                  color: const Color(0xff2e2e2e),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
