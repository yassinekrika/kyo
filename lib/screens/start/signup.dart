// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              Navigator.pushNamed(context, "/login");
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
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: SizedBox(
                    height: 80,
                    child: Text(
                      "Create Your Account",
                      style: TextStyle(fontSize: 36.0),
                    ),
                  ),
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    labelText: 'Username',
                    errorText: '',
                    border: OutlineInputBorder(),
                    // suffixIcon: Icon(
                    //   Icons.error,
                    // ),
                  ),
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
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
