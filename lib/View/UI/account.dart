import 'dart:math';

import 'package:cooking/View/UI/reviewrecipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../bloc/recipe_bloc.dart';
import 'dashboard.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  void showalert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              height: 190,
              width: 800,
              child: Stack(
                children: [
                  Positioned(
                      left: 15,
                      top: 10,
                      child: Text(
                        'Recipe Link',
                        style: GoogleFonts.aleo(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      left: 310,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined))),
                  Positioned(
                      top: 60,
                      left: 10,
                      child: SizedBox(
                        width: 280,
                        child: Text(
                          'Copy the link and share the link with your friends and family.',
                          style: GoogleFonts.aleo(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.5)),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                        ),
                      )),
                  Positioned(
                      top: 120,
                      left: 10,
                      right: 10,
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.6,
                                color: Colors.grey.withOpacity(0.6)),
                            color: Colors.grey.withOpacity(0.6)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text(
                            'app.Recipe.co/chicken_rice',
                            style: GoogleFonts.aleo(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 120,
                      left: 220,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          OverlayEntry overlayEntry =
                              OverlayEntry(//to display the link has been copied
                                  builder: (BuildContext context) {
                            return Positioned(
                              top: 940,
                              left: 165,
                              child: Material(
                                color: Colors.transparent,
                                child: Container(
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Center(
                                    child: Text(
                                      'Link Copied',
                                      style: GoogleFonts.aleo(fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                          Overlay.of(context).insert(
                              overlayEntry); //to remove the text after few seconds
                          Future.delayed(Duration(seconds: 1), () {
                            overlayEntry.remove();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 0.6, color: Color(0xff129575)),
                              color: Color(0xff129575)),
                          child: Center(
                              child: Text(
                            'Copy Link',
                            style: GoogleFonts.aleo(
                                fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ))
                ],
              )),
        );
      },
    );
  }

  void alerttoraterecipe() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: 70,
            height: 120,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 100,
                    right: 50,
                    child: Text(
                      'Rate Recipe',
                      style: GoogleFonts.aleo(fontSize: 16),
                    )),
                Positioned(
                    top: 35,
                    left: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 120,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 160,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 200,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 90,
                    left: 100,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.5)),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: GoogleFonts.aleo(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6)),
                          ))),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: Scaffold(
          appBar: AppBar(
            forceMaterialTransparency:
                true, //to disable the color that appears in the appbar while we scroll the screen
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            actions: [
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                popUpAnimationStyle:
                    AnimationStyle(curve: Curves.fastOutSlowIn),
                position: PopupMenuPosition.under,
                elevation: 4,
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                        value: 0,
                        child: Row(
                          children: [
                            Icon(Icons.share_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Share',
                              style:
                                  GoogleFonts.aleo(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Rate Recipe',
                              style:
                                  GoogleFonts.aleo(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    PopupMenuItem(
                        value: 2,
                        child: Row(
                          children: [
                            Icon(Icons.comment),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Review',
                              style:
                                  GoogleFonts.aleo(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    PopupMenuItem(
                        value: 3,
                        child: Row(
                          children: [
                            Icon(Icons.bookmark),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Unsave',
                              style:
                                  GoogleFonts.aleo(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    showalert(context);
                  } else if (value == 1) {
                    alerttoraterecipe();
                  } else if (value == 2) {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryanimation) =>
                                    Reviewrecipe(),
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (context, animation,
                                secondaryanimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            }));
                  }
                },
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 0),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    child: Stack(
                      children: [
                        Positioned(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('asset/image/chefimage.jpg'),
                            radius: 50,
                          ),
                        ),
                        Positioned(
                            left: 125,
                            top: 20,
                            child: Text(
                              'Recipe',
                              style: GoogleFonts.aleo(
                                  fontSize: 16, color: Colors.grey),
                            )),
                        Positioned(
                            left: 140,
                            top: 50,
                            child: Text(
                              '4',
                              style: GoogleFonts.aleo(
                                  fontSize: 27,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 200,
                            top: 20,
                            child: Text(
                              'Followers',
                              style: GoogleFonts.aleo(
                                  fontSize: 16, color: Colors.grey),
                            )),
                        Positioned(
                            left: 200,
                            top: 50,
                            child: Text(
                              '10.1K',
                              style: GoogleFonts.aleo(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 300,
                            top: 20,
                            child: Text(
                              'Following',
                              style: GoogleFonts.aleo(
                                  fontSize: 16, color: Colors.grey),
                            )),
                        Positioned(
                            left: 313,
                            top: 50,
                            child: Text(
                              '500',
                              style: GoogleFonts.aleo(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 10,
                            top: 110,
                            child: Text(
                              'Golden Ramsay',
                              style: GoogleFonts.aleo(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 10,
                            top: 140,
                            child: Text(
                              'Chef',
                              style: GoogleFonts.aleo(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.5),
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 10,
                            top: 165,
                            child: Text(
                              'Private Chef',
                              style: GoogleFonts.aleo(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 10,
                            top: 180,
                            child: Text(
                              'Passionate about food and life',
                              style: GoogleFonts.aleo(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 220,
                            top: 182,
                            child: Image(
                              image: AssetImage('asset/image/biryani.png'),
                              width: 25,
                              height: 15,
                            )),
                        Positioned(
                            left: 10,
                            top: 200,
                            child: Text(
                              'More...',
                              style: GoogleFonts.aleo(
                                  fontSize: 14,
                                  color: Color(0xff129575),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Container(
                        width: 105,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Color(0xff129575)),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff129575)),
                        child: Center(
                            child: Text(
                          'Recipe',
                          style: GoogleFonts.aleo(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
                    Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        Dashboard(
                                          initialindex: 3,
                                        ),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      const begin = Offset(02.0, 1.0);
                                      const end = Offset.zero;
                                      const curve = Curves.easeOutQuint;

                                      var tween = Tween(begin: begin, end: end)
                                          .chain(CurveTween(curve: curve));
                                      var offsetanimation =
                                          animation.drive(tween);
                                      return SlideTransition(
                                        position: offsetanimation,
                                        child: child,
                                      );
                                    },
                                    transitionDuration:
                                        Duration(milliseconds: 600)));
                          },
                          child: Text(
                            'Videos',
                            style: GoogleFonts.aleo(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 85),
                        child: Text(
                          'Tags',
                          style: GoogleFonts.aleo(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Expanded(
                  child: BlocBuilder<RecipeBloc, RecipeState>(
                    builder: (context, state) {
                      if (state is RecipeLoading) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.grey,
                          ),
                        );
                      } else if (state is RecipeError) {
                        return Center(
                          child: Text('${state.error}'),
                        );
                      } else if (state is RecipeLoaded) {
                        return ListView.builder(
                            padding: EdgeInsets.fromLTRB(32, 10, 10, 20),
                            scrollDirection: Axis.vertical,
                            itemCount: min(state.plist!.length, 4),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Stack(
                                    clipBehavior: Clip.none, //to overlay
                                    children: [
                                      Container(
                                        height: 180,
                                        width: 360,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Stack(children: [
                                              Image.network(
                                                '${state.plist?[index].image}',
                                                fit: BoxFit.cover,
                                                width: 400,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    tileMode: TileMode.clamp,
                                                    end: Alignment.bottomCenter,
                                                    begin: Alignment.topCenter,
                                                    colors: [
                                                      Colors.transparent,
                                                      Colors.black
                                                          .withOpacity(0.8)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 10,
                                                  left: 290,
                                                  child: Container(
                                                    width: 50,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color: Color(
                                                                0xffffe1b3)),
                                                        color:
                                                            Color(0xffffe1b3)),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  1, 0, 0, 0),
                                                          child: Icon(
                                                            Icons.star,
                                                            size: 15,
                                                            color: Color(
                                                                0xffffad30),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 2,
                                                        ),
                                                        Text(
                                                            '${state.plist?[index].rating}'),
                                                      ],
                                                    ),
                                                  )),
                                              Positioned(
                                                left: 10,
                                                bottom: 10,
                                                child: SizedBox(
                                                  width: 170,
                                                  child: Text(
                                                    '${state.plist?[index].name}',
                                                    style: GoogleFonts.aleo(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17,
                                                        color: Colors.white),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 144,
                                                  left: 265,
                                                  child: Icon(
                                                    Icons.timer_sharp,
                                                    color: Colors.white,
                                                  )),
                                              Positioned(
                                                  top: 149,
                                                  left: 290,
                                                  child: Text(
                                                    ' ${state.plist?[index].cookTimeMinutes} Mins',
                                                    style: GoogleFonts.aleo(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  )),
                                            ])),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
