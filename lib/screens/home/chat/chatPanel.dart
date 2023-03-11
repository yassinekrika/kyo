// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
// import 'package:audioplayers/audio_cache.dart';
import '../../../models/chatMessageModel.dart';

class ChatPanel extends StatefulWidget {
  const ChatPanel({super.key});

  @override
  State<ChatPanel> createState() => _ChatPanelState();
}

class _ChatPanelState extends State<ChatPanel> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  final myController = TextEditingController();

  var backGround = Color.fromARGB(255, 48, 71, 94);

  var isLestening = false;
  var text = "from speech to text";

  SpeechToText speechToText = SpeechToText();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
                  "Contrary to popular belief",
                  style: TextStyle(
                      color: Color.fromARGB(255, 48, 71, 94), fontSize: 16.0),
                ),
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 245, 245, 245),
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/chatPanel");
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 48, 71, 94),
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
              ),
            ))),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Color.fromARGB(255, 48, 71, 94)),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: (messages[index].messageType == "receiver"
                            ? TextStyle(
                                fontSize: 15,
                              )
                            : TextStyle(fontSize: 15, color: Colors.white)),
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding:
                    EdgeInsets.only(left: 16, bottom: 20, top: 10, right: 16),
                height: 90,
                width: double.infinity,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          controller: myController,
                          decoration: InputDecoration(
                              hintText: "Write message...",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 48, 71, 94)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTapDown: (details) async {
                        if (!isLestening) {
                          var available = await speechToText.initialize();
                          if (available) {
                            setState(() {
                              isLestening = true;
                              speechToText.listen(onResult: (result) {
                                setState(() {
                                  text = result.recognizedWords;
                                  print(text);
                                });
                              });
                            });
                          }
                        }
                      },
                      onTapUp: (details) {
                        speechToText.stop();
                        setState(() {
                          isLestening = false;
                          messages.add(ChatMessage(
                              messageContent: text, messageType: "sender"));
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: backGround,
                          border: Border.all(
                            color: Color.fromARGB(255, 48, 71, 94),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          isLestening ? Icons.mic_none : Icons.mic,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          messages.add(ChatMessage(
                              messageContent: myController.text,
                              messageType: "sender"));
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
                          Icons.send,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
