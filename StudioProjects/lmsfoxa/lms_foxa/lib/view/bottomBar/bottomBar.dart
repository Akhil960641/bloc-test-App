import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_foxa/view/bottomBar/cubit/bottom_bar_cubit.dart';
import 'package:lms_foxa/view/bottomBar/cubit/bottom_bar_state.dart';
import 'package:lms_foxa/view/chatList.dart';
import 'package:lms_foxa/view/dashbord.dart';
import 'package:lms_foxa/view/discoverPage.dart';
import 'package:lms_foxa/view/profile.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  static const List<TabItem> items = [
    TabItem(

      icon: Icons.discord,
      title: '',
    ),
    TabItem(
      icon: Icons.file_copy,
      
      title: '',
    ),

    TabItem(
      icon: Icons.home,

      title: '',
    ),

    TabItem(
      icon: Icons.message,

      title: '',
    ),

    TabItem(
      icon: Icons.person,
      
      title: '',
    ),

  ];
  static const screens = [

    Discoverpage(),
    Center(child: Text("Activity")),

    Dashbord(),
    ChatList(),

    Profile(),
  ];

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => BottomBarCubit(),

      child: BlocBuilder<BottomBarCubit, BottomBarState>(
        builder: (context, state) {

          return Scaffold(
            body: screens[state.selectedIndex],

            bottomNavigationBar: BottomBarInspiredInside(
              items: items,
              
              backgroundColor: Colors.white,
              color: const Color(0xff211F53),

              colorSelected: const Color(0xffffffff),
              indexSelected: state.selectedIndex,

              isAnimated: true,
              onTap: (index) =>

                  context.read<BottomBarCubit>().selectedIndex(index),
              animated: false,

              chipStyle: const ChipStyle(
                  convexBridge: true, background: Color(0xff211F53)),

              fixedIndex: 2,

              fixed: true,
              itemStyle: ItemStyle.circle,

            ),

          );
        },

      ),
    );

  }
}
