import 'package:flutter/material.dart';
import '../component/home_page_buttons.dart';
import '../component/app_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ((lightState == false) ? Colors.white : Colors.black),
        appBar: AppBar(
          title: const Center(child: Text("One Tap Health")),
        ),
        body: HomePageButtons(),
        drawer: AppDrawer());
  }
}
