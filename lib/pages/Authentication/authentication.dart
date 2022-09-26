

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iemcrp2/pages/Student/student_home.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  late String _email, _password;
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
                child: Column(
              children: [
                Image.network(
                    'data:image/png;base64,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'),
                Text(
                  'Log In',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration:
                            new InputDecoration.collapsed(hintText: 'Email'),
                        onChanged: (value){
                          setState((){
                            _email=value.trim();
                          }

                          );
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration:
                            new InputDecoration.collapsed(hintText: 'Password'),
                        obscureText: true,
                        onChanged: (value){
                          setState((){
                            _password=value.trim();
                          }

                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {
                        auth.signInWithEmailAndPassword(email: _email, password: _password);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Student_home()));
                      }, child: Text('Signup')),
                      ElevatedButton(onPressed: () {
                        auth.createUserWithEmailAndPassword(email: _email, password: _password);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Student_home()));
                      }, child: Text('Signin'),
                      ),
                    ],
                  ),
                ),

              ],
            )),
          ],
        ));
  }
}
