// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'sign_up.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String _email = "", _password = "";

//   checkAuthentification() async {
//     _auth.authStateChanges().listen((user) {
//       if (user != null) {
//         print(user);
//         Navigator.pushReplacementNamed(context, "/");
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     this.checkAuthentification();
//   }

//   login() async {
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();

//       try {
//         await _auth.signInWithEmailAndPassword(
//             email: _email, password: _password);
//       } catch (e) {
//         showError(e.message);
//         print(e);
//       }
//     }
//   }

//   showError(String errormessage) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('ERROR'),
//             content: Text(errormessage),
//             actions: <Widget>[
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: const Text('OK'))
//             ],
//           );
//         });
//   }

//   navigateToSignUp() async {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: 400,
//               child: const Image(
//                 image: AssetImage("images/login.jpg"),
//                 fit: BoxFit.contain,
//               ),
//             ),
//             Container(
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       child: TextFormField(
//                           validator: (input) {
//                             if (input == null) return 'Enter Email';
//                           },
//                           decoration: const InputDecoration(
//                               labelText: 'Email',
//                               prefixIcon: Icon(Icons.email)),
//                           onSaved: (input) => _email = input),
//                     ),
//                     Container(
//                       child: TextFormField(
//                           validator: (input) {
//                             if (input.length < 6)
//                               return 'Provide Minimum 6 Character';
//                           },
//                           decoration: const InputDecoration(
//                             labelText: 'Password',
//                             prefixIcon: Icon(Icons.lock),
//                           ),
//                           obscureText: true,
//                           onSaved: (input) => _password = input),
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       child: const Text('LOGIN'),
//                       onPressed: login,
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.lightBlue),
//                           padding: MaterialStateProperty.all(
//                               const EdgeInsets.only(left: 30, right: 30)),
//                           textStyle: MaterialStateProperty.all(
//                             const TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                       side: const BorderSide(
//                                           color: Colors.lightBlue)))),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             GestureDetector(
//               child: const Text('Create an Account?'),
//               onTap: navigateToSignUp,
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
