import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      if (googleAuth.idToken != null && googleAuth.accessToken != null) {
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final UserCredential user =
            await _auth.signInWithCredential(credential);

        await Navigator.pushReplacementNamed(context, "/");

        return user;
      } else {
        throw StateError('Missing Google Auth Token');
      }
    } else {
      throw StateError('Sign in Aborted');
    }
  }

  navigateToLogin() async {
    Navigator.pushReplacementNamed(context, "/login");
  }

  navigateToRegister() async {
    Navigator.pushReplacementNamed(context, "/signup");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 35.0),
            Container(
              height: 400,
              child: const Image(
                image: AssetImage("images/start.jpg"),
                fit: BoxFit.contain,
              ),
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
                          color: Colors.orange))
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
            SignInButton(Buttons.Google,
                text: "Sign up with Google", onPressed: googleSignIn)
          ],
        ),
      ),
    );
  }
}
