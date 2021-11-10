import 'package:flutter/material.dart';

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
