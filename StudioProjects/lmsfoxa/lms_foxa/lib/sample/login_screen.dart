import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/viewModel/utils.dart';

import 'components/login_button.dart';
import 'components/login_form.dart';
import 'components/register_form.dart';
import 'login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenController loginScreenController =
        Get.put(LoginScreenController());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() {
        return Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
              child: Stack(
                children: [
                  SizedBox(
                    child: SizedBox(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(30)),
                      ).animate().moveY(
                          delay: 1750.ms,
                          begin: 0,
                          end: -MediaQuery.of(context).size.height * .5,
                          duration: 750.ms),
                    )
                        .animate(
                            target: loginScreenController
                                    .isLoginAnimationStart.value
                                ? 1
                                : 0)
                        .moveY(
                            end: -200,
                            duration: 1000.ms,
                            curve: Curves.easeOut),
                  )
                      .animate(
                          target: loginScreenController
                                  .isRegisterAnimationStart.value
                              ? 1
                              : 0)
                      .moveY(
                          end: -300, duration: 1000.ms, curve: Curves.easeOut),
                  SizedBox(
                    child: Align(
                      alignment: const Alignment(0, -.5),
                      child: Image.asset(
                        "asset/codeme blu white copy.png",
                        width: 250,
                      ),
                    )
                        .animate(
                            target: loginScreenController
                                    .isLoginAnimationStart.value
                                ? 1
                                : 0)
                        .moveY(
                            end: -100,
                            duration: 1000.ms,
                            curve: Curves.easeOut),
                  )
                      .animate(
                          target: loginScreenController
                                  .isRegisterAnimationStart.value
                              ? 1
                              : 0)
                      .moveY(
                          end: -150, duration: 1000.ms, curve: Curves.easeOut),

                  const Align(
                          alignment: Alignment.bottomCenter, child: LoginForm())
                      .animate(
                          target:
                              loginScreenController.isLoginAnimationStart.value
                                  ? 1
                                  : 0)
                      .fadeIn(
                          duration: 1000.ms, begin: 0, curve: Curves.easeOut),

                  //ToDo register form
                  const Align(
                          alignment: Alignment.bottomCenter,
                          child: RegisterForm())
                      .animate(
                          target: loginScreenController
                                  .isRegisterAnimationStart.value
                              ? 1
                              : 0)
                      .fadeIn(
                          duration: 1000.ms, begin: 0, curve: Curves.easeOut),

                  //noting text row button
                  Stack(
                    children: [
                      //text nothing
                      Align(
                        alignment: const Alignment(0, .35),
                        child: Text(
                          "Discover Your \nLearning Here",
                          style: GoogleFonts.poppins(
                            // FontStyle()
                            // 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 1.62,
                            color: Color(0xff2e2e2e),
                          ),
                        ),
                      ),
                      //row buttons
                      Align(
                        alignment: const Alignment(0, .8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Get.put(loginScreenController.isHome)
                                  ? loginScreenController.onLogin()
                                  : null,
                              child: LoginButton(
                                text: "Login",
                                isClicked: !loginScreenController
                                    .isRegisterClick.value,
                                index: 0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => loginScreenController.isHome
                                  ? loginScreenController.onRegister()
                                  : null,
                              child: LoginButton(
                                text: "Register",
                                isClicked: loginScreenController
                                    .isRegisterClick.value,
                                index: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                      .animate(
                          target: loginScreenController
                                      .isLoginAnimationStart.value ||
                                  loginScreenController
                                      .isRegisterAnimationStart.value
                              ? 1
                              : 0)
                      .fadeOut(
                          duration: 1000.ms, begin: 1, curve: Curves.easeOut)
                      .then()
                      .moveX(end: 500),
                ],
              ),
            ).animate().fadeIn(delay: 1750.ms, begin: 0, duration: 500.ms),

            //Sr logo
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "asset/foxaLogo.png",
                width: 150,
              )
                  .animate()
                  .scale(
                      delay: 500.ms,
                      begin: const Offset(.2, .2),
                      end: const Offset(1, 1),
                      curve: Curves.easeOut,
                      duration: 500.ms)
                  .then()
                  .fade(
                    delay: 500.ms,
                    duration: 500.ms,
                    begin: 1,
                    end: 0,
                  ),
            ),
          ],
        );
      }),
    );
  }
}
