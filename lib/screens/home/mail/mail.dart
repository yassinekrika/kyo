// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kyo/screens/home/mail/viewMail.dart';

class Mail extends StatefulWidget {
  const Mail({super.key});

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            for (int count in List.generate(9, (index) => index + 1))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PhysicalShape(
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: SizedBox(
                    height: 70,
                    child: Center(
                      child: ListTile(
                        leading: Image.asset('assets/images/gmail-logo.png'),
                        title: Text(
                          'Contrary to popular belief',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewMail();
                          }));
                        },
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
