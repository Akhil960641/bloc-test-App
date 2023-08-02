// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MessageList extends StatelessWidget {
//   const MessageList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xffF1F1F1),

//         // appBar: AppBar(
//   actions: const [
//     CircleAvatar(
//       backgroundColor: Colors.white,
//       foregroundImage: AssetImage('asset/Ellipse.png'),
//       radius: 30,
//     ),
//   ],
//         //   elevation: 1,
//         // ),
//         body: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 80,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(12),
//                     bottomRight: Radius.circular(10)),
//                 color: Colors.white,
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 45,
//                     bottom: 24,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Brian',
//                           style: GoogleFonts.poppins(
//                             // 'Poppins',
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             // height: 1.625,
//                             color: const Color(0xff5B5B5B),
//                           ),

//                           // #5B5B5B
//                         ),
//                         Text(
//                           'Developer',
//                           style: GoogleFonts.poppins(
//                             // 'Poppins',
//                             fontSize: 10,
//                             fontWeight: FontWeight.w300,
//                             // height: 1.625,
//                             color: const Color(0xff6F6F6F),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                       left: 10,
//                       bottom: 25,
//                       child: Icon(Icons.keyboard_backspace_rounded)),
//                   Positioned(
//                     right: 12,
//                     bottom: 12,
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       foregroundImage: AssetImage('asset/Ellipse.png'),
//                       radius: 30,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageList extends StatefulWidget {
  const MessageList({super.key});

  @override
  State<MessageList> createState() => _MessageListState();
}

TextEditingController TxtCtr = TextEditingController();
TextEditingController EditCtr = TextEditingController();

List todoList = [];

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            // leading: Ink(child: const Icon(Icons.arrow_back_ios_new, color: Colors.black)),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brian',
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // height: 1.625,
                    color: const Color(0xff5B5B5B),
                  ),
                ),
                Text(
                  'Developer',
                  style: GoogleFonts.poppins(
                    // 'Poppins',
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    // height: 1.625,
                    color: const Color(0xff6F6F6F),
                  ),
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12, top: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('asset/Ellipse.png'),
                  radius: 26,
                ),
              ),
            ],
          )),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: InkWell(
                        onTap: () {
                          setState(() {
                            todoList.removeAt(index);
                            // todoList.insertAll(index,{TxtCtr});
                          });
                        },
                        child: const Icon(Icons.delete)),
                    tileColor: Colors.blue[200],
                    title: Text(todoList[index].toString()),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 5,
                    ),
                itemCount: todoList.length),
          ),
          Scrollbar(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: size.width * .76,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 19, right: 10),
                        child: TextField(
                          controller: TxtCtr,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type Here...',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 2.2,
                                color: const Color(0xff8a8a8a),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 52,
                        decoration: BoxDecoration(
                          color: const Color(0xff211F53),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                todoList.add(TxtCtr.text);
                                TxtCtr.text = '';
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.send,
                                size: 25,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
