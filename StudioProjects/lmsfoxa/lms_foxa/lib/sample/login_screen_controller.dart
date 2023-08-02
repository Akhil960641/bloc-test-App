import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(vsync: this);
    super.onInit();
  }

  var isRegisterClick = true.obs;
  var isLoginAnimationStart = false.obs;
  var isRegisterAnimationStart = false.obs;
  bool isHome = true;

  onRegister() {
    print("register button clicked");
    isRegisterClick.value = isRegisterClick.value = true;
    isRegisterAnimationStart.value = isRegisterAnimationStart.value = true;
    isHome = false;
  }

  onLogin() {
    print("login button clicked");
    isRegisterClick.value = isRegisterClick.value = false;
    isLoginAnimationStart.value = true;
    isHome = false;
  }

  notMember() {
    print("register bottom text clicked");
    isLoginAnimationStart.value = isLoginAnimationStart.value = false;
    isRegisterAnimationStart.value = isRegisterAnimationStart.value = false;
    isHome=true;
  }

  alreadyMember() {
    print("login bottom text clicked");
    isLoginAnimationStart.value = isLoginAnimationStart.value = false;
    isRegisterAnimationStart.value = isRegisterAnimationStart.value = false;
    isHome=true;
  }
}
//  Align(
//                         alignment: const Alignment(0, .8),
//                         child: Container(
//                           height: 55.0,
//                           width: 304.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),

//                             // shape: BoxShape.circle,
//                             border: Border.all(color: Colors.white, width: 2.0),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               GestureDetector(
//                                 onTap: () => loginScreenController.isHome
//                                     ? loginScreenController.onRegister()
//                                     : null,
//                                 child: LoginButton(
//                                   buttonColor: const Color(0xFFFFFFFFF),
//                                   text: "Register",
//                                   isClicked: loginScreenController
//                                       .isRegisterClick.value,
//                                   index: 1,
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () =>
//                                     Get.put(loginScreenController.isHome)
//                                         ? loginScreenController.onLogin()
//                                         : null,
//                                 child: LoginButton(
//                                   buttonColor: Colors.transparent,
//                                   text: "Login",
//                                   isClicked: !loginScreenController
//                                       .isRegisterClick.value,
//                                   index: 0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),













//  Positioned(
//                         top: 330,
//                         right: 17,
//                         child: GestureDetector(
//                           onTap: () =>
//                               Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) =>const Discoverpage(),
//                           )),
//                           // onPressed: () {
//                           //   Get.to(Discoverpage());
//                           // },
//                           child: Text(
//                             'Explore Now>>',
//                             style: GoogleFonts.poppins(
//                               // 'Poppins',
//                               fontSize: 13,
//                               fontWeight: FontWeight.w500,
//                               // height: 1.625,
//                               color: const Color(0xffffffff),
//                             ),
//                           ),
//                         ),
//                       ),
