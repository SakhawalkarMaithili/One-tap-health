import 'package:flutter/material.dart';
import '../global_bloc.dart';
import '../UI/new_entry.dart';
import 'package:provider/provider.dart';

// #################### REMINDER ##########################
class Reminder extends StatefulWidget {
  //const Reminder({Key? key}) : super(key: key);

  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final GlobalBloc _globalBloc = Provider.of<GlobalBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders'),
        backgroundColor: const Color(0xFF3EB16F),
        elevation: 0.0,
      ),
      body: Container(
        color: const Color(0xFFF6F8FC),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 3,
              // child: TopContainer(),
              child: Container(),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              flex: 7,
              child: Provider<GlobalBloc>.value(
                // child: BottomContainer(),
                child: Container(),
                value: _globalBloc,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: const Color(0xFF3EB16F),
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewEntry(),
            ),
          );
        },
      ),
    );
  }
}
