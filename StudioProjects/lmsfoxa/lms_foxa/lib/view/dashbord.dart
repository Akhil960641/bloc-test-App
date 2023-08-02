import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/viewModel/TopCoursemodel.dart';
import 'package:lms_foxa/viewModel/slideAds.dart';
import 'package:lms_foxa/viewModel/yourProgress.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

bool flag = true;
int currentPageIndex = 0;

class _DashbordState extends State<Dashbord> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('$size');

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffF1F1F1),
      drawer: Drawer(
        backgroundColor: const Color(0xff211f53),
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.0595, left: size.width * 0.04166),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/Ellipse.png'),
                        radius: 35,
                      ),
                      SizedBox(
                        width: size.width * 0.088888888,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              // 'Poppins',
                              // fontStyle: FontStyle.normal,

                              fontSize: size.height * 0.02380952,
                              fontWeight: FontWeight.w600,
                              // height: 1.625,
                              color: const Color(0xffffffff),
                            ),
                          ),
                          Text(
                            'Email@gmail.com',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              // 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: size.height * 0.014880952,
                              fontWeight: FontWeight.w300,
                              // height: 1.625,
                              color: const Color(0xffffffff),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05952,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.08055555),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(top: size.height * 0.0223142),
                    subtitle: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.home,
                                size: size.height * 0.02678571428,
                                color: Colors.white),
                            SizedBox(
                              width: size.width * 0.02222222,
                            ),
                            Text(
                              'Home',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: size.height * 0.01934523,
                                fontWeight: FontWeight.w300,
                                // height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.014880952,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.person,
                                size: size.height * 0.02678571,
                                color: Colors.white),
                            SizedBox(
                              width: size.width * 0.022222,
                            ),
                            Text(
                              'Profile',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: size.height * 0.01934523,
                                fontWeight: FontWeight.w300,
                                // height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01488095,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.school,
                                size: size.height * 0.01934523,
                                color: Colors.white),
                            SizedBox(
                              width: size.width * 0.022222,
                            ),
                            Text(
                              'My School',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: size.height * 0.01934523,
                                fontWeight: FontWeight.w300,
                                // height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01488095,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.my_library_books,
                                size: size.height * 0.0267857,
                                color: Colors.white),
                            SizedBox(
                              width: size.width * 0.036111111,
                            ),
                            Text(
                              'E-survey',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: size.height * 0.01934523,
                                fontWeight: FontWeight.w300,
                                // height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.022321428,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_month,
                                size: size.height * 0.0267857,
                                color: Colors.white),
                            SizedBox(
                              width: size.width * 0.022222,
                            ),
                            Text(
                              'School calendar',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.download,
                                size: 18, color: Colors.white),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Downloads',
                              style: GoogleFonts.poppins(
                                // 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                height: 1.625,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 260,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.logout,
                                textDirection: TextDirection.rtl,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () async {},
                                  child: Text(
                                    'LogOut',
                                    style: GoogleFonts.poppins(
                                      // 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      height: 1.625,
                                      color: const Color(0xffffffff),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.sort),
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.01488,
              right: size.width * 0.047222,
            ),
            child: Row(
              children: [
                const Icon(Icons.notifications_none_outlined, size: 31),
                SizedBox(
                  width: size.width * 0.025,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('asset/Ellipse.png'),
                  radius: 22,
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.0222222222,
              right: size.width * 0.0222222222),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.013888,
                    right: size.width * 0.033333333),
                child: const Divider(
                  thickness: 1,
                  color: Color(0xffD9D9D9),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.013888, top: size.height * 0.0148809),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome User !!!',
                      style: GoogleFonts.poppins(
                        // 'Poppins',
                        fontSize: size.height * 0.02083333,
                        fontWeight: FontWeight.w400,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.0074404,
                    ),
                    Text(
                      'Steffy T',
                      style: GoogleFonts.poppins(
                        // 'Poppins',
                        fontSize: size.height * 0.024809,
                        fontWeight: FontWeight.w600,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.0059523,
              ),
              SizedBox(
                height: size.height * 0.2276190,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: size.height * 0.01844047),
                      child: const SlideAds(),
                    );
                  },
                  itemCount: 6,
                  // separatorBuilder: (context, index) {
                  //   return Divider();
                  // },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01488, bottom: size.height * 0.01488),
                child: Text(
                  'Your Progress',
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: size.height * 0.019345,
                    fontWeight: FontWeight.w500,
                    // height: 1.625,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const YourProgress(),
                    SizedBox(
                      width: size.width * 0.0277777,
                    ),
                    const YourProgress1(),
                    SizedBox(
                      width: size.width * 0.0277777,
                    ),
                    const YourProgress2(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01488095,
                ),
                child: Row(
                  children: [
                    Text(
                      'Today Class Shedules',
                      style: GoogleFonts.poppins(
                        // 'Poppins',
                        fontSize: size.height * 0.021809523,

                        fontWeight: FontWeight.w500,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01388888),
                    Container(
                      height: size.height * 0.03571428,
                      width: size.width * 0.44444444,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xffffffff),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: size.width * 0.02388888),
                          Text(
                            'Wednesday,March 7',
                            style: GoogleFonts.poppins(
                              // 'Poppins',

                              fontSize: size.height * 0.0133928,

                              fontWeight: FontWeight.w500,
                              // height: 1.625,
                              color: const Color(0xff000000),
                            ),
                          ),
                          SizedBox(width: size.width * 0.0622),
                          Icon(
                            Icons.calendar_month,
                            size: size.height * 0.028273,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.24,

                isFirst: FutureBuilder.debugRethrowError,
                afterLineStyle: const LineStyle(color: Colors.black),

                endChild: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02222,
                          bottom: size.height * 0.0119047619),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: size.width * 0.02222,
                            right: size.width * 0.02222,
                            top: size.height * 0.0119047619,
                            bottom: size.height * 0.0119047619),
                        constraints: BoxConstraints(
                            minWidth: size.width * 0.6944444,
                            minHeight: size.height * 0.1339285),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff275C68),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.02222,
                                  right: size.width * 0.02222,
                                  top: size.height * 0.0119047619,
                                  bottom: size.height * 0.0119047619),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Development',
                                    style: GoogleFonts.poppins(
                                      // 'Poppins',

                                      fontSize: size.height * 0.01785714,
                                      fontWeight: FontWeight.w600,
                                      // height: 1.625,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.0119047619,
                                    ),
                                    child: Text(
                                      'Introduction 1',
                                      style: GoogleFonts.poppins(
                                        // 'Poppins',

                                        fontSize: size.height * 0.014880952,

                                        fontWeight: FontWeight.w400,
                                        // height: 1.625,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.0277777,
                            ),
                            const Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage('asset/mobile.png'),
                                radius: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02222,
                          bottom: size.height * 0.0119047619),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: size.width * 0.02222,
                            right: size.width * 0.02222,
                            top: size.height * 0.0119047619,
                            bottom: size.height * 0.0119047619),
                        constraints: BoxConstraints(
                            minWidth: size.width * 0.6944444,
                            minHeight: size.height * 0.1339285),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff5C1E5E),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.02222,
                                  right: size.width * 0.02222,
                                  top: size.height * 0.0119047619,
                                  bottom: size.height * 0.0119047619),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Development',
                                    style: GoogleFonts.poppins(
                                      // 'Poppins',

                                      fontSize: size.height * 0.01785714,
                                      fontWeight: FontWeight.w600,
                                      // height: 1.625,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.0119047619,
                                    ),
                                    child: Text(
                                      'Introduction 2',
                                      style: GoogleFonts.poppins(
                                        // 'Poppins',

                                        fontSize: size.height * 0.014880952,

                                        fontWeight: FontWeight.w400,
                                        // height: 1.625,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.0277777,
                            ),
                            const Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage('asset/mobile.png'),
                                radius: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02222,
                          bottom: size.height * 0.0119047619),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: size.width * 0.02222,
                            right: size.width * 0.02222,
                            top: size.height * 0.0119047619,
                            bottom: size.height * 0.0119047619),
                        constraints: BoxConstraints(
                            minWidth: size.width * 0.6944444,
                            minHeight: size.height * 0.1339285),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff26296B),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.02222,
                                  right: size.width * 0.02222,
                                  top: size.height * 0.0119047619,
                                  bottom: size.height * 0.0119047619),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Development',
                                    style: GoogleFonts.poppins(
                                      // 'Poppins',

                                      fontSize: size.height * 0.01785714,
                                      fontWeight: FontWeight.w600,
                                      // height: 1.625,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.0119047619,
                                    ),
                                    child: Text(
                                      'Introduction 3',
                                      style: GoogleFonts.poppins(
                                        // 'Poppins',

                                        fontSize: size.height * 0.014880952,

                                        fontWeight: FontWeight.w400,
                                        // height: 1.625,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.0277777,
                            ),
                            const Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage('asset/mobile.png'),
                                radius: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02222,
                          bottom: size.height * 0.0119047619),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: size.width * 0.02222,
                            right: size.width * 0.02222,
                            top: size.height * 0.0119047619,
                            bottom: size.height * 0.0119047619),
                        constraints: BoxConstraints(
                            minWidth: size.width * 0.6944444,
                            minHeight: size.height * 0.1339285),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff7D2525),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.02222,
                                  right: size.width * 0.02222,
                                  top: size.height * 0.0119047619,
                                  bottom: size.height * 0.0119047619),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Development',
                                    style: GoogleFonts.poppins(
                                      // 'Poppins',

                                      fontSize: size.height * 0.01785714,
                                      fontWeight: FontWeight.w600,
                                      // height: 1.625,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.0119047619,
                                    ),
                                    child: Text(
                                      'Introduction 4',
                                      style: GoogleFonts.poppins(
                                        // 'Poppins',

                                        fontSize: size.height * 0.014880952,

                                        fontWeight: FontWeight.w400,
                                        // height: 1.625,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.0277777,
                            ),
                            const Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage('asset/mobile.png'),
                                radius: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                startChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10.00 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.0193452380,

                        fontWeight: FontWeight.w600,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '10.30 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.014880952,

                        fontWeight: FontWeight.w400,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.09375,
                    ),
                    Text(
                      '10.30 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.0193452380,

                        fontWeight: FontWeight.w600,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '11.00 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.014880952,

                        fontWeight: FontWeight.w400,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.102678571,
                    ),
                    Text(
                      '11.00 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.0193452380,

                        fontWeight: FontWeight.w600,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '11.30 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.014880952,

                        fontWeight: FontWeight.w400,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.09375,
                    ),
                    Text(
                      '11.30 AM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.0193452380,

                        fontWeight: FontWeight.w600,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '12.00 PM',
                      style: GoogleFonts.poppins(
                        // 'Poppins',

                        fontSize: size.height * 0.014880952,

                        fontWeight: FontWeight.w400,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),

                // Container(
                //   color: Colors.amberAccent,
                // ),
                hasIndicator: true,
                axis: TimelineAxis.vertical,

                indicatorStyle: IndicatorStyle(

                    color: Colors.blue,
                    drawGap: true,
                    indicator: const CircleAvatar(),
                    indicatorXY: 0.2,
                    width: size.width * 0.0333333333,
                    iconStyle: IconStyle(
                      iconData: Icons.hdr_off_select_outlined,
                      
                    )),
              ),
              SizedBox(
                height: size.height * 0.047619047,
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: NavigationBar(
      //     labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      //     selectedIndex: currentPageIndex,
      //     surfaceTintColor: Colors.white,
      //     backgroundColor: Colors.white,
      //     onDestinationSelected: (int index) {
      //       setState(() {
      //         currentPageIndex = index;
      //       });
      //     },
      //     height: 60,
      //     destinations: [
      //       const NavigationDestination(icon: Icon(Icons.home), label: ''),
      //       const NavigationDestination(
      //           icon: Icon(Icons.search_sharp, size: 33), label: ''),
      //       Stack(
      //         children: [
      //           Positioned(
      //             bottom: 2,
      //             child: FloatingActionButton(
      //               onPressed: () {},
      //               backgroundColor: Colors.white,
      //               child: const Icon(Icons.home, color: Colors.indigo),
      //             ),
      //           ),
      //         ],
      //       ),
      //       const NavigationDestination(
      //           icon: Icon(Icons.chat_outlined), label: ''),
      //       const NavigationDestination(icon: Icon(Icons.person), label: ''),
      //     ]),
    );
  }
}
