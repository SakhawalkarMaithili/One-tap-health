import 'package:flutter/material.dart';
import 'package:one_tap_health/component/config.dart';
import 'Screens/sign_up_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/my_home_page.dart';
import 'Screens/chat_bot_screen.dart';
import 'Screens/Reminder.dart';
import 'Screens/about_me.dart';

bool initScreen = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getBool('initScreen') ?? false;
  await preferences.setBool('initScreen', true);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
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
      initialRoute: (initScreen == false) ? '/signup' : '/',
      routes: {
        '/signup': (context) => const SignUpScreen(),
        '/': (context) => const MyHomePage(),
        '/bot': (context) => const ChatBotScreen(),
        '/reminders': (context) => const Reminder(),
        '/aboutme': (context) => const AboutMe()
      },
    );
  }
}
