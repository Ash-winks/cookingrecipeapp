import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Loginpage.dart';
import 'dashboard.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();
  bool _ischecked = false;
  TextEditingController namec = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();
  TextEditingController confirmpassc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         body: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
              children: [
                Positioned(
                    left: 15,
                    top: 10,
                    child: Text('Create an account',
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
                Positioned(
                    left: 15,
                    top: 49,
                    child: Text('Lets help you set up your account,',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 16))),
                Positioned(
                    left: 15,
                    top: 68,
                    child: Text('it wont take long.',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 16))),
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 110, 10, 0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 320, 0),
                            child: Text(
                              'Name',
                              style: GoogleFonts.aleo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextFormField(
                            controller: namec,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Name',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5))),
                            validator: (value) {
                              if (value?.length == 0) {
                                return 'Must fill';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 320, 0),
                            child: Text(
                              'Email',
                              style: GoogleFonts.aleo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextFormField(
                            controller: emailc,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Email',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5))),
                            validator: (value) {
                              if (value?.length == 0) {
                                return 'Must fill';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 305, 0),
                            child: Text(
                              'Password',
                              style: GoogleFonts.aleo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextFormField(
                            controller: passc,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5))),
                            validator: (value) {
                              if (value?.length == 0) {
                                return 'Must fill';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 235, 0),
                            child: Text(
                              'Confirm Password',
                              style: GoogleFonts.aleo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextFormField(
                            controller: confirmpassc,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5))),
                            validator: (value) {
                              if (value?.length == 0) {
                                return 'Must fill';
                              } else if (value != passc) {
                                return 'password not matching';
                              } else {
                                return null;
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Row(
                              children: [
                                Checkbox(
                                    activeColor: Colors.orange,
                                    side: BorderSide(color: Colors.orange),
                                    value: _ischecked,
                                    onChanged: (newbool) {
                                      setState(() {
                                        _ischecked = newbool!;
                                      });
                                    }),
                                Text(
                                  'Accept terms and condtions',
                                  style: GoogleFonts.aleo(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext) {
                                  return Dashboard();
                                }));
                              },
                              child: Container(
                                width: 340,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff129575),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(120, 0, 0, 0),
                                      child: Text(
                                        'SIGN UP ',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 17,
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
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 0.9,
                                      endIndent: 10,
                                      indent: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Text(
                                    'OR Sign in With',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.black.withOpacity(0.3)),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(33, 10, 10, 0),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: GoogleFonts.aleo(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                              pageBuilder: (context, animation,
                                                      secondaryAnimation) =>
                                                  Loginp(),
                                              transitionsBuilder: (context,
                                                  animation,
                                                  secondaryAnimation,
                                                  child) {
                                                const begin = Offset(0.0, 1.0);
                                                const end = Offset.zero;
                                                const curve = Curves
                                                    .easeInOutCubicEmphasized;

                                                var tween = Tween(
                                                        begin: begin, end: end)
                                                    .chain(CurveTween(
                                                        curve: curve));
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
                                      'Sign in',
                                      style: GoogleFonts.aleo(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
