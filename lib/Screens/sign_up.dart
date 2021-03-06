import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class SignUp extends StatefulWidget {
  late final Client client;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = "", _email = "", _password = "";

  signUp() async {
    Navigator.pushNamed(context, '/homepage');
    widget.client.post(Uri.parse("127.0.0.1:8000/user/create/"), body: {
      'name': _name,
      'user_email': _email,
      'user_password': _password
    });
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const Image(
                image: AssetImage("../../images/register.png"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input == "") return 'Enter Name';
                            },
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              prefixIcon: Icon(Icons.person),
                            ),
                            onSaved: (input) {
                              if (input != null) _name = input;
                            })),
                    Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input == "") return 'Enter Email';
                            },
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email)),
                            onSaved: (input) {
                              if (input != null) _email = input;
                            })),
                    Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input != null && input.length < 6)
                                return 'Provide Minimum 6 Character';
                            },
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                            ),
                            obscureText: true,
                            onSaved: (input) {
                              if (input != null) _password = input;
                            })),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      child: const Text('Register'),
                      onPressed: signUp,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(70, 10, 70, 10)),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.lightBlue)))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
