// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kyo/screens/home/profile/profile.dart';

import 'chat/chat.dart';
import 'mail/mail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 2;

  List<Widget> widgetList = const [
    Chat(),
    Mail(),
    Profile(),
  ];

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
                  "Home",
                  style: TextStyle(color: Color.fromARGB(255, 48, 71, 94)),
                ),
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 245, 245, 245),
                leading: SizedBox(
                  child: Image.asset(
                    'assets/images/kyo-logo-black.png',
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                actions: [
                  Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 48, 71, 94),
                    size: 25,
                  ),
                ],
              ),
            ))),

        body: widgetList[myIndex],

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color.fromARGB(255, 48, 71, 94),
          child: const Icon(Icons.add),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          fixedColor: Color.fromARGB(255, 48, 71, 94),
          // ignore: prefer_const_literals_to_create_immutables
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Color.fromARGB(255, 48, 71, 94),
              ),
              label: 'Chat',
              backgroundColor: Color.fromARGB(255, 245, 245, 245),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: Color.fromARGB(255, 48, 71, 94),
              ),
              label: 'Mail',
              backgroundColor: Color.fromARGB(255, 245, 245, 245),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 48, 71, 94),
              ),
              label: "profile",
              backgroundColor: Color.fromARGB(255, 245, 245, 245),
            ),
          ],
        ),
      ),
    );
  }
}
