import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_foxa/view/messageList.dart';
import 'package:lms_foxa/viewModel/ChatListModel.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: AppBar(
        title: Text(
          'Message',
          style: GoogleFonts.poppins(
            // 'Poppins',
            fontSize: size.height * 0.0238095,
            fontWeight: FontWeight.w600,
            // height: 1.625,
            color: const Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.sort_rounded,
            size: size.height * 0.04910714,
            weight: 55,
          ),
          onPressed: () {},
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(Icons.notifications_none_outlined,
              size: size.height * 0.04613095)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 87,
              color: Colors.white,
              child:  Padding(
                padding: EdgeInsets.only(top: 0, left: size.width*0.025, right: 12),
                child: Divider(
                  thickness: 1,
                  color: Color(0xffD9D9D9),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 87,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Let’s Find Your Teacher',
                      style: GoogleFonts.poppins(
                        // 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        // height: 1.625,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 37,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.filter_center_focus_sharp,
                                size: 12,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text('Filter',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    height: 2.07,
                                    color: const Color(0xff8a8a8a),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 37,
                          width: 271,
                          decoration: BoxDecoration(
                              color: const Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 6, right: 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: const Icon(Icons.search),
                                  hintText: 'Search...',
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    height: 2.07,
                                    color: const Color(0xff8a8a8a),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 553,
              width: 339,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MessageList()));
                      },
                      child: const ChatListModel());
                },
                itemCount: 17,
                // separatorBuilder: (context, index) {
                //   return Divider();
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
