import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DevelopmentCourse extends StatelessWidget {
  const DevelopmentCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 179,
            width: 195,
            color: const Color(0xff403B70),
            child: Stack(
              children: [
                Positioned(
                  left: 3,
                  // width: 45,
                  bottom: 63,
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
                  left: 3,
                  // width: 45,
                  bottom: 47,
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
                  bottom: 39,
                  right: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Introduction',
                        style: GoogleFonts.poppins(
                          // 'Poppins',
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                          height: 1.625,
                          color: const Color(0xffffffff),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Icon(
                        Icons.play_circle_filled_sharp,
                        color: Colors.green,
                        size: 17,
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 5,
                  // width: 45,
                  bottom: 7,

                  child: Center(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 13,
                          color: Colors.white,
                        ),
                        const Text(
                          '2,000.00',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 69,
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
                            fontSize: 11,
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
            height: 93,
            width: 195,
            // color: Colors.amber,
            decoration: const BoxDecoration(
                // color: Colors.white10,
                image: DecorationImage(
                    image: AssetImage('asset/mobile.png'), fit: BoxFit.fill)),
          ),
          // Positioned(
          //   left: 110,
          //   child: Container(
          //     width: 46,
          //     height: 15,
          //     decoration: BoxDecoration(
          //       color: Colors.amber,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Center(
          //         child: Text(
          //       'Best Seller',
          //       style: GoogleFonts.poppins(
          //         // 'Poppins',
          //         fontSize: 7,
          //         fontWeight: FontWeight.w400,
          //         height: 1.625,
          //         color: const Color(0xff2e2e2e),
          //       ),
          //     )),
          //   ),
          // )
        ],
      ),
    );
  }
}
