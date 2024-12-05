import 'package:cooking/View/UI/search%20recipes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filteroption extends StatelessWidget {
  const Filteroption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              'Filter Serach',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 340),
              child: Text(
                'Time',
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'All',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575)),
                        color: Color(0xff129575)),
                    child: Center(
                        child: Text(
                      'Newest',
                      style: GoogleFonts.lato(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Color(0xff129575)),
                    ),
                    child: Center(
                        child: Text(
                      'Oldest',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Popularity',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 340),
              child: Text(
                'Rate',
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            '5',
                            style: GoogleFonts.sourceSans3(
                                color: Color(0xff129575)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7, top: 0),
                          child: Icon(Icons.star, color: Color(0xff129575)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            '4',
                            style: GoogleFonts.sourceSans3(
                                color: Color(0xff129575)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7, top: 0),
                          child: Icon(Icons.star, color: Color(0xff129575)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            '3',
                            style: GoogleFonts.sourceSans3(
                                color: Color(0xff129575)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7, top: 0),
                          child: Icon(Icons.star, color: Color(0xff129575)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            '2',
                            style: GoogleFonts.sourceSans3(
                                color: Color(0xff129575)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7, top: 0),
                          child: Icon(Icons.star, color: Color(0xff129575)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            '1',
                            style: GoogleFonts.sourceSans3(
                                color: Color(0xff129575)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7, top: 0),
                          child: Icon(Icons.star, color: Color(0xff129575)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 293),
              child: Text(
                'Category',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'All',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Indian',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Italian',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Vegetables',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Arabic',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Chinese',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575)),
                        color: Color(0xff129575)),
                    child: Center(
                        child: Text(
                      'Breakfast',
                      style: GoogleFonts.lato(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Spanish',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Fruit',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 10),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xff129575))),
                    child: Center(
                        child: Text(
                      'Lunch',
                      style: GoogleFonts.lato(color: Color(0xff129575)),
                    )),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SearchRecipes(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOutCubicEmphasized;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetanimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetanimation,
                            child: child,
                          );
                        },
                        transitionDuration: Duration(seconds: 1)));
              },
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 210,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff129575)),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff129575)),
                  child: Center(
                      child: Text(
                    'Filter',
                    style: GoogleFonts.aleo(color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
