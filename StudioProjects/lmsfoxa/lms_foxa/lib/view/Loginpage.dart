import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/view/RegiserPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final sizeheight = MediaQuery.of(context).size.height;
    final sizewidth = MediaQuery.of(context).size.width;
    return Hero(
      tag: '',
      child: Scaffold(
        body: Container(
          // loginpS6 (17:83)
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup73wafhc (3uRJ63Ry8o8ifq9Bac73WA)
                padding: const EdgeInsets.fromLTRB(66.99, 99, 67, 34.01),
                width: double.infinity,
                decoration: const BoxDecoration(
                  // backgroundBlendMode: BlendMode.clear,
                  // image: DecorationImage(
                  //     image: AssetImage('asset/codeme1.png'),
                  //     alignment: Alignment.center),
                  color: Color(0xff1b1645),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Image.asset('asset/codeme1.png',
                    height: sizeheight * 0.09230, width: sizewidth * 0.141875),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33, top: 50, right: 145),
                child: Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    // height: 1.625,
                    color: const Color(0xff2e2e2e),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33, top: 0, right: 110),
                child: Text(
                  'Please enter the details below',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    // height: 1.625,
                    color: const Color(0xff2e2e2e),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 49),
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
                    padding: const EdgeInsets.only(left: 22, top: 0),
                    child: Center(
                      child: TextFormField(
                        // controller: userNameCtr,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return 'no data';
                        //   }
                        // },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'User Name',
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
                    padding: const EdgeInsets.only(left: 22, top: 0),
                    child: Center(
                      child: TextFormField(
                        // controller: userNameCtr,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return 'no data';
                        //   }
                        // },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            // errorBorder:
                            //     OutlineInputBorder(borderRadius: BorderRadius.zero),
                            // disabledBorder:
                            //     OutlineInputBorder(borderRadius: BorderRadius.zero),
                            // focusedErrorBorder:
                            //     OutlineInputBorder(borderRadius: BorderRadius.zero),
                            // border:
                            //     OutlineInputBorder(borderRadius: BorderRadius.zero),

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
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 212, top: 8),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Recovery Password ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      // 'Poppins',
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      height: 3.5454545455,
                      // color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 9),
                child: TextButton(
                  onPressed: () {},
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
                        'Login',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // line2Bmk (17:136)
                    margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    width: sizewidth * 0.177,
                    height: sizeheight * 0.002,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color.fromARGB(36, 0, 0, 0),
                          Color.fromARGB(137, 0, 0, 0),
                          //   Colors.black,
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      // orcontinuewithJrN (17:134)
                      'Or Continue With',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        // 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        height: 3.5454545455,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // line2Bmk (17:136)
                    margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    width: sizewidth * 0.177,
                    height: sizeheight * 0.002,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color.fromARGB(137, 0, 0, 0),
                          Color.fromARGB(36, 0, 0, 0),
                          //   Colors.black,
                        ])),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 74,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('asset/google.png'),
                      ),
                      border: Border.all(color: const Color(0xffffffff)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Container(
                      width: 74,
                      // group2X3Y (17:145)
                      // padding: EdgeInsets.fromLTRB(20, 8, 19, 7),
                      height: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('asset/apple-logo.png'),
                        ),
                        border: Border.all(color: const Color(0xffffffff)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Container(
                      width: 74,
                      // group2X3Y (17:145)
                      // padding: EdgeInsets.fromLTRB(20, 8, 19, 7),
                      height: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('asset/facebook.png'),
                        ),
                        border: Border.all(color: const Color(0xffffffff)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0, left: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: GoogleFonts.poppins(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ));
                        },
                        child: Text(
                          'Register Now',
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
