import 'package:flutter/material.dart';

// =============== BOT SCREEN ==================

class ChatBotScreen extends StatefulWidget {
  // const ChatBotScreen({Key? key}) : super(key: key);

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  String text = "";

  void changeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Chatbot'),
            ),
            body: TextField(
              decoration: InputDecoration(
                  labelText: "Enter a message",
                  prefixIcon:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  )),
              // onChanged: (text) => this.changeText(text),
              onChanged: (text) => changeText(text),
            )));
  }
}
