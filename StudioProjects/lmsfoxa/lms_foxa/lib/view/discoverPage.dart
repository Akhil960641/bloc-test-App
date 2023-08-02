import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/viewModel/DevelopmentCourse.dart';
import 'package:lms_foxa/viewModel/TopCoursemodel.dart';

class Discoverpage extends StatelessWidget {
  const Discoverpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: GoogleFonts.poppins(
            // 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            // height: 1.625,
            color: const Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.sort_rounded,
            size: 33,
            weight: 55,
          ),
          onPressed: () {
            Drawer(
              backgroundColor: const Color(0xff211f53),
              child: Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              foregroundImage: AssetImage('asset/circle.jpg'),
                              radius: 35,
                            ),
                            const SizedBox(
                              width: 32,
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

                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.625,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                Text(
                                  'Email@gmail.com',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    // 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    height: 1.625,
                                    color: const Color(0xffffffff),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(top: 15),
                          subtitle: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.home,
                                      size: 18, color: Colors.white),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Home',
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
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.person,
                                      size: 18, color: Colors.white),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Profile',
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
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.school,
                                      size: 18, color: Colors.white),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'My School',
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
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.my_library_books,
                                      size: 18, color: Colors.white),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    'E-survey',
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
                                  const Icon(Icons.calendar_month,
                                      size: 18, color: Colors.white),
                                  const SizedBox(
                                    width: 8,
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
                                height: 323,
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
            );
          },
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [Icon(Icons.notifications_none_outlined, size: 31)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 9, right: 12),
              child: Divider(
                thickness: 1,
                color: Color(0xffD9D9D9),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0, left: 4),
                    child: Container(
                      height: 39,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff7B7B7B)),
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                          child: Text(
                        'Development',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          // height: 3.25,
                          color: const Color(0xff000000),
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 4),
                    child: Container(
                      height: 39,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff7B7B7B)),
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                          child: Text(
                        'Designing',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          // height: 3.25,
                          color: const Color(0xff000000),
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 4),
                    child: Container(
                      height: 39,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff7B7B7B)),
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                          child: Text(
                        'IT & Software',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          // height: 3.25,
                          color: const Color(0xff000000),
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 4),
                    child: Container(
                      height: 39,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff7B7B7B)),
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                          child: Text(
                        'Buisiness',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          // height: 3.25,
                          color: const Color(0xff000000),
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 4),
                    child: Container(
                      height: 39,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff7B7B7B)),
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                          child: Text(
                        'Designing',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          // height: 3.25,
                          color: const Color(0xff000000),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 6),
              child: Container(
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff403B70),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22, top: 11),
                          child: TextFormField(
                            // controller: userNameCtr,
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'no data';
                            //   }
                            // },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Courses..',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  height: 3.25,
                                  color: const Color(0xff8a8a8a),
                                )),
                          ),
                        ),
                      ),
                    ),
                   const Positioned(
                        right: 5,
                        top: 10,
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Color(0xffA6A6A6),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 23),
              child: Text(
                'Top Courses',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // height: 1.625,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TopCourseModel(),
                  );
                },
                itemCount: 6,
                // separatorBuilder: (context, index) {
                //   return Divider();
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 9, top: 23),
              child: Text(
                'Development',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // height: 1.625,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: DevelopmentCourse(),
                  );
                },
                itemCount: 6,
                // separatorBuilder: (context, index) {
                //   return Divider();
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 9, top: 23),
              child: Text(
                'Marketing',
                style: GoogleFonts.poppins(
                  // 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // height: 1.625,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: DevelopmentCourse(),
                  );
                },
                itemCount: 6,
                // separatorBuilder: (context, index) {
                //   return Divider();
                // },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffF1F1F1),
    );
  }
}
