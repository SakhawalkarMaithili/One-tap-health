import 'package:flutter/material.dart';
import 'package:one_tap_health/Screens/Reminder/UI/success_screen.dart';
import 'package:one_tap_health/Screens/welcome_page.dart';
import 'package:one_tap_health/component/config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/welcome_page.dart';
// import 'Screens/login.dart';
// import 'Screens/sign_up.dart';
import 'Screens/my_home_page.dart';
import 'Screens/chat_bot_screen.dart';
import 'Screens/Reminder/UI/reminder_page.dart';
import 'Screens/about_me.dart';
import 'dart:async';

// Import the firebase_core plugin
// import 'package:firebase_core/firebase_core.dart';

bool initScreen = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getBool('initScreen') ?? false;
  await preferences.setBool('initScreen', true);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  // bool _initialized = false;
  // bool _error = false;

  // Define an async function to initialize FlutterFire
  // void initializeFlutterFire() async {
  //   try {
  //     // Wait for Firebase to initialize and set `_initialized` state to true
  //     await Firebase.initializeApp();
  //     setState(() {
  //       _initialized = true;
  //     });
  //   } catch (e) {
  //     // Set `_error` state to true if Firebase initialization fails
  //     setState(() {
  //       _error = true;
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Tap Health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      initialRoute: (initScreen == false) ? '/start' : '/homepage',
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/start': (BuildContext context) => Welcome(),
        // '/login': (BuildContext context) => Login(),
        // '/signup': (BuildContext context) => SignUp(),
        '/homepage': (BuildContext context) => MyHomePage(),
        '/bot': (BuildContext context) => ChatBotScreen(),
        '/reminders': (BuildContext context) => Reminder(),
        '/aboutme': (BuildContext context) => AboutMe(),
        '/successscreen': (BuildContext context) => SuccessScreen()
      },
    );
  }
}
