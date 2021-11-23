import 'package:flutter/material.dart';
import '../component/home_page_buttons.dart';
import '../component/app_drawer.dart';

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("One Tap Health"),
        ),
        body: HomePageButtons(),
        drawer: AppDrawer());
  }
}
