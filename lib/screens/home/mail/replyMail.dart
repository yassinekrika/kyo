// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:kyo/screens/home/mail/viewMail.dart';

class ReplyMail extends StatefulWidget {
  const ReplyMail({super.key});

  @override
  State<ReplyMail> createState() => _ReplyMailState();
}

class _ReplyMailState extends State<ReplyMail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: PreferredSize(
            preferredSize: Size(100, 50),
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: AppBar(
                centerTitle: true,
                title: Text(
                  "Reply",
                  style: TextStyle(
                      color: Color.fromARGB(255, 48, 71, 94), fontSize: 16.0),
                ),
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 245, 245, 245),
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ViewMail();
                    }));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 48, 71, 94),
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
              ),
            ))),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/images/robot-logo.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          "Suggestion Response",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(child: Icon(Icons.edit))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 55),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Reply",
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
