import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  //const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  late String wt, age;
  late String doctor, emergency;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About me'),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: const Image(
                      image: AssetImage("../../images/aboutme.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[100],
                      ),
                      child: Form(
                          key: _formKey,
                          child: Column(children: <Widget>[
                            Container(
                                child: TextFormField(
                                    validator: (input) {
                                      if (input == "") return 'Enter Weight';
                                    },
                                    decoration: const InputDecoration(
                                      labelText: 'Weight',
                                    ),
                                    onSaved: (input) {
                                      if (input != null) wt = input;
                                    })),
                            Container(
                                child: TextFormField(
                                    validator: (input) {
                                      if (input == "") return 'Enter Age';
                                    },
                                    decoration:
                                        const InputDecoration(labelText: 'Age'),
                                    onSaved: (input) {
                                      if (input != null) age = input;
                                    })),
                            Container(
                                child: TextFormField(
                                    validator: (input) {
                                      if (input == "")
                                        return "Enter Doctor's contact number";
                                    },
                                    decoration: const InputDecoration(
                                      labelText: "Doctor's contact",
                                    ),
                                    obscureText: true,
                                    onSaved: (input) {
                                      if (input != null) doctor = input;
                                    })),
                            Container(
                                child: TextFormField(
                                    validator: (input) {
                                      if (input == "")
                                        return "Enter Emergency contact number";
                                    },
                                    decoration: const InputDecoration(
                                      labelText: "Emergency contact",
                                    ),
                                    obscureText: true,
                                    onSaved: (input) {
                                      if (input != null) doctor = input;
                                    })),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              child: const Text('Save'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.lightBlue),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.fromLTRB(
                                          70, 10, 70, 10)),
                                  textStyle: MaterialStateProperty.all(
                                    const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: const BorderSide(
                                              color: Colors.lightBlue)))),
                            )
                          ])))
                ]))));
  }
}
