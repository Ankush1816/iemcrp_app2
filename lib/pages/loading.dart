import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iemcrp2/pages/Student/student_home.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Student_home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.postimg.cc/KvTxSQfX/Screenshot-2022-09-15-002740.jpg',
              height: 300,
              width: 600,
            ),
            SizedBox(
              height: 25,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            )
          ],
        ),
      ),
    );
  }
}
