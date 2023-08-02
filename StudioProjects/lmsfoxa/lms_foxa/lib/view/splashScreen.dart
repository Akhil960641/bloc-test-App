import 'package:flutter/material.dart';
import 'package:lms_foxa/view/Loginpage.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _AnimationController;
  bool copAnimated = false;
  bool animateCafeText = false;
  int aniIndex = 0;
  @override
  void initState() {
    super.initState();
    _AnimationController = AnimationController(vsync: this);
    _AnimationController.addListener(() {
      if (_AnimationController.value > .9) {
        _AnimationController.stop();
        copAnimated = true;
        setState(() {});
        Future.delayed(const Duration(microseconds: 1100), () {
          animateCafeText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _AnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffffffff),
          Color(0xffffffff),
          Color.fromARGB(134, 255, 255, 255),
          Color.fromARGB(71, 27, 22, 69),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 63, 81, 181),
        body: Stack(
          children: [
            // White Container top half
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: copAnimated ? screenHeight / 1.9 : screenHeight,
              decoration: BoxDecoration(
                color: copAnimated
                    ? const Color(0xff1B1645)
                    : const Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(copAnimated ? 40.0 : 0.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Visibility(
                    visible: !copAnimated,
                    child: Lottie.asset(
                      'asset/animation4.json',
                      controller: _AnimationController,
                      onLoaded: (composition) {
                        _AnimationController
                          ..duration = composition.duration
                          ..forward();
                      },
                    ),
                  ),
                  Column(
                    //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Visibility(
                        visible: copAnimated,
                        child: Image.asset(
                          'asset/codeme1.png',
                          height: size.height * .1,
                          width: size.width * .12,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(),
                          Spacer(),
                          AnimatedOpacity(
                            opacity: animateCafeText ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            child: const Text(
                              'Explore Syllabus >>',
                              style: TextStyle(
                                  fontSize: 20.0, color: Color(0xffffffff)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 300,
            //   child: Card(color: Colors.greenAccent),
            // ),

            // Text bottom part
            //    copAnimated ? const _BottomPart() : const SizedBox()
            Visibility(
              visible: copAnimated,
              child: _BottomPart(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomPart extends StatefulWidget {
  _BottomPart({Key? key}) : super(key: key);

  @override
  State<_BottomPart> createState() => _BottomPartState();
}

class _BottomPartState extends State<_BottomPart> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Discover Your \nLearning Here',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                // FontStyle()
                // 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 1.62,
                color: Color(0xff2e2e2e),
              ),
            ),
            const SizedBox(height: 30.0),
            const SizedBox(height: 50.0),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 55.0,
                width: 385.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  // shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Container(
                  // autogrouphh2ssHc (3uQjvoMGJZwbkUXt1ihH2S)
                  // margin:  EdgeInsets.fromLTRB(30*fem, 0*fem, 30*fem, 0*fem),
                  // padding:  EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group1xZx (17:81)
                        margin: EdgeInsets.fromLTRB(0, 0, 57, 0),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  // 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  height: 2.2307692308,
                                  color: Color(0xff1b1645),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          // loginQwk (13:48)
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                          },
                          // style: TextButton.styleFrom(
                          //   padding: EdgeInsets.zero,
                          // ),
                          child: Text(
                            'LogIn',
                            // textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              // 'Poppins',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 2,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
