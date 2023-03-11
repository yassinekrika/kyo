// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Login",
            style: TextStyle(color: Color.fromARGB(255, 48, 71, 94)),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 48, 71, 94),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 260,
                    height: 120,
                    child: SvgPicture.asset(
                      'assets/images/welcome_img.svg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's you in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 36.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 48, 71, 94),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 245, 245, 245)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.5, // thickness
                                color:
                                    Color.fromARGB(255, 255, 184, 184) // color
                                ),
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        print('you pressed google');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Continue with Outlook",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 48, 71, 94),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 245, 245, 245)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.5, // thickness
                                color:
                                    Color.fromARGB(255, 255, 184, 184) // color
                                ),
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        print('you pressed google');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Continue with Hotmail",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 48, 71, 94),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 245, 245, 245)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.5, // thickness
                                color:
                                    Color.fromARGB(255, 255, 184, 184) // color
                                ),
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        print('you pressed google');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 48, 71, 94)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
