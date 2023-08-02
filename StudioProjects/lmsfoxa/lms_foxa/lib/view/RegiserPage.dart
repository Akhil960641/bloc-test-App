import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/view/Loginpage.dart';
import 'package:lms_foxa/view/bottomBar/bottomBar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userNameCtr = TextEditingController();
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastNameCtr = TextEditingController();
  TextEditingController emailctr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);
    print(screenWidth);
    // final sizewidth = MediaQuery.of(context).size.width;
    return Hero(
      transitionOnUserGestures: true,
      tag: '',
      createRectTween: (begin, end) {
        return ConstantTween(begin);
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0, -1),
              end: Alignment(0.064, 2.866),
              colors: <Color>[
                Color(0xfff2f2f2),
                Color(0xffe7e7e7),
                Color(0xff55c1ff)
              ],
              stops: <double>[0, 0.269, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(
                      left: size.width * 0.030,
                      top: size.height * 0.10,
                      bottom: size.height * 0.037,
                      right: size.width * 0.030),

                  // height: 162,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // backgroundBlendMode: BlendMode.colorBurn,
                    // image: DecorationImage(
                    //     // fit: BoxFit.none,

                    //     image: AssetImage('asset/codeme1.png'),
                    //     alignment: Alignment.center),
                    color: Color(0xff1b1645),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Image.asset('asset/codeme1.png',
                      height: size.height * 0.08230,
                      width: size.width * 0.541875)),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 17, right: 154),
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    height: 1.625,
                    color: const Color(0xff2e2e2e),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 0, right: 133),
                child: Text(
                  'Please enter the details below',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    height: 1.625,
                    color: const Color(0xff2e2e2e),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
                child: Container(
                  // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                  width: double.infinity,
                  height: 50,

                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: TextFormField(
                      controller: userNameCtr,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'no data';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: 'User Name',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                            color: const Color(0xff8a8a8a),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
                child: Container(
                  // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                  width: double.infinity,
                  height: 50,

                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: firstNameCtr,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'no data';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First Name',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                            color: const Color(0xff8a8a8a),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
                child: Container(
                  // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                  width: double.infinity,
                  height: 50,

                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: lastNameCtr,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'no data';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                            color: const Color(0xff8a8a8a),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
                child: Container(
                  height: 50,
                  // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 7),
                    child: TextFormField(
                      controller: emailctr,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'no data';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: 'Email Adress',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                            color: const Color(0xff8a8a8a),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
                child: Container(
                  // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: passwordCtr,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'no data';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                            color: const Color(0xff8a8a8a),
                          )),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 30, left: 30, top: 17),
              //   child: Container(
              //     // autogroupa7f8US6 (3uRJJnZjZ1GASzmbpra7F8)
              //     // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: const Color(0xffffffff),
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Center(
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             hintText: 'Confirm Password',
              //             hintStyle: GoogleFonts.poppins(
              //               fontSize: 12,
              //               fontWeight: FontWeight.w500,
              //               height: 3.25,
              //               color: const Color(0xff8a8a8a),
              //             )),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 37),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LandingPage(),
                    ));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    // width: double.infinity,
                    // width: size.width * 2.125,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff0d0c22),
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
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0, left: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I have already an account?',
                      style: GoogleFonts.poppins(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
