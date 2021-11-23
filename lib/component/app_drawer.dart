import 'package:flutter/material.dart';
import 'package:one_tap_health/component/config.dart';
import 'package:one_tap_health/component/theme.dart';
import 'package:one_tap_health/main.dart';
import '../Screens/my_home_page.dart';

class AppDrawer extends StatefulWidget {
  // const AppDrawer({Key? key}) : super(key: key);

  var togglecall;
  AppDrawer({this.togglecall});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  MyAppState instance = MyAppState();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //   child: Text('Drawer Header'),
          // ),
          ListTile(
            title: (!MyTheme.isDark)
                ? const Text('Night theme')
                : const Text('Day theme'),
            leading: (!MyTheme.isDark)
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
            onTap: () {
              currentTheme.switchTheme();
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   title: const Text('About me'),
          //   leading: const Icon(Icons.person),
          //   onTap: () {
          //     Navigator.pushNamed(context, '/aboutme');
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}
