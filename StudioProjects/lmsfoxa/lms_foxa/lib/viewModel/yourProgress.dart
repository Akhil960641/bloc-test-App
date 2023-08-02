import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class YourProgress extends StatelessWidget {
  const YourProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var borderRadius = size.width / 2;

    return Container(
      height: size.height * 0.2529761,
      width: size.width * 0.375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffffffff)),
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.022321428,
              right: size.width * 0.06944444,
              child: CircularPercentIndicator(
                radius: size.width * 0.109444,
                lineWidth: size.width * 0.0333333,
                restartAnimation: true,
                percent: .7,
                backgroundColor: Colors.transparent,
                animation: true,

                animationDuration: 2000,

                circularStrokeCap: CircularStrokeCap.round,

                curve: Curves.easeInCirc,
                // arcType: ,

                center: new Text(
                  "15 Hrs",
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.01636904,
                    fontWeight: FontWeight.w700,
                    // height: 3.25,
                    color: const Color(0xff6C0F7B),
                  ),
                ),
                // progressColor: Color(0xff6C0F7B),
                linearGradient: const LinearGradient(
                  begin: Alignment(-0, -1),
                  end: Alignment(0.064, 2.866),
                  colors: <Color>[
                    Color(0xffAE00CA),
                    Color(0xff6C0F7B),
                    Color(0xff6C0F7B),
                  ],
                  stops: <double>[0, 0.269, 1],
                ),
              )),
          Positioned(
            bottom: size.height * 0.03720238,
            left: size.width * 0.02777777,
            child: Text(
              'Today Class\nOnline Hours',
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.016369,
                fontWeight: FontWeight.w500,
                // height: 3.25,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class YourProgress1 extends StatelessWidget {
  const YourProgress1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2529761,
      width: size.width * 0.375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffffffff)),
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.022321428,
              right: size.width * 0.06944444,
              child: CircularPercentIndicator(
                radius: size.width * 0.109444,
                lineWidth: size.width * 0.0333333,
                restartAnimation: true,
                percent: .87,
                backgroundColor: Colors.transparent,
                animation: true,

                animationDuration: 2000,

                circularStrokeCap: CircularStrokeCap.round,

                curve: Curves.easeInCirc,
                // arcType: ,

                center: new Text(
                  "08/10",
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.01636904,
                    fontWeight: FontWeight.w700,
                    // height: 3.25,
                    color: const Color(0xff6C0F7B),
                  ),
                ),
                // progressColor: Color(0xff6C0F7B),
                linearGradient: const LinearGradient(
                  begin: Alignment(-0, -1),
                  end: Alignment(0.064, 2.866),
                  colors: <Color>[
                    Color(0xffCE11A5),
                    Color(0xffCE11A5),
                    Color(0xff7E0A65),
                  ],
                  stops: <double>[0, 0.269, 1],
                ),
              )),
          Positioned(
            bottom: size.height * 0.03720238,
            left: size.width * 0.02777777,
            child: Text(
              'Your Session\nTime',
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.01636904,
                fontWeight: FontWeight.w500,
                // height: 3.25,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class YourProgress2 extends StatelessWidget {
  const YourProgress2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2529761,
      width: size.width * 0.375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffffffff)),
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.022321428,
              right: size.width * 0.06944444,
              left: size.width * 0.00944444,
              child: CircularPercentIndicator(
                radius: size.width * 0.109444,
                lineWidth: size.width * 0.0333333,
                restartAnimation: true,
                percent: .57,
                backgroundColor: Colors.transparent,
                animation: true,

                animationDuration: 1200,

                circularStrokeCap: CircularStrokeCap.round,

                curve: Curves.easeInCirc,
                // arcType: ,

                center: Text(
                  "06/10",
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.01636904,
                    fontWeight: FontWeight.w700,
                    // height: 3.25,
                    color: const Color(0xff6C0F7B),
                  ),
                ),
                // progressColor: Color(0xff6C0F7B),
                linearGradient: const LinearGradient(
                  begin: Alignment(-0, -1),
                  end: Alignment(0.064, 2.866),
                  colors: <Color>[
                    Color(0xff5236ff),
                    Color(0xff5236ff),
                    Color(0xff130277),
                  ],
                  stops: <double>[0, 0.269, 1],
                ),
              )),
          Positioned(
            bottom: size.height * 0.03720238,
            left: size.width * 0.02777777,
            child: Text(
              'Your Task',
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.01636904,
                fontWeight: FontWeight.w500,
                // height: 3.25,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
