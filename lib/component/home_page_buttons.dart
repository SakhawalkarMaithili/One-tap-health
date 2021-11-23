import 'package:flutter/material.dart';

// =============================== HOME PAGE ==================================
class HomePageButtons extends StatelessWidget {
  // const HomePageButtons({
  //   Key? key,
  // }) : super(key: key);

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
                            children: const [
                              Icon(Icons.add),
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
                            children: const [
                              Icon(Icons.alarm),
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
                            children: const [
                              Icon(Icons.calendar_today),
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
                            children: const [
                              Icon(Icons.person),
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
