// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  navigateToLogin() async {
    // Navigator.pushNamed(context, "/login");
  }

  navigateToRegister() async {
    // Navigator.pushNamed(context, "/signup");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            // const SizedBox(height: 35.0),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0))),
              child: Image.network(
                  'https://ouch-cdn2.icons8.com/vUVzV3gIUW5zjCaBvNelNplGAVHjayQAdlqBQUaTQoU/rs:fit:196:147/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMzM4/LzU1ZWFlNTJlLWRm/YzMtNGQ0OS1iMzUx/LTM2ZThlYmRjZGQ1/Zi5zdmc.png'),
            ),
            const SizedBox(height: 20),
            RichText(
                text: const TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'One Tap Health',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue))
                ])),
            const SizedBox(height: 10.0),
            const Text(
              'Add Tagline',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('LOGIN'),
                  onPressed: navigateToLogin,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 30, right: 30)),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side:
                                  const BorderSide(color: Colors.lightBlue)))),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  child: const Text('REGISTER'),
                  onPressed: navigateToRegister,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 30, right: 30)),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side:
                                  const BorderSide(color: Colors.lightBlue)))),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
