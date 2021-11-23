import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  //const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SignUp'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.teal,
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.network(
                              'https://ouch-cdn2.icons8.com/vUVzV3gIUW5zjCaBvNelNplGAVHjayQAdlqBQUaTQoU/rs:fit:196:147/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMzM4/LzU1ZWFlNTJlLWRm/YzMtNGQ0OS1iMzUx/LTM2ZThlYmRjZGQ1/Zi5zdmc.png')
                        ],
                      ),
                    ))
              ],
            ))
          ],
        ));
  }
}
