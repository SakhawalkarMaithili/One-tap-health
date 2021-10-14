import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Tap Health',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/bot': (context) => const ChatBotScreen(),
        '/reminders': (context) => const Reminder()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("One Tap Health")),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.lightbulb),
                onPressed: () {
                  // do something
                })
          ]),
      body: HomePageButtons(),
    );
  }
}

// =============================== HOME PAGE ==================================
class HomePageButtons extends StatelessWidget {
  const HomePageButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // padding: ,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/bot');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.add),
                              Text('\nWant some help?')
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal[100]),
                        ),
                      )),
                  // ------------------------------------------------------------
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/reminders');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.alarm),
                              Text('\nReminder')
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal[200]),
                        ),
                      )),
                ]),
          ),
// ==============================================================================
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.calendar_today),
                              Text('\nHealth tip of the day')
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal[200]),
                        ),
                      )),
                  // ----------------------------------------------------------
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.person),
                              Text('\nWhat did the doctor say?')
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal[100]),
                        ),
                      )),
                ]),
          ),
        ]);
  }
}

// =============== BOT SCREEN ==================

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

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
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  )),
              onChanged: (text) => this.changeText(text),
            )));
  }
}

// #################### REMINDER ##########################
class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  _ReminderState createState() => new _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add reminder',
        child: Icon(Icons.add),
      ),
    );
  }
}
