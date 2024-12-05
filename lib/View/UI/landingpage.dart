import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Loginpage.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/image/cookbackground.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.8)
              ])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 40,
                          top: 250,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('100K Premium Recepies',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)))),
                      Positioned(
                          left: 150,
                          top: 120,
                          child: Image(
                            image: AssetImage('asset/image/chef.png'),
                            color: Colors.white,
                            width: 100,
                            height: 130,
                          )),
                      Positioned(
                        left: 155,
                        top: 450,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('GET ',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white))),
                      ),
                      Positioned(
                        left: 90,
                        top: 510,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('COOKING ',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white))),
                      ),
                      Positioned(
                        left: 53,
                        top: 600,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('Simple way to find Tasty Recipe  ',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold))),
                      ),
                      Positioned(
                          top: 700,
                          left: 65,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext) {
                                return Loginp();
                              }));
                            },
                            child: Container(
                              width: 300,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff129575),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(59, 0, 0, 0),
                                    child: Text(
                                      'Start Cooking',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )),
        ),
      ),
    ]));
  }
}
