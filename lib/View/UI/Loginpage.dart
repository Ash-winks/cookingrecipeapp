import 'package:cooking/View/UI/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart';

class Loginp extends StatefulWidget {
  const Loginp({super.key});

  @override
  State<Loginp> createState() => _LoginpState();
}

class _LoginpState extends State<Loginp> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Positioned(
                      left: 20,
                      top: 60,
                      child: Text('Hello,',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                  Positioned(
                      left: 20,
                      top: 103,
                      child: Text('Welcome back!',
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 25))),
                  Positioned(
                      left: 20,
                      top: 190,
                      child: Text('Email',
                          style: GoogleFonts.aleo(
                              color: Colors.black, fontSize: 18))),
                  Positioned(
                    top: 220,
                    left: 20,
                    child: Container(
                      width: 350,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        controller: emailc,
                        decoration: InputDecoration(
                          focusedErrorBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 1.5),
                          ) ,
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.5)),
                            hintText: 'Enter Email',
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.5))),
                        validator: (value) {
                          if (value!.length == 0) {
                            return 'must fill';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      top: 313,
                      child: Text('Password',
                          style: GoogleFonts.aleo(
                              color: Colors.black, fontSize: 18))),
                  Positioned(
                    top: 340,
                    left: 20,
                    child: Container(
                      width: 350,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        controller: passc,
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 1.5),
                          ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.5)),
                            hintText: 'Enter Password',
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.5))),
                        validator: (value) {
                          if (value!.length == 0) {
                            return 'Must fill';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      top: 430,
                      child: Text('Forgot Password ?',
                          style: GoogleFonts.aleo(
                              color: Colors.orange, fontSize: 15))),
                  Positioned(
                      top: 480,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        Dashboard(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                    transitionDuration: Duration(seconds: 1)));
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff129575),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                                child: Text(
                                  'SIGN IN ',
                                  style: GoogleFonts.montserrat(
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 560, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 0.9,
                              endIndent: 10,
                              indent: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                          child: Text(
                            'OR Sign in With',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 0.9,
                              endIndent: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 600,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Image.asset(
                                  'asset/image/google.png',
                                  width: 25,
                                  height: 25,
                                )),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Image.asset(
                                  'asset/image/facebook.png',
                                  width: 27,
                                  height: 27,
                                )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 720,
                    left: 70,
                    child: Row(
                      children: [
                        Text('Do not have an account?',
                            style: GoogleFonts.poppins()),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          SignupPage(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        const begin = Offset(0.0, 1.0);
                                        const end = Offset.zero;
                                        const curve =
                                            Curves.easeInOutCubicEmphasized;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetanimation =
                                            animation.drive(tween);
                                        return SlideTransition(
                                          position: offsetanimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          Duration(seconds: 1)));
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(color: Colors.orange),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
