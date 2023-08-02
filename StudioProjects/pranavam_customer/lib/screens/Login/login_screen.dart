import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranavam_customer/screens/Login/cubit/login_screen_cubit.dart';
import 'package:pranavam_customer/widgets/singup_button.dart';
import 'package:pranavam_customer/widgets/textfieldwidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
      bool flag = true;

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffEFEFEF),
          image: DecorationImage(
              image: AssetImage(
                "assets/Group 3.png",
              ),
              alignment: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => LoginScreenCubit(context),
            child: BlocBuilder<LoginScreenCubit, LoginScreenState>(
              builder: (context, state) {
                return Column(
                  children: [
                    // Positioned(top: 0, child: Image.asset("assets/Group 3.png")),
                    flag == true
                        ? Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 287),
                            child: Container(
                              height: 445,
                              // width: 330,
                              decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 17),
                                      child: Text(
                                        'Login',
                                        style: GoogleFonts.balooPaaji2(
                                          color: const Color(0xFF333333),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          height: 1.49,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Email',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 6.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Email",
                                          ),
                                        )),
                                    Text(
                                      'Password',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 6.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Password",
                                          ),
                                        )),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password ?',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.balooPaaji2(
                                            color: const Color(0xFF0C62B2),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 1.45,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            top: 40.0, bottom: 25),
                                        child: LoginButton(text: "Login")),
                                    const Center(child: Text("OR")),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Don’t have an account ?",
                                          style: GoogleFonts.balooPaaji2(
                                            color: const Color(0xFF414141),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 1.45,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            context
                                                .read<LoginScreenCubit>()
                                                .setValue(true);

                                            flag = !flag;
                                            context
                                                .read<LoginScreenCubit>()
                                                .setValue(false);
                                          },
                                          child: Text(
                                            'Sign Up',
                                            style: GoogleFonts.balooPaaji2(
                                              color: const Color(0xFF0C62B2),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              height: 1.45,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 210),
                            child: Container(
                              // height: 550,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 17),
                                      child: Text(
                                        'Create Account ',
                                        style: GoogleFonts.balooPaaji2(
                                          color: const Color(0xFF333333),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          height: 1.49,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'First Name ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "First Name ",
                                          ),
                                        )),
                                    Text(
                                      'Last Name ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Last Name ",
                                          ),
                                        )),
                                    Text(
                                      'Email  ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Email ",
                                          ),
                                        )),
                                    Text(
                                      'Phone Number ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Phone number ",
                                          ),
                                        )),
                                    Text(
                                      'Password ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.balooPaaji2(
                                        color: const Color(0xFF414141),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 1.45,
                                      ),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Center(
                                          child: TextFeildWidget(
                                            hintText: "Password ",
                                          ),
                                        )),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.0, bottom: 10),
                                        child: LoginButton(text: "Register")),
                                    // const Center(child: Text("OR")),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Already have an account ?",
                                          style: GoogleFonts.balooPaaji2(
                                            color: const Color(0xFF414141),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 1.45,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            context
                                                .read<LoginScreenCubit>()
                                                .setValue(true);

                                            flag = !flag;
                                            context
                                                .read<LoginScreenCubit>()
                                                .setValue(true);
                                          },
                                          child: Text(
                                            // onEnter: (event) {
                                            //   Navigator.of(context)
                                            //       .push(MaterialPageRoute(
                                            //     builder: (context) => OnboardingScreen(),
                                            //   ));
                                            // },
                                            'Sign Up',
                                            style: GoogleFonts.balooPaaji2(
                                              color: const Color(0xFF0C62B2),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              height: 1.45,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
