import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pranavam_customer/screens/Login/login_screen.dart';
import 'package:pranavam_customer/screens/onboarding/cubit/onboarding_cubit.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);


  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state.selectedIndex == 0
                ? const Color(0xffFFEEE5)
                : state.selectedIndex == 1
                    ? const Color(0xffE9FFF6)
                    : state.selectedIndex == 2
                        ? const Color(0xffE9EFFF)
                        : Colors.white,
            body: Stack(
                  children: [
                    Positioned(
                        left: 5,
                        right: 5,
                        top: 53,
                        child: Image.asset("assets/pranavam.png",
                            alignment: Alignment.center)),
                    Positioned(
                      top: 150,
                      right: 5,
                      left: 5,
                      child: Image.asset(
                        tabs[state.selectedIndex].lottieFile,
                        key: Key('${Random().nextInt(999999999)}'),
                        // width: 600,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 320,
                        child: Column(
                          children: [
                            Flexible(
                              child: PageView.builder(
                                controller: _pageController,
                                itemCount: tabs.length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  OnboardingModel tab = tabs[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 38.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tab.title,
                                          style: const TextStyle(
                                            fontFamily: "Baloo Paaji 2",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff333333),
                                            height: 2,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(height: 50),
                                        Text(tab.subtitle,
                                            style: const TextStyle(
                                              fontFamily: "Baloo Paaji 2",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff5b5b5b),
                                              height: 1,
                                            ),
                                            textAlign: TextAlign.justify)
                                      ],
                                    ),
                                  );
                                },
                                onPageChanged: (value) {
                                  // _currentIndex = value;
                                  // setState(() {});
                                  context
                                      .read<OnboardingCubit>()
                                      .selectedIndex(value);
                                },
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (int index = 0;
                                    index < tabs.length;
                                    index++)
                                  _DotIndicator(
                                      isSelected:
                                          index == state.selectedIndex),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 72, right: 15, left: 50),
                              child: Row(
                                children: [
                                  state.selectedIndex == 2
                                      ? const Text("")
                                      : TextButton(
                                          onPressed: () {
                                            if (state.selectedIndex == 0) {
                                              _pageController..nextPage(
                                                
                                                duration: const Duration(
                                                    milliseconds: 600),
                                                curve: Curves.linear,
                                              );
                                            } else if (state.selectedIndex ==
                                                1) {
                                              _pageController.animateToPage(
                                                2,
                                                duration: const Duration(
                                                    milliseconds: 600),
                                                curve: Curves.linear,
                                              );
                                            }
                                          },
                                          child: const Text("Skip",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      if (state.selectedIndex == 2) {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ));
                                        _pageController.animateToPage(
                                          0,
                                          duration: const Duration(
                                              milliseconds: 600),
                                          curve: Curves.linear,
                                        );
                                      } else {
                                        _pageController.nextPage(
                                          duration: const Duration(
                                              milliseconds: 300),
                                          curve: Curves.linear,
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: 155,
                                      height: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: state.selectedIndex == 0
                                              ? const Color(0xffA87150)
                                              : state.selectedIndex == 1
                                                  ? const Color(0xff3A956F)
                                                  : state.selectedIndex == 2
                                                      ? const Color(
                                                          0xff41528E)
                                                      : const Color(
                                                          0xffffffff)),
                                      child: Row(
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              state.selectedIndex == 2
                                                  ? "Login"
                                                  : "Next",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              )),
                                          state.selectedIndex == 2
                                              ? const Text("")
                                              : const Icon(
                                                  Icons.arrow_forward,
                                                  color: Color(0xffffffff),
                                                  size: 18,
                                                )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
             
          );
        },
      ),
    );
  }
}

// class ArcPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path orangeArc = Path()
//       ..moveTo(0, 0)
//       ..lineTo(0, size.height - 170)
//       ..quadraticBezierTo(
//           size.width / 2, size.height, size.width, size.height - 170)
//       ..lineTo(size.width, size.height)
//       ..lineTo(size.width, 0)
//       ..close();

//     canvas.drawPath(orangeArc, Paint()..color = Colors.orange);

//     Path whiteArc = Path()
//       ..moveTo(0.0, 0.0)
//       ..lineTo(0.0, size.height - 185)
//       ..quadraticBezierTo(
//           size.width / 2, size.height - 70, size.width, size.height - 185)
//       ..lineTo(size.width, size.height)
//       ..lineTo(size.width, 0)
//       ..close();

//     canvas.drawPath(whiteArc, Paint()..color = Colors.white);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

class _DotIndicator extends StatelessWidget {
  final bool isSelected;

  const _DotIndicator({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 7.0,
        width: isSelected ? 30.0 : 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          color: isSelected ? Colors.black : const Color(0xffBDBDBD),
        ),
      ),
    );
  }
}

class OnboardingModel {
  final String lottieFile;
  final String title;
  final String subtitle;

  OnboardingModel(this.lottieFile, this.title, this.subtitle);
}

List<OnboardingModel> tabs = [
  OnboardingModel(
    'assets/Group 106.png',
    'The Best Ayurveda Treatement',
    'is simply dummy text of the printing and typesetting industry.',
  ),
  OnboardingModel(
    'assets/pana.jpg',
    'Schedule Appoiments ',
    'is simply dummy text of the printing and typesetting industry.',
  ),
  OnboardingModel(
    'assets/pana3rd.png',
    'Stay With Us',
    'is simply dummy text of the printing and typesetting industry.',
  ),
];
