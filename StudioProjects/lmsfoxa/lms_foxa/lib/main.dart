import 'package:flutter/material.dart';
import 'package:lms_foxa/sample/login_screen.dart';
import 'package:lms_foxa/view/Loginpage.dart';
import 'package:lms_foxa/view/bottomBar/bottomBar.dart';
import 'package:lms_foxa/view/chatList.dart';
import 'package:lms_foxa/view/dashbord.dart';
import 'package:lms_foxa/view/discoverPage.dart';

import 'package:lms_foxa/view/profile.dart';
import 'package:lms_foxa/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChatList());
  }
}
