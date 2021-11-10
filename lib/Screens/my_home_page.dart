import 'package:flutter/material.dart';
import '../component/home_page_buttons.dart';
import '../component/app_drawer.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // bool lightState = false;

  // MyAppState instance = MyAppState();

  // void changeState() {
  //   setState(() {
  //     lightState = !lightState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ((lightState == false) ? Colors.white : Colors.black),
        appBar: AppBar(
          title: const Center(child: Text("One Tap Health")),
        ),
        body: const HomePageButtons(),
        drawer: AppDrawer());
  }
}
