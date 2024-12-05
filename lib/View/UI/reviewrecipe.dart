import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard.dart';

class Reviewrecipe extends StatefulWidget {
  const Reviewrecipe({super.key});

  @override
  State<Reviewrecipe> createState() => _ReviewrecipeState();
}

class _ReviewrecipeState extends State<Reviewrecipe> {
  List<Map<String, dynamic>> customrevies = [
    {
      'Name': 'Lucy',
      'image':
          'https://i.pinimg.com/736x/e0/4b/6b/e04b6bdc38dc3fdff7468dca6a8ee2af.jpg',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    },
    {
      'Name': 'John ',
      'image':
          'https://th.bing.com/th/id/OIP.OCwuTJIkx3DM0ws7-fz50QAAAA?rs=1&pid=ImgDetMain',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    },
    {
      'Name': 'Angela',
      'image':
          'https://i.pinimg.com/750x/de/be/0b/debe0bd945605e855f86bf9d6ddccee9.jpg',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    },
    {
      'Name': 'Tim',
      'image':
          'https://www.bing.com/images/search?view=detailV2&id=5C88D49FE4E23EA257B9AB7976FB71B62A4864A0&thid=OIP.Y8AYdrePuOcf3W1MgKXMGwHaHa&mediaurl=https%3a%2f%2fi.pinimg.com%2foriginals%2f69%2f63%2ff6%2f6963f6882a8f4ffe7ebd042f3a793825.jpg&exph=1200&expw=1200&q=tim+bradford+actor&simid=607993685886130584&ck=9C70CCEC2115A27909834A7F239231DE&itb=0&FORM=IVCLIG',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    },
    {
      'Name': 'Nyla harper',
      'image': 'https://images.thedirect.com/media/photos/8mekiacox.png',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    },
    {
      'Name': 'Celina',
      'image':
          'https://cdn01.justjaredjr.com/wp-content/uploads/headlines/2020/09/lisseth-legends.jpg',
      'time': 'August 21 2024 - 5:30pm',
      'comment': 'Love the dish',
      'likes': '9',
      'replies': '2'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          'Reviews',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryanimation) =>
                          Dashboard(
                            initialindex: 4,
                          ),
                      transitionDuration: Duration(milliseconds: 300),
                      transitionsBuilder:
                          (context, animation, secondaryanimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    '200 comments',
                    style: GoogleFonts.montserrat(color: Colors.black.withOpacity(0.7),fontSize: 16),
                  ),
                ),
                Text(
                  '155 saved',
                  style: GoogleFonts.montserrat(color: Colors.black.withOpacity(0.7),fontSize: 16),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Leave a Comment',
                style: GoogleFonts.poppins(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(width: 390,
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: 'Say something',
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 305,
                      top: -10,
                      child: Container(
                        width: 60,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 1, color: Color(0xff129575)),
                            color: Color(0xff129575)),
                        child: Center(
                            child: Text(
                          'Send',
                          style: GoogleFonts.aleo(color: Colors.white),
                        )),
                      ))
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: customrevies.length,
              itemBuilder: (context, index) {
                final custom = customrevies[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(custom['image']),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 240),
                                  child: Text(custom['Name'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 170),
                                  child: Text(
                                    custom['time'],
                                    style: GoogleFonts.poppins(fontSize: 9),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 200, top: 10),
                                  child: Text(custom['comment'],
                                      style: GoogleFonts.poppins(fontSize: 15)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0x9EB9FFE9)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(custom['likes']),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.thumb_up,
                                                size: 15, color: Colors.orange),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0x9EB9FFE9)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(custom['replies']),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(
                                              Icons.thumb_down,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    ));
  }
}
