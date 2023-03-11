// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:kyo/screens/home/mail/viewMail.dart';

class SendMail extends StatefulWidget {
  const SendMail({super.key});

  @override
  State<SendMail> createState() => _SendMailState();
}

class _SendMailState extends State<SendMail> {
  var isLestening = false;

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
                  "Email",
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
                          "Write an email",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: 20,
                      ))
                    ],
                  ),
                ),
                TextFormField(
                  cursorColor: Color.fromARGB(255, 48, 71, 94),
                  decoration: InputDecoration(
                    labelText: 'To :',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 48, 71, 94),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 48, 71, 94)),
                    ),
                  ),
                ),
                TextFormField(
                  cursorColor: Color.fromARGB(255, 48, 71, 94),
                  decoration: InputDecoration(
                    labelText: 'Subject :',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 48, 71, 94),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 48, 71, 94)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    maxLines: 100,
                    minLines: 1,
                    cursorColor: Color.fromARGB(255, 48, 71, 94),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Write here...',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 48, 71, 94),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.link),
                      SizedBox(width: 10),
                      Icon(Icons.image),
                      SizedBox(width: 10),
                      Icon(Icons.attachment),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLestening = !isLestening;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 71, 94),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            isLestening ? Icons.mic_none : Icons.mic,
                            color: Colors.white,
                            size: 21,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 71, 94),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 21,
                          ),
                        ),
                      ),
                    ],
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
