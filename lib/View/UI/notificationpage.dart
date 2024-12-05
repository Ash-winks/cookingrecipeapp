import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificationpage extends StatefulWidget {
  final int intialIndex;
  const Notificationpage({
    super.key,
    required this.intialIndex,
  });

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  late int selectedIndex = 0;
  final List<Map<String, String>> notification = [
    {
      'title': "New Recipe Alert!",
      'description': 'Lamb Korma Curry',
      'time': '5 min ago',
      'status': 'Unread'
    },
    {
      'title': "Save Recipe",
      'description': 'Smoky Roasted Tomato Soup',
      'time': '20 min ago',
      'status': 'read'
    },
    {
      'title': "New Recipe Alert!",
      'description': 'Crispy Oven Baked Quesadillas',
      'time': '25 min ago',
      'status': 'Unread'
    },
    {
      'title': "Save Recipe",
      'description': 'Tray bake lamb kofta meatballs and vegetables',
      'time': '30 min ago',
      'status': 'Unread'
    },
    {
      'title': "Save Recipe",
      'description': 'One-pot Moussaka Beef Rice Pilaf' '-' 'Best beef recipe',
      'time': '30 min ago',
      'status': 'Unread'
    },
    {
      'title': "Save Recipe",
      'description': 'Sausage Ragu with Pappardelle Pasta',
      'time': '',
      'status': 'read'
    }
  ];
  List<Map<String, String>> filterednotification() {
    if (selectedIndex == 0) {
      return notification;
    } else if (selectedIndex == 1) {
      return notification
          .where((notify) => notify['status'] == 'read')
          .toList();
    } else {
      return notification
          .where((notify) => notify['status'] == 'Unread')
          .toList();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.intialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Notifications',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                tapbutton('All', 0),
                tapbutton('Read', 1),
                tapbutton('Unread', 2)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (filterednotification().isNotEmpty) ...[
                    Text(
                      'Today',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    ...filterednotification().take(2).map((notify) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: notificationcard(
                            title: notify['title']!,
                            description: notify['description']!,
                            time: notify['time']!,
                            status: notify['status']!),
                      );
                    }).toList()
                  ],
                  Text(
                    'Yesterday',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...filterednotification().skip(1).take(4).map((notify) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: notificationcard(
                          title: notify['title']!,
                          description: notify['description']!,
                          time: notify['time']!,
                          status: notify['status']!),
                    );
                  }).toList()
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget tapbutton(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Container(
          height: 40,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xff129575) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 60,
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.aleo(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: selectedIndex == index
                      ? Colors.white
                      : Color(0xff129575).withOpacity(0.8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget notificationcard(
      {required String title,
      required String description,
      required String time,
      required String status}) {
    return Container(
      width: 380,
      height: 128,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.1, color: Colors.grey.withOpacity(0.1)),
          color: Colors.grey.withOpacity(0.1)),
      child: Stack(
        children: [
          Positioned(
            left: 290,
            top: 5,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: status == 'Unread'
                      ? Colors.orange[1000]
                      : Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.orange)),
              child: Icon(
                Icons.library_books_outlined,
                color: status == 'Unread' ? Colors.orange : Colors.grey,
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 10,
              child: Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
          Positioned(
              left: 20,
              top: 50,
              child: SizedBox(
                width: 300,
                child: Text(
                  maxLines: 2,
                  description,
                  style: GoogleFonts.aleo(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5)),
                ),
              )),
          Positioned(
              left: 20,
              top: 100,
              child: Text(
                time,
                style: GoogleFonts.aleo(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
          Positioned(
              left: 321,
              top: 6,
              child: Icon(
                Icons.circle,
                size: 7,
                color: Colors.orange,
              ))
        ],
      ),
    );
  }
}
