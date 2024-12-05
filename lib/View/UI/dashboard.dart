import 'package:cooking/View/UI/Home.dart';
import 'package:cooking/View/UI/savedrecipes.dart';
import 'package:cooking/View/UI/addrecipe.dart';
import 'package:flutter/material.dart';
import 'account.dart';
import 'notificationpage.dart';

class Dashboard extends StatefulWidget {
  final int initialindex;
  const Dashboard({super.key, this.initialindex = 0});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentindex = 0;
  List<Widget> pages = [
    HomePage(),
    Savedrecipes(),
    Addrecipe(),
    Notificationpage(
      intialIndex: 1,
    ),
    MyAccount()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentindex = widget.initialindex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentindex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentindex = 2;
            });
          },
          backgroundColor: Color(0xff129575),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentindex = 0;
                          });
                        },
                        icon: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              currentindex == 0
                                  ? Color(0xff129575)
                                  : Colors.grey,
                              BlendMode.srcIn),
                          child: Image(
                            image: AssetImage('asset/image/home.png'),
                            width: 24,
                          ),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentindex = 1;
                          });
                        },
                        icon: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              currentindex == 1
                                  ? Color(0xff129575)
                                  : Colors.grey,
                              BlendMode.srcIn),
                          child: Image(
                            image: AssetImage('asset/image/bookmark.png'),
                            width: 24,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentindex = 3;
                          });
                        },
                        icon: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              currentindex == 3
                                  ? Color(0xff129575)
                                  : Colors.grey,
                              BlendMode.srcIn),
                          child: Image(
                            image: AssetImage('asset/image/bell.png'),
                            width: 28,
                          ),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentindex = 4;
                          });
                        },
                        icon: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              currentindex == 4
                                  ? Color(0xff129575)
                                  : Colors.grey,
                              BlendMode.srcIn),
                          child: Image(
                            image: AssetImage('asset/image/user.png'),
                            width: 24,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
