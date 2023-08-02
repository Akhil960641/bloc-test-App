import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sort,
                          size: 40,
                          weight: 10,
                          color: Color(0xff000000),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Profile',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            // height: 3.25,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.notifications_none_outlined, size: 31),
                      ],
                    ),
                    Divider(),
                    Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Icon(Icons.edit_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/Ellipse.png'),
                      radius: 46,
                    ),
                    Text(
                      'AMELIYA',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        // height: 3.25,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '232323',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        // height: 3.25,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 27, right: 27),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 8, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Date of Birth',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        '09/12/2003',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Gender',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Female',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Email Address',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Phone Number',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Place',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Kodagu',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8, left: 27, right: 27, bottom: 12),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 8, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Educational Information',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Designation',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        '00000000000',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Day Schooling/Residential',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Residential',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Class Section',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Phone Number',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Divider(),
                      Text(
                        'Roll Number',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 2.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                      Text(
                        'Codeme123',
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          // height: 3.25,
                          color: const Color(0xff5B5B5B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // child: CircleAvatar(
      //   backgroundColor: Colors.white,
      //   foregroundImage: AssetImage('asset/Ellipse.png'),
      //   radius: 26,
      // ),
    );
  }
}
