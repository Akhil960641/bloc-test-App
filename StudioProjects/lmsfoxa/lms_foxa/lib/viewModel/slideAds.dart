import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideAds extends StatelessWidget {
  const SlideAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2095238095,
      width: size.width * 0.9444444,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: size.height * 0.0267857,
            left: size.width * 0.005555555,
            top: size.height * 0.02232142,
            right: size.width * 0.441666666,
            child: Container(
              height: size.height * 0.0267857,
              width: size.width * 0.67857,

              // color: Colors.amber,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  // color: Colors.white10,
                  image: DecorationImage(
                      image: AssetImage('asset/lms.png'), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            left: size.width * 0.5277777,
            top: size.height * 0.02232142,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'XI x XII Revisions',
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.0178574,
                    fontWeight: FontWeight.w500,
                    // height: 3.25,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.019345,
                ),
                Text(
                  'Study meterials on offer',
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.0133928,
                    fontWeight: FontWeight.w300,
                    // height: 3.25,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.0193452,
                ),
                Text(
                  'You are doing greate Lests Start',
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.0133928,
                    fontWeight: FontWeight.w300,
                    // height: 3.25,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.0044642,
                ),
                Text(
                  'our next topic',
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.0133928,
                    fontWeight: FontWeight.w300,
                    // height: 3.25,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.0372023,
                ),
                Container(
                  width: size.width * 0.191666,
                  height: size.height * 0.02583333,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff1b1645),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.poppins(
                        fontSize: size.height * 0.010416666,
                        fontWeight: FontWeight.w500,
                        // height: 3.25,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
